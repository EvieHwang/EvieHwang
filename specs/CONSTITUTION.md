# EvieHwang Project Constitution

This document establishes the foundational principles and design philosophy for the EvieHwang repository.

## Project Purpose

Maintain a professional GitHub profile and personal web presence:
- **GitHub Profile README**: Professional introduction and portfolio showcase
- **evehwang.com**: Domain redirect to GitHub profile with HTTPS support

## Architecture

### Serverless Infrastructure

**Rationale**: Minimal operational overhead, pay-per-use, no servers to maintain

**Implementation**:
- AWS S3 for static content hosting
- AWS CloudFront for CDN and HTTPS
- AWS ACM for SSL certificates
- AWS Route 53 for DNS management

**Trade-offs Accepted**:
- AWS vendor lock-in (acceptable for simple infrastructure)
- CloudFront propagation delays (acceptable for static content)

### Domain Setup

**Primary Domain**: evehwang.com
- Registered at: GoDaddy
- DNS managed at: AWS Route 53
- Purpose: Redirect to GitHub profile

**Related Domain**: evie.ee
- Separate GitHub Pages site (not managed in this repo)

## Design Philosophy

### 1. Minimal and Professional
- Clean, focused profile content
- No unnecessary complexity
- Professional tone appropriate for LinkedIn/hiring contexts

### 2. Low Maintenance
- Static infrastructure that doesn't require ongoing attention
- No databases, servers, or complex deployments
- Changes are infrequent and deliberate

### 3. Specification-Driven
- Changes documented in specs before implementation
- Clear acceptance criteria for infrastructure changes
- GitHub issues link to spec files

### 4. Cost-Conscious
- Use AWS free tier where possible
- Avoid over-engineering for simple requirements
- Monitor costs for any new resources

## Codebase Organization

```
/
├── README.md              # GitHub profile content (DO NOT MODIFY without approval)
├── CLAUDE.md              # Agent autonomy settings
├── specs/
│   ├── CONSTITUTION.md    # This file
│   └── ###-feature-name/  # Per-feature specifications
│       ├── spec.md
│       ├── plan.md
│       └── tasks.md
└── .specify/
    └── templates/         # Spec templates
```

## Decision-Making Framework

### When to Create a Spec

Create a spec for:
- Any new AWS infrastructure
- Changes to domain configuration
- Significant profile content updates

Do not need a spec for:
- Minor typo fixes in README
- Template updates in .specify/

### How Changes Are Made

1. Create GitHub issue with requirements
2. Create spec from issue (if needed)
3. Implement following the spec
4. Update issue with results
5. Create PR for review

## What This Repository Is NOT

To maintain focus, the following are explicitly NOT goals:

1. **Complex web applications**: No dynamic content or APIs
2. **Multiple page websites**: Single redirect, not a full site
3. **Frequent content updates**: Profile changes are deliberate
4. **Custom domain email**: MX records managed separately (be careful!)

## Success Metrics

- [ ] evehwang.com redirects to GitHub profile with HTTPS
- [ ] www.evehwang.com redirects to GitHub profile with HTTPS
- [ ] Infrastructure costs remain minimal (< $1/month)
- [ ] Profile README accurately reflects current work

## Revision History

- **2026-01-01**: Initial constitution established
