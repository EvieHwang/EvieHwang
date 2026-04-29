#!/usr/bin/env bash
# Upgrades all Lambda functions using nodejs20.x to nodejs22.x.
# Run from any machine with AWS CLI configured for account 070840362692.
set -euo pipefail

TARGET_RUNTIME="nodejs20.x"
NEW_RUNTIME="nodejs22.x"
REGIONS=(us-east-1 us-west-2 us-east-2 us-west-1 eu-west-1)
DRY_RUN="${DRY_RUN:-true}"

echo "Scanning for Lambda functions using $TARGET_RUNTIME..."
echo "DRY_RUN=$DRY_RUN  (set DRY_RUN=false to apply changes)"
echo ""

FOUND=0

for region in "${REGIONS[@]}"; do
  functions=$(aws lambda list-functions \
    --region "$region" \
    --output text \
    --query "Functions[?Runtime=='$TARGET_RUNTIME'].FunctionName" 2>/dev/null || true)

  if [[ -z "$functions" ]]; then
    echo "[$region] No $TARGET_RUNTIME functions found."
    continue
  fi

  for fn in $functions; do
    FOUND=$((FOUND + 1))
    echo "[$region] Found: $fn"

    if [[ "$DRY_RUN" == "false" ]]; then
      echo "[$region] Upgrading $fn to $NEW_RUNTIME..."
      aws lambda update-function-configuration \
        --region "$region" \
        --function-name "$fn" \
        --runtime "$NEW_RUNTIME" \
        --output text \
        --query "Runtime"

      # Wait for the update to finish before testing
      aws lambda wait function-updated \
        --region "$region" \
        --function-name "$fn"

      # Verify
      actual=$(aws lambda get-function-configuration \
        --region "$region" \
        --function-name "$fn" \
        --query "Runtime" \
        --output text)
      echo "[$region] $fn runtime is now: $actual"

      # Smoke test
      tmp=$(mktemp)
      status_code=$(aws lambda invoke \
        --region "$region" \
        --function-name "$fn" \
        --payload '{}' \
        --output json \
        "$tmp" | python3 -c "import sys,json; print(json.load(sys.stdin).get('StatusCode',''))" 2>/dev/null || echo "unknown")
      echo "[$region] $fn invoke status: $status_code"
      cat "$tmp" 2>/dev/null || true
      rm -f "$tmp"
      echo ""
    fi
  done
done

if [[ $FOUND -eq 0 ]]; then
  echo "All clear — no $TARGET_RUNTIME functions found in any region."
else
  echo ""
  echo "Total functions found: $FOUND"
  if [[ "$DRY_RUN" == "true" ]]; then
    echo "Re-run with DRY_RUN=false to apply upgrades:"
    echo "  DRY_RUN=false bash scripts/upgrade-lambda-nodejs.sh"
  else
    echo "Upgrade complete. Verify in CloudWatch Logs if any function behaves unexpectedly."
  fi
fi
