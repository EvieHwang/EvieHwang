# Implementation Plan: evehwang.com Redirect

**Feature ID**: 001-evehwang-redirect
**Date**: 2026-01-01
**Spec**: [spec.md](./spec.md)

## Summary

Set up a redirect from evehwang.com to the GitHub profile using AWS S3 for hosting, CloudFront for HTTPS/CDN, ACM for SSL certificates, and Route 53 for DNS.

## Technical Context

**AWS Region**: us-east-1 (required for CloudFront ACM certificates)
**Services Used**: S3, CloudFront, ACM, Route 53
**Dependencies**: ACM certificate validation (requires DNS records)

## Implementation Steps

### Phase 1: SSL Certificate

1. Request ACM certificate for both domains
   ```bash
   aws acm request-certificate \
     --domain-name evehwang.com \
     --subject-alternative-names www.evehwang.com \
     --validation-method DNS \
     --region us-east-1
   ```

2. Add CNAME validation records to Route 53 (from ACM console/output)

3. Wait for certificate validation (may take a few minutes)

### Phase 2: S3 Bucket Setup

1. Create S3 bucket for redirect content
   ```bash
   aws s3api create-bucket \
     --bucket evehwang.com-redirect \
     --region us-east-1
   ```

2. Enable static website hosting
   ```bash
   aws s3 website s3://evehwang.com-redirect/ --index-document index.html
   ```

3. Create redirect HTML file (index.html):
   ```html
   <!DOCTYPE html>
   <html>
   <head>
     <meta charset="utf-8">
     <meta http-equiv="refresh" content="0; url=https://github.com/EvieHwang">
     <link rel="canonical" href="https://github.com/EvieHwang">
     <title>Eve Hwang</title>
   </head>
   <body>
     <p>Redirecting to <a href="https://github.com/EvieHwang">github.com/EvieHwang</a>...</p>
   </body>
   </html>
   ```

4. Upload redirect HTML
   ```bash
   aws s3 cp index.html s3://evehwang.com-redirect/index.html --content-type "text/html"
   ```

5. Set bucket policy for public read access
   ```json
   {
     "Version": "2012-10-17",
     "Statement": [
       {
         "Sid": "PublicReadGetObject",
         "Effect": "Allow",
         "Principal": "*",
         "Action": "s3:GetObject",
         "Resource": "arn:aws:s3:::evehwang.com-redirect/*"
       }
     ]
   }
   ```

### Phase 3: CloudFront Distribution

1. Create CloudFront distribution with:
   - **Origin**: S3 website endpoint `evehwang.com-redirect.s3-website-us-east-1.amazonaws.com`
   - **Alternate domain names**: `evehwang.com`, `www.evehwang.com`
   - **SSL Certificate**: ACM certificate from Phase 1
   - **Viewer Protocol Policy**: Redirect HTTP to HTTPS
   - **Default root object**: `index.html`

2. Wait for distribution to deploy (15-20 minutes)

### Phase 4: Route 53 Configuration

1. Create A record for evehwang.com
   - Type: A
   - Alias: Yes
   - Alias target: CloudFront distribution domain

2. Create A record for www.evehwang.com
   - Type: A
   - Alias: Yes
   - Alias target: Same CloudFront distribution

## Verification

1. Check `https://evehwang.com` redirects to GitHub
2. Check `https://www.evehwang.com` redirects to GitHub
3. Check `http://evehwang.com` upgrades to HTTPS then redirects
4. Check `http://www.evehwang.com` upgrades to HTTPS then redirects
5. Verify SSL certificate shows valid in browser

## Rollback Plan

If something goes wrong:

1. Revert Route 53 A records to previous values (if any)
2. Delete CloudFront distribution
3. Delete S3 bucket contents and bucket
4. Delete ACM certificate

## Cost Estimate

- S3: ~$0.01/month (minimal storage and requests)
- CloudFront: ~$0.00/month (free tier covers light traffic)
- Route 53: ~$0.50/month (hosted zone)
- ACM: Free
- **Total**: ~$0.50-1.00/month

## Notes

- CloudFront distributions can take 15-20 minutes to deploy
- ACM certificate validation requires DNS records to propagate
- Use us-east-1 region for ACM cert (required for CloudFront)
- S3 website endpoint must be used (not REST endpoint) for proper redirect
