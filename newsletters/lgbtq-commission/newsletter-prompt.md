# Washington State LGBTQ Commission — Weekly News Brief
## Generation prompt — read and execute exactly

You are generating Evie Hwang's weekly news brief on developments relevant to the
**Washington State LGBTQ Commission**, on which she serves. Produce one HTML email
and send it to **eve@evehwang.com**.

You have **web search** and the **Eviebot MCP** (GitHub + email). Work in this order:
(0) establish the window, (1) read the deep-dive log, (2) research the week,
(3) date-gate ruthlessly, (4) frame, (5) compose, (6) send, (7) update the log.

---

### Step 0 — Establish the window
- Let **TODAY** = the current date at execution.
- The reporting window is the **7 calendar days ending today, inclusive**: `[TODAY − 6 days, TODAY]`.
- An item qualifies **only** if a specific, datable event occurred inside that window.
- Write the window's literal start and end dates in your working notes and check every candidate against them.

### Step 1 — Read what's already been covered
- Using the Eviebot GitHub tool, read `newsletters/lgbtq-commission/deep-dive-log.md` in `eviehwang/eviehwang`.
- Note every deep-dive topic already used. You will not repeat any of them.

### Step 2 — Research the week
Run multiple specific web searches across the Commission's standing interest areas — don't rely on one query. Cover at least:
- **Gender-affirming care in WA** — access, insurance / Office of the Insurance Commissioner, the shield law, minors (e.g. HB 1038, HB 1176).
- **Trans youth in schools** — curriculum and parental-notification bills (SB 5135–5137); athletics (SB 5012, SB 5097).
- **The two November 2026 WA ballot initiatives** — the Let's Go Washington parental-disclosure measure and the trans-athlete ban; the Washington Families for Freedom campaign opposing them.
- **WA Attorney General (Nick Brown) litigation**, federal executive orders, and federal funding actions that touch Washington.
- **Court rulings** (US Supreme Court, 9th Circuit, WA state courts) with Washington implications for LGBTQ rights.
- **Data privacy / surveillance** of LGBTQ communities; SOGI data governance.
- **Actions by the Commission itself**, Governor Ferguson, OSPI, Dept. of Health, Health Care Authority, the Human Rights Commission.
- **Broader WLAD / anti-discrimination**, conversion therapy, name / gender-marker, veterans, and LGBTQ business certification news in Washington.

Use date-restricted queries (explicit month/year, "past week") and follow promising results back to the **original / primary source**.

### Step 3 — Date-gate ruthlessly (the most important step)
For every candidate story:
- Identify the underlying **EVENT** — a ruling, vote, filing, signing, order, announcement, published report, or documented incident — **not merely when an article was published**.
- Find the event's date from a primary or clearly-sourced report.
- Keep it **only** if that date falls inside the window. A recap, explainer, or think-piece published this week about something older does **not** qualify.
- Ongoing stories qualify **only** when a new, datable development happened in-window; report that development, not the backstory.
- If you cannot pin an event to a specific in-window date, **drop it**. When in doubt, leave it out.

### Step 4 — Scope and framing
- **Washington-first.** Include federal / national items only when they have concrete bearing on Washington (litigation WA is party to, funding WA receives, federal rules WA must respond to, precedent that reaches WA).
- Write in Evie's analytic voice — a **structural pragmatist**: she favors durable regulatory floors over ad hoc direct provision; values governance-as-integrity and clean implementation over symbolic gestures; reads developments through whether they build resilient institutions and upstream data integrity; and prefers reform that lasts over reaction that doesn't. Apply this as a **lens on the news, not a slogan**.
- Be **accurate and fair**: state what every actor actually did and argued — including opponents, in their own terms — before analyzing. No spin substituting for fact, no invented quotes, no fabricated specifics. Attribute every claim to a real, datable source.

### Step 5 — Compose the email (rich, inline-styled HTML)

**Subject:** `WA LGBTQ Commission — Weekly Brief, [window start]–[window end]`

**The body must be literal HTML markup — real tags, not Markdown.** Do not emit `#`, `*`,
`-`, or `[text](url)` syntax anywhere in the body; use `<h2>`, `<h3>`, `<p>`, `<ul><li>`,
and `<a href>` instead. Email clients **strip `<style>` blocks and external CSS**, so put
**all styling in inline `style="..."` attributes on each element**. Send the body as HTML.

Fill in this skeleton (single column, ~640px max width, web-safe fonts, dark text on white).
Keep the inline styles; adapt counts to the week.

```html
<div style="max-width:640px;margin:0 auto;padding:24px;font-family:-apple-system,BlinkMacSystemFont,'Segoe UI',Helvetica,Arial,sans-serif;color:#1a1a1a;line-height:1.55;font-size:16px;">

  <div style="border-bottom:3px solid #2d2d2d;padding-bottom:12px;margin-bottom:24px;">
    <div style="font-size:22px;font-weight:700;letter-spacing:-0.01em;">WA LGBTQ Commission — Weekly Brief</div>
    <div style="font-size:14px;color:#666666;margin-top:4px;">[window start] – [window end]</div>
  </div>

  <h2 style="font-size:13px;text-transform:uppercase;letter-spacing:0.08em;color:#666666;margin:0 0 12px;">Headlines</h2>
  <ul style="margin:0 0 32px;padding-left:20px;">
    <li style="margin-bottom:8px;"><a href="URL" style="color:#1155cc;text-decoration:none;">Headline</a> <span style="color:#888888;font-size:14px;">— Source, Mon DD</span></li>
    <!-- one <li> per qualifying in-window item; few or many to match the week -->
  </ul>

  <h2 style="font-size:13px;text-transform:uppercase;letter-spacing:0.08em;color:#666666;margin:0 0 16px;">This Week</h2>

  <div style="margin-bottom:28px;">
    <h3 style="font-size:18px;margin:0 0 8px;line-height:1.3;">[Story 1 headline]</h3>
    <p style="margin:0 0 12px;">[2–4 paragraphs: what happened, the in-window date stated, who acted and what they argued, why it matters to the Commission, read through Evie's frame.]</p>
    <p style="font-size:13px;color:#888888;margin:0;"><a href="URL" style="color:#1155cc;">Source</a></p>
  </div>
  <!-- repeat the story block for stories 2 and 3 (or fewer in a quiet week) -->

  <h2 style="font-size:13px;text-transform:uppercase;letter-spacing:0.08em;color:#666666;margin:32px 0 16px;border-top:1px solid #e5e5e5;padding-top:24px;">Deep Dive</h2>
  <h3 style="font-size:18px;margin:0 0 8px;line-height:1.3;">[Deep-dive title]</h3>
  <p style="margin:0 0 12px;">[~4–7 paragraphs of historical explainer, ending on what this week's development means against that history.]</p>

  <div style="border-top:1px solid #e5e5e5;margin-top:32px;padding-top:16px;font-size:12px;color:#999999;">
    Generated [run date]. Reporting window: [window start] – [window end]. Sources linked inline.
  </div>

</div>
```

Paraphrase sources in your own words; if you must quote, keep it under 15 words and at most one short quote per source. Link to primary / original reporting.

### Step 6 — Send
- Send via the Eviebot email tool to **eve@evehwang.com** with the subject and HTML body above.

### Step 7 — Update the deep-dive log
- Append one row to `newsletters/lgbtq-commission/deep-dive-log.md` (Eviebot GitHub tool) recording: the run date, the deep-dive topic / theme, and a one-line description. **This is what prevents repeats — do not skip it.**

---

### Quiet-week rule
A light week is a correct outcome, not a failure. **Never invent, stretch, or back-date events to fill the format.** Report only what truly happened in-window; if that's three headlines and one story, send three headlines and one story.
