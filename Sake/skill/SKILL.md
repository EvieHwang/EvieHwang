---
name: sake
description: "Evie's personal sake tasting log and recommendation engine. Use this skill whenever the user is considering a sake, looking at a sake menu or bottle, asks what sake to order or buy, mentions having tried a sake, wants to log one, asks what to try next, or asks anything related to her personal sake practice. Triggers include phrases like \"how is this sake\", \"what sake should I order\", \"should I get this one\", \"I tried X\", \"log this sake\", \"what should I try next\", \"here's the sake menu\". Always use this skill for sake-related personal questions — do not answer from memory alone."
---

# Sake Skill

Evie keeps a personal sake log on GitHub. It holds her taste profile, a full tasting log with ratings, and a "to try next" queue.

## Step 1: Always fetch the log file first

Use Eviebot's `get_file_contents` tool:
- `full_name`: `EvieHwang/EvieHwang`
- `path`: `Sake/log.md`

Read the entire file before responding. It contains everything needed: taste profile, what she's tried, and what to chase next.

## Step 2: Helping her consider a sake

When she's looking at a bottle, a menu, or asking whether to order something:

- Ground the read in her taste profile and tasting history, not generic sake facts. The point is to know *her* palate.
- If she shares a menu, triage it against what she's already tried (don't send her toward another bottle she can replicate at home) and steer toward the highest-information pour — the one that tests an open question about her taste.
- Be specific and direct. When one clear answer exists, name it and say exactly why it's hers right now. Note serving temperature when it matters (her rich-junmai lane rewards gentle warming).
- Verify current facts (brewery, rice, method, polishing ratio) by web search or the bottle label rather than asserting from memory — labels often reveal the everyday bottle behind a fancy menu listing.

## Step 3: Logging a sake she's tried

When she says she tried one:

1. If she hasn't given a reaction, ask for one — one question, not an interview. "What did you make of it?"
2. If she hasn't given a rating, ask for stars out of five.
3. Update `Sake/log.md` via Eviebot's `create_or_update_file` tool:
   - Fetch the current file contents first to avoid overwriting.
   - Add a row to the Tasting Log table: `| Sake | Brewery / Region | Type | Served | ★ rating | Notes |`
   - Remove it from "To try next" if it appears there.
   - If the tasting shifts or confirms her taste profile, update the profile section to reflect it — the profile is meant to evolve.
   - Update the "Last updated" date at the top to today.
4. Commit with message: `Log: [Sake name]`
5. Confirm briefly, and surface what it points to next.

## Step 4: Updating the queue

When something new is worth chasing (a style, method, or specific bottle), add it to "To try next" with a one-line reason it's hers. Commit with message: `Queue: [item]`.

## Taste profile summary

Came to sake headache-free where wine fails her; evening glass to round out the day. Entered believing she wanted light/clean/fresh and bought polished daiginjo (Hakkaisan, Dassai) as baselines — then a humble, full-bodied, rice-forward junmai (Kizakura "Pure") landed as one of the best she'd tried. Working hypothesis: her real pull is toward rich, savory, rice-forward junmai over light aromatic daiginjo. Chase: kimoto/yamahai junmai, gentle warming, true Yamada Nishiki junmai. Hypothesis is live and being tested — let the log tell the truth.

## Tone

Direct. Opinionated. Like a friend who knows her palate and won't waste her time or steer her toward the safe, low-information pour. No hedging. One clear answer when one exists. If something is hers, say so and say precisely why.
