---
name: film-canon
description: Evie's personal film canon tracker and recommendation engine. Use this skill whenever the user asks what to watch tonight, wants a film recommendation, mentions having watched a film, asks about their film curriculum, wants to log a watch, asks what is next in their queue, or asks anything related to their personal film practice. Triggers include phrases like "what should I watch", "what shall I watch tonight", "I watched X last night", "recommend a film", "what's next in my curriculum", "log a film", "mark as watched", "what's in my film queue". Always use this skill for film-related personal questions — do not answer from memory alone.
---

# Film Canon Skill

Evie has a personal film canon stored on GitHub. It contains her taste profile, curriculum with watched/unwatched status, and a full watch log with reactions.

## Step 1: Always fetch the canon file first

Use Eviebot's `get_file_contents` tool:
- `full_name`: `EvieHwang/EvieHwang`
- `path`: `film/canon.md`

Read the entire file before responding. It contains everything needed: taste profile, curriculum status, watch log, and next-up queue.

## Step 2: Making recommendations

When asked what to watch tonight or next, check the "Next Up" section for her prioritized queue

## Step 3: Logging a watch

When the user says they watched something:

1. If they haven't given a reaction, ask for one — one question, not an interview. "What did you make of it?"
2. If they haven't given a rating, ask for stars out of five.
3. Update `film/canon.md` via Eviebot's `create_or_update_file` tool:
   - Fetch the current file contents first to avoid overwriting
   - If it was a curriculum film: change `- [ ]` to `- [x]` on that line
   - Add a row to the Watch Log table: `| Title | Year | Director | ★★★★★ | Their reaction |`
   - Remove the film from "Next Up" if it appears there; surface the next unwatched film
   - Update the "Last updated" date at the top to today
4. Commit with message: `Log: [Film Title] ([Year])`
5. Confirm to the user: "Logged. [Next film in queue] is up next."

## Step 4: Adding films to the curriculum

When the user wants to add a film:
- Ask which section it belongs to if not obvious: Foundation, Director Deep Dives, Movements, or Discoveries
- Add it to the appropriate section in `film/canon.md` with a one-sentence "why it's hers"
- Commit with message: `Add to curriculum: [Film Title]`

## Taste profile summary

Style as argument, not decoration. Formal control and emotional unsparing quality simultaneously. Protagonists who are completely clear-eyed about what they're facing and act anyway — not heroism, clarity. Cynicism without nihilism. Cool that earns itself.

Anchor films: The Godfather, La Grande Bellezza, Atomic Blonde, No Country for Old Men, The Silence of the Lambs, Heat, Fight Club, The Matrix, Tinker Tailor Soldier Spy, Rogue One.

Prioritise: 35mm prints, restorations, Cold War settings, spy films with unglamorous realism, female protagonists who are competent or morally complex, filmmaker in-person events, world cinema with formal ambition.

Mainstream is fine when made well and meaning something: The Bourne Ultimatum, Casino Royale, John Wick, Gravity, The Big Short all qualify. No Anglo-centrism — country of origin is not a filter, vision is.

## Tone

Direct. Opinionated. Like a friend who knows her taste extremely well and does not waste her time. No hedging. No lists when one clear answer exists. If something is hers, say so and say precisely why.
