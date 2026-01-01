# Feature Specification: evehwang.com Redirect

**Feature ID**: 001-evehwang-redirect
**Created**: 2026-01-01
**Status**: Draft
**GitHub Issue**: #1

## Goal

Redirect `evehwang.com` and `www.evehwang.com` to `https://github.com/EvieHwang` with HTTPS support.

## Context

The domain evehwang.com is registered at GoDaddy with DNS managed at AWS Route 53. The goal is to create a professional redirect that sends visitors to the GitHub profile with proper HTTPS encryption.

## Requirements

### Must Have
- [ ] HTTPS support for evehwang.com
- [ ] HTTPS support for www.evehwang.com
- [ ] Redirect both domains to https://github.com/EvieHwang
- [ ] HTTP requests automatically upgrade to HTTPS before redirect

### Nice to Have
- [ ] Fast redirect (via meta refresh or 301)
- [ ] SEO-friendly canonical link

## Technical Approach

Use AWS S3 + CloudFront + ACM:
- S3 bucket hosts a simple redirect HTML page
- CloudFront provides HTTPS and CDN
- ACM provides the SSL certificate
- Route 53 points the domains to CloudFront

## Acceptance Criteria

- [ ] ACM certificate issued and validated for evehwang.com and www.evehwang.com
- [ ] S3 bucket created with redirect HTML
- [ ] CloudFront distribution created with HTTPS
- [ ] Route 53 A records point to CloudFront
- [ ] `https://evehwang.com` redirects to `https://github.com/EvieHwang`
- [ ] `https://www.evehwang.com` redirects to `https://github.com/EvieHwang`
- [ ] `http://` requests redirect to `https://` before redirecting to GitHub

## Edge Cases

- What if CloudFront takes a long time to deploy? Wait 15-20 minutes, this is expected.
- What if ACM certificate validation fails? Verify CNAME records are correctly added to Route 53.

## Notes

- ACM certificates for CloudFront must be in us-east-1 region
- CloudFront must use the S3 website endpoint (HTTP), not the S3 REST endpoint
- DNS propagation may take additional time after Route 53 changes
