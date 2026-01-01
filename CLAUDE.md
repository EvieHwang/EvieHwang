# Claude Agent Autonomy Settings

This document defines the operational autonomy levels for the Claude agent working on the EvieHwang repository.

## Allowed Commands

The following bash commands are pre-approved and should be run without prompting:

```
# AWS CLI - Core Services
aws s3 *
aws cloudfront *
aws acm *
aws route53 *
aws sts *

# Git operations
git add *
git commit *
git push *
git pull *
git fetch *
git checkout *
git branch *
git merge *
git status
git log *
git diff *
git stash *

# GitHub CLI
gh issue *
gh pr *

# Directory and file operations
mkdir *
cp *
mv *
rm -rf node_modules
rm -rf __pycache__
rm *.pyc

# General tools
curl *
cat *
head *
tail *
grep *
find *
ls *
cd *
pwd
echo *
```

## Autonomous Operations (No Approval Required)

### Git Operations
- **Create feature branches**: Create branches from main for all feature work
- **Commit to branches**: Create commits with descriptive messages on feature branches
- **Push to remote**: Push branches to GitHub remote repository
- **Create PRs**: Open pull requests for all changes targeting main
- **Do not merge PRs**: Leave PRs open for human review unless explicitly instructed

### AWS Operations
- **S3 bucket creation**: Create new S3 buckets for hosting or storage
- **S3 sync/upload**: Upload files to S3 buckets with `aws s3 sync` or `aws s3 cp`
- **S3 website configuration**: Enable static website hosting on S3 buckets
- **S3 bucket policies**: Set public access policies for website hosting
- **CloudFront distributions**: Create and configure CloudFront distributions
- **ACM certificates**: Request ACM certificates and set up DNS validation
- **Route 53 records**: Create and update DNS records (A, CNAME, ALIAS)

### File Operations
- **Create files**: Generate new source files, configuration, or specs
- **Edit files**: Modify existing files to implement features
- **Move/rename files**: Reorganize project structure as needed
- **Create directories**: Add new folders for organizational purposes

### GitHub Integration
- **Read issues**: Fetch issue details for implementation specs
- **Update issues**: Close issues, add comments, update labels
- **Create branches**: Create feature branches from issues

## Operations Requiring Approval

Always ask before performing these operations:

### Destructive AWS Operations
- **Delete S3 buckets**: Removing buckets or their contents permanently
- **Delete CloudFront distributions**: Removing distributions
- **Revoke ACM certificates**: Deleting or modifying SSL certificates
- **Delete Route 53 hosted zones**: Removing DNS zones

### DNS Operations That Could Break Services
- **Modify MX records**: Changes that could affect email delivery
- **Delete production DNS records**: Removing records for active domains
- **Change nameservers**: Modifying NS records

### Git Destructive Operations
- **Force push**: Rewriting git history that has been pushed to remote
- **Delete branches**: Removing branches from remote repository

## Development Philosophy

- **Infrastructure as Code**: Document all AWS changes in specs and commands
- **Ship early, ship often**: Bias toward action and deployment
- **Descriptive commits**: Write clear commit messages that explain *why* not just *what*
- **Spec-driven**: Specifications guide implementation; diverge only with good reason
- **Self-documenting**: Code and commits should tell the story
- **Run autonomously**: Don't stop to ask permission for routine operations—just execute

## Workflow Integration

1. Read GitHub issue to understand context and acceptance criteria
2. Reference any linked spec files from repository
3. Implement according to spec
4. Commit and push changes with descriptive message
5. Deploy to AWS if applicable
6. Test in production environment
7. Update GitHub issue with implementation notes or close if complete
8. Provide a PR description including: summary of changes, key files modified, how to verify

## Speckit Workflow

When implementing features from GitHub issues, follow the spec kit process:

1. **Specify**: Create or update the feature specification from the issue
2. **Plan**: Build technical plan with architecture and approach
3. **Tasks**: Generate task breakdown with dependencies
4. **Implement**: Execute implementation following the task plan
5. Update GitHub issue with implementation notes
6. Create PR targeting main and leave open for review

### When to Use Speckit vs. Direct Implementation

**Use the full speckit workflow when:**
- Requirements are vague or open-ended
- Multiple valid approaches exist and decisions are needed
- Complex features touching many AWS resources
- New infrastructure without clear implementation path

**Direct implementation is acceptable when:**
- Issue already contains detailed specs with commands and acceptance criteria
- Bug fixes with clear reproduction steps
- Documentation-only changes
- Small changes following established patterns

## Active Technologies

- AWS S3 (static hosting, redirects)
- AWS CloudFront (CDN, HTTPS)
- AWS ACM (SSL certificates)
- AWS Route 53 (DNS management)
- GitHub (profile README, repository)

## Project Scope

This repository manages:
- GitHub profile README (README.md)
- evehwang.com redirect infrastructure
- Spec kit structure and documentation
