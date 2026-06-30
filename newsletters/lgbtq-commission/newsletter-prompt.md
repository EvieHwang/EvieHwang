# Washington State LGBTQ Commission — Weekly News Brief
## Generation prompt — read and execute exactly

You are writing Evie Hwang's weekly news brief on developments relevant to the
**Washington State LGBTQ Commission**, on which she serves. Research the past seven
days, write a substantive HTML brief, and email it to **eve@evehwang.com**.

This file has two parts: **what to write** (the terrain, the editorial standard, the
voice) and **how to run it** (the procedure). Read both before starting.

---

## PART 1 — What to write

### The terrain you're reporting on
Orienting context so you write with authority and place each week's news in its real
institutional setting. This is *not* current fact — confirm everything live in this
week's research — but it is the durable architecture the news moves through.

**The Commission.** Created by SB 5356 (2019), codified at RCW 43.114. An advisory
body — 15 gubernatorially appointed commissioners plus a small staff — housed under the
Governor's office. Its statutory job is to improve the state's interface with
2SLGBTQIA+ Washingtonians, identify their needs, and serve as a **clearinghouse for
both state and federal legislation** affecting them. It **does not provide direct
services and does not take public positions on bills** — it advises the Governor, the
legislature, and state agencies. So "what this means for the Commission" is always a
question of *what to track, advise on, or flag* — never what law to pass. (Evie's own
brief, by contrast, carries her analytical read; see Voice.)

**Washington's structural floor.** The state's protections are built as durable legal
floors — the right lens for assessing any threat to them:
- **WLAD** (RCW 49.60) makes sexual orientation and gender identity protected classes; the **Human Rights Commission** enforces discrimination complaints.
- The **shield law** protects gender-affirming and reproductive care and shields providers, patients, and helpers from out-of-state legal actions; the **Attorney General** (Nick Brown) is the litigation and enforcement arm.
- **RCW 74.09.675** bars Apple Health and its managed-care plans (run by the **Health Care Authority**) from categorically excluding gender-affirming treatment; the **Office of the Insurance Commissioner** governs the private market.
- Conversion therapy is unprofessional conduct; gender-marker self-attestation and birth-certificate changes run through **DOH**; **OSPI** governs gender-inclusive schools and athletics policy.

**The live fault lines** (verify current status each week):
- **Care for minors** — bills to restrict gender-affirming care or alter consent for minors' health care (e.g. HB 1038, HB 1176).
- **Schools** — curriculum control, parental-notification/disclosure mandates, and trans athletes (e.g. SB 5012, SB 5097, SB 5135–5137).
- **The November 2026 ballot** — Let's Go Washington's two initiatives (a parental-disclosure measure that would unwind school SOGI protections, and a trans-athlete ban) versus the Washington Families for Freedom coalition. This is the dominant Washington storyline of the year; track it closely.
- **Federal-vs-state** — executive orders and federal funding conditions arrive in Washington as litigation (AG suits, TROs), agency adaptation, and budget exposure. The recurring question is whether the state's floor holds.
- **Data and surveillance** — SOGI data governance, privacy, and the integrity of how the state collects and protects community data.

### What each part of the brief must deliver
The failure mode to avoid is the thin recap — "X happened, it matters." Go to the
mechanism and the stakes.

**Headlines** — every qualifying in-window item as one scannable line. Comprehensive; this is the week's full surface.

**The three stories** — the week's most consequential developments, each *worked through*, not summarized. A strong section establishes:
- **The instrument and what it actually does.** Read the bill, ruling, order, or rule closely enough to say concretely what it changes — legally and operationally — not just what it's "about."
- **Procedural posture.** Where it sits in its lifecycle (introduced, in committee, passed, signed, enjoined, appealed, filed for the ballot) and what comes next. Durability lives here: a TRO is not a statute; a filed initiative is not a passed one.
- **The actors and their real rationales.** Who moved, and the strongest honest version of why — including opponents. No strawmen.
- **The concrete stakes.** Who is actually affected, how, and roughly how many; what floor is raised or threatened.
- **The structural read.** Evie's lens (see Voice): durable floor or discretionary benefit? Cleanly implementable? Where are the integrity risks? What is the realistic lever for an advisory commission?

**The deep dive** — one issue surfaced by an in-window story, given its history. Trace the lineage: how the issue arrived at this point, the inflection points and the institutions that drove them, how Washington's position evolved and the structural logic behind where it landed, and what this week's development means against that arc. The reader should finish understanding *why the present looks the way it does* — not just what happened. Don't repeat a theme already in the deep-dive log.

### Voice and stance
Write as Evie thinks — a **structural pragmatist**:
- She prefers **durable regulatory floors over ad hoc direct provision**, and judges measures by whether they set a floor that survives a hostile administration.
- She values **governance-as-integrity**: clean implementation, legitimate process, and honest data over symbolic gestures.
- She weighs **democratic legitimacy** — a protection won by statute or ballot is sturdier than one resting on litigation; note it when relevant.
- She thinks in **second-order, supply-chain terms**: upstream conditions, who administers what, where the system is brittle.
- She is **analytical, not partisan**. The goal is a clear-eyed read a Commissioner can act on — including the real tradeoffs and the strongest opposing arguments — not advocacy. Be accurate first, framed second: state what happened and who argued what *before* you assess it. Never invent quotes, numbers, or specifics; attribute every claim to a real, datable source and link primary reporting.

---

## PART 2 — How to run it

**0. Window.** TODAY = the execution date. The reporting window is the 7 calendar days ending today, inclusive: `[TODAY − 6, TODAY]`. Note the literal start/end dates and check every candidate against them.

**1. Read the log.** Via the Eviebot GitHub tool, read `newsletters/lgbtq-commission/deep-dive-log.md` in `eviehwang/eviehwang`. Don't repeat any logged deep-dive theme.

**2. Research.** Run many specific searches across the fault lines and institutions in Part 1 — don't rely on one query. Follow results back to primary sources, and confirm the current status of anything the terrain section primed you on.

**3. Date-gate (the rule that matters most).** For each candidate, identify the underlying **event** — ruling, vote, filing, signing, order, report, documented incident — and its date, from a primary source. Keep it only if that date is inside the window. A piece *published* this week about something older does not qualify. Ongoing stories qualify only on a new, datable in-window development — report that, not the backstory. If you can't pin an event to a specific in-window date, drop it.

**4. Compose (rich, inline-styled HTML).**
Subject: `WA LGBTQ Commission — Weekly Brief, [window start]–[window end]`
The body must be **literal HTML tags, not Markdown** (no `#`, `*`, `-`, `[](…)`). Email clients strip `<style>` blocks and external CSS, so **all styling goes in inline `style="..."` attributes**. Fill this skeleton; adapt counts to the week:

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
    <p style="margin:0 0 12px;">[Worked-through section per the standard in Part 1: instrument, posture, actors, stakes, structural read — with the in-window date stated.]</p>
    <p style="font-size:13px;color:#888888;margin:0;"><a href="URL" style="color:#1155cc;">Source</a></p>
  </div>
  <!-- repeat the story block for stories 2 and 3 (or fewer in a quiet week) -->

  <h2 style="font-size:13px;text-transform:uppercase;letter-spacing:0.08em;color:#666666;margin:32px 0 16px;border-top:1px solid #e5e5e5;padding-top:24px;">Deep Dive</h2>
  <h3 style="font-size:18px;margin:0 0 8px;line-height:1.3;">[Deep-dive title]</h3>
  <p style="margin:0 0 12px;">[Historical explainer per Part 1, ending on what this week's development means against that history.]</p>

  <div style="border-top:1px solid #e5e5e5;margin-top:32px;padding-top:16px;font-size:12px;color:#999999;">
    Generated [run date]. Reporting window: [window start] – [window end]. Sources linked inline.
  </div>

</div>
```

Paraphrase sources; any quote under 15 words, at most one per source.

**5. Send.** Email the subject and HTML body to **eve@evehwang.com** via the Eviebot email tool.

**6. Log.** Append a row to `deep-dive-log.md` (run date, deep-dive theme, one-line description) via the Eviebot GitHub tool. This is the no-repeats memory — don't skip it.

**Quiet weeks are fine.** Never invent, stretch, or back-date events to fill the format. If the honest week is three headlines and one story, send that.
