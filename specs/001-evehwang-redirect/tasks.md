# Tasks: evehwang.com Redirect

**Feature ID**: 001-evehwang-redirect
**Spec**: [spec.md](./spec.md)
**Plan**: [plan.md](./plan.md)

## Task Format

`[ID] [P?] Description`
- **[P]**: Can run in parallel with other [P] tasks
- Check off tasks as completed

## Phase 0: Prerequisites

- [ ] T000 Verify Route 53 hosted zone exists for evehwang.com

## Phase 1: SSL Certificate

- [ ] T001 Request ACM certificate for evehwang.com and www.evehwang.com in us-east-1
- [ ] T002 Add CNAME validation records to Route 53
- [ ] T003 Poll for ACM certificate validation (every 30s, timeout 10min)

## Phase 2: S3 Bucket Setup

- [ ] T004 Create S3 bucket `evehwang.com-redirect` in us-east-1
- [ ] T004a Disable Block Public Access on the bucket
- [ ] T005 Enable static website hosting with error document
- [ ] T006 Create index.html with redirect content
- [ ] T007 Upload index.html to S3 bucket
- [ ] T008 Apply bucket policy for public read access

## Phase 3: CloudFront Distribution

- [ ] T009 Create CloudFront distribution with S3 origin
- [ ] T010 Configure alternate domain names (evehwang.com, www.evehwang.com)
- [ ] T011 Attach ACM certificate to distribution
- [ ] T012 Set viewer protocol policy to redirect HTTP to HTTPS
- [ ] T013 Wait for CloudFront distribution deployment (15-20 min)

## Phase 4: Route 53 Configuration

- [ ] T014 Create A record (alias) for evehwang.com pointing to CloudFront
- [ ] T015 Create A record (alias) for www.evehwang.com pointing to CloudFront

## Phase 5: Verification

- [ ] T016 Test https://evehwang.com redirects to GitHub
- [ ] T017 Test https://www.evehwang.com redirects to GitHub
- [ ] T018 Test http:// upgrades to https:// before redirect
- [ ] T019 Verify SSL certificate is valid in browser
- [ ] T020 Update GitHub issue #1 with completion status

## Dependencies

- T001-T003 depend on T000 (need Route 53 hosted zone)
- T002, T003 depend on T001 (need certificate ARN for validation records)
- T004a depends on T004 (need bucket to exist first)
- T008 depends on T004a (must disable Block Public Access before applying policy)
- T009-T012 depend on T003 (need validated certificate)
- T009 depends on T004-T008 (need S3 bucket configured)
- T014, T015 depend on T013 (need CloudFront distribution domain)
- T016-T019 depend on T014, T015 (need DNS configured)

## Notes

- ACM certificate validation: poll every 30 seconds, timeout after 10 minutes
- CloudFront distribution deployment takes 15-20 minutes
- DNS propagation may add additional delay
- Total estimated time: 30-60 minutes (mostly waiting)
- Block Public Access must be disabled BEFORE applying bucket policy
