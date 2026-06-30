# WA LGBTQ Commission — Weekly News Brief

An automated weekly newsletter on news relevant to the **Washington State LGBTQ
Commission**, delivered to eve@evehwang.com.

## How it works
- A **Claude Code Routine** fires on a weekly schedule (set when you wire up the trigger).
- Each firing reads `newsletter-prompt.md` and follows it exactly.
- It has **web search** and the **Eviebot MCP** (GitHub + email).
- It researches the past 7 days, **date-gates strictly to in-window events**, composes an
  HTML brief — *headlines → three stories → one historical deep dive* — and emails it.
- It logs each deep-dive topic in `deep-dive-log.md` so explainers never repeat.

All behavior lives in the prompt file. The routine itself just says: read the prompt and follow it.

## Files
- `newsletter-prompt.md` — the operating prompt the routine executes.
- `deep-dive-log.md` — running ledger of past deep-dive topics (the no-repeats memory).
- `README.md` — this file.

## Editing
- To change scope, topics, or voice, edit `newsletter-prompt.md`.
- No state lives in the session — the deep-dive log in this repo is the only memory carried run to run.

## Note on email format
The prompt produces an **HTML** body. If a run shows raw HTML tags in the delivered email,
the gateway is sending `text/plain` — switch the **Compose** step in `newsletter-prompt.md`
to Markdown / plain text.
