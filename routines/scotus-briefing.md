# SCOTUS Briefing Routine

**Schedule:** Bi-weekly at 4:00 AM Pacific — runs on whichever two days per week Evie designates
**Recipient:** evie@eviehwang.com (or whichever address is primary in Fastmail)
**Sender:** Same Fastmail account

---

## What This Routine Does

Researches and writes a bi-weekly Supreme Court briefing email, then sends it via Fastmail. It reads the memory file before generating content, and writes back to the memory file after sending to track what was covered.

---

## Step 1 — Read the Memory File

Read the file at `routines/supremecourtmemory.md` in this repository.

Note:
- Which **deep dive topics** have already been covered (do not repeat them)
- Which **cases** are still pending vs. already decided
- What was covered in the **last briefing**
- The **current term status** (how many cases remain, how late in the term it is)

---

## Step 2 — Research Current Status

Search the web for Supreme Court news and opinion releases since the last briefing date recorded in the memory file. Use the following sources, in priority order:

1. **SCOTUSblog** (scotusblog.com) — opinions, oral argument recaps, emergency applications
2. **supremecourt.gov** — official opinion PDFs, argument calendars
3. **NPR Legal** or **Ballotpedia** — case summaries, term trackers

Look for:
- Any opinions released since the last briefing
- Emergency applications or shadow docket orders
- Upcoming argument dates or opinion days
- Any major cert grants (new cases added to next term)

---

## Step 3 — Select Deep Dive Topic

Pick the next uncovered topic from the **Topic Queue** in the memory file. Work through the queue in order unless a topic is especially timely (e.g., if *Trump v. Barbara* is about to be decided, the citizenship clause deep dive should run in that briefing, regardless of queue position).

The deep dive should:
- Be 250–350 words
- Explain a foundational concept, landmark precedent, or doctrinal thread
- Connect explicitly to a case currently on the docket or recently decided
- Be written for someone who is analytically sharp and legally literate but not a lawyer — no hand-holding, but also no unexplained jargon

---

## Step 4 — Write the Briefing Email

### Subject line format:
`SCOTUS Briefing — [Month Day] | [one-line hook on most significant pending/decided case]`

Example: `SCOTUS Briefing — June 29 | Birthright Citizenship Decision Expected This Week`

### Email body structure (HTML-formatted, clean and readable):

---

**SCOTUS BRIEFING**
*[Date] · [X cases decided this term | Y still pending]*

---

**STATUS SNAPSHOT**

[2–4 sentences on what has happened since the last briefing: opinions released (case name, holding, vote split, author, one sentence on significance), emergency orders or shadow docket activity, and any big news (cert grants, justice statements, unusual orders). If nothing has happened, say so briefly and move on. Flag in bold if any decision is directly relevant to LGBTQ rights, voting rights, or executive power over agencies — areas relevant to Evie's Commission work and policy focus.]

---

**CASE SPOTLIGHT**

[Choose 1–2 cases still pending, or a recently decided case that deserves more analysis than the snapshot allowed. For each:]

*[Case name]* — [One sentence on parties and issue.]

[2–3 paragraphs: what the question actually is (not the headline version), what the lower courts did, what oral argument revealed about where the justices are leaning, and what the doctrinal stakes are. Be concrete about the constitutional or statutory hook. Note if this case touches a long-arc thread tracked in the memory file.]

---

**DEEP DIVE**

*[Topic title]*

[250–350 words. Foundational concept, landmark case, or doctrinal thread. Connect to something currently on the docket. Write analytically — surfaces the structural logic, not just the political stakes. No padding.]

---

**TERM CALENDAR**

- Term closes: [estimated date]
- Cases still pending: [number]
- Next opinion day: [date if known, or "not yet announced"]
- Next term begins: [October date]
- Notable upcoming: [any cases already granted cert for next term worth flagging]

---

*Sources: SCOTUSblog, supremecourt.gov, [any others used]*

---

### Tone guidance:
- Analytical, not partisan
- No "both sides" hedging — state what the doctrinal stakes are clearly
- Evie's frame is liberally-inclined originalism: she accepts the Court's role as constrained interpreter, not legislature; she is interested in the structural logic of decisions, not just outcomes
- Surface the tension where it exists — cases where originalist methodology produces liberal outcomes, or where "giving it back to the legislature" is the right structural call even with painful consequences
- Never editorialize about justices as heroes or villains; track their reasoning instead

---

## Step 5 — Send via Fastmail

Use the Fastmail MCP tool to send the email.

- **To:** evie@eviehwang.com
- **From:** Fastmail primary account
- **Subject:** As formatted above
- **Body:** HTML formatted email as composed in Step 4

---

## Step 6 — Update the Memory File

After sending successfully, update `routines/supremecourtmemory.md`:

1. Mark the deep dive topic as **covered**, with today's date, in the Topics Covered section
2. Update the **pending cases table** — move any decided cases to the "Already Issued" table with their holding and significance
3. Update **Last updated** date at the bottom of the file
4. If new cases have been granted cert for next term, add them to a "Next Term Watch" section (create it if it doesn't exist)

Commit the updated memory file with message: `scotus-briefing: update memory after [date] briefing`

---

## Error Handling

- If web search returns no results for recent SCOTUS activity, note this in the Status Snapshot and proceed with Case Spotlight and Deep Dive using known information from the memory file
- If the Fastmail send fails, log the error and do not update the memory file (so the next run retries cleanly)
- If the memory file cannot be read, halt and do not send — the memory file is required to prevent topic repetition

---

## Notes

- This routine does **not** run on a fixed calendar — Evie sets the schedule in Claude Code to whatever cadence she wants (bi-weekly recommended)
- The deep dive queue in the memory file has ~18 topics, enough for 6 months without repetition
- During the summer recess (late June–early October), the Status Snapshot will be quieter; lean into Case Spotlight and Deep Dive during this period to build doctrinal context for next term
- If a major landmark decision lands on a non-briefing day, Evie may choose to trigger this routine manually for a special edition
