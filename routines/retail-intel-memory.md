# Retail Intel — Working Memory
_Last updated: 2026-06-18_

## Deep Dives Covered (rolling 90 days)
<!-- format: topic — [layer/rung] — YYYY-MM-DD -->
- Vendor agentic-AI wave: o9 neuro-symbolic Digital Brain, RELEX/Blue Yonder agents; copilot veneer vs. real decision support — [agentic rung] — 2026-03-26
- Nike Q3 FY26 marketplace cleanup: pulling unhealthy classic-franchise inventory, China sell-in reset, markdown/tariff pressure — [layer 2 / layer 5] — 2026-03-31
- Tariffs → assortment compression: ~35% apparel tariff; SKU cuts at Tapestry/H&M/Bershka/Lululemon — [macro / layer 2, order grain] — 2026-04-01
- TSFM frontier & honest boundary: TimesFM 2.5 #1 GIFT-Eval, Chronos-2 multivariate; strong baselines, not forklift replacements — [forecasting rung] — 2026-04-04
- RL-for-inventory status: multi-agent DRL, edge-RL replenishment patents; mixed results outside hyperscale confirm watchlist stance — [RL rung] — 2026-04-26
- Lululemon Q1 FY26 chase + SKU rationalization: chase +20%, SKU density -15%, dev-timeline compression, guidance cut — [layer 2 / layer 5 / markdown] — 2026-06-04
- Multi-objective Pareto forecast combination (arXiv:2606.04900, Petropoulos et al.): accuracy ≠ decision performance under asymmetric costs; Pareto frontier over combination weights — [forecasting → decision rung] — 2026-06-15
- XGBoost vs. neural ML comparison for retail (arXiv:2506.05941): tree-based wins on intermittent/sparse/high-turnover retail data; SAITS imputation helps neural but still inferior; foundation quality gates which workhorse you can deploy — [forecasting rung / honest boundary] — 2026-06-16
- Zalando extended (R,s,Q) + conformal prediction + DES (Scientific Reports Dec 2025): LightGBM quantiles → conformal calibration → discrete event simulation → stochastic policy optimization; 22% GMV uplift over human baseline; real decision-focused optimization in production at fashion scale — [decision optimization rung] — 2026-06-17
- RELEX 10 AI Agents GA: agents-over-engine architecture confirmed — right layer (agentic), right position (over real optimization, not replacing it); M&S Food as GA reference customer; gap remains on conformal/newsvendor fractile integration; March "copilot veneer" verdict updated to "right architecture at the agentic rung" — [agentic rung] — 2026-06-18

## Headlines & Company Events Covered (rolling 14 days)
<!-- format: entity — one-line — YYYY-MM-DD -->
- Lululemon — Q1 FY26: guidance cut, inventory $1.7B (units -4%), chase +20%, SKU density -15% — 2026-06-04
- Time-series foundation models — Chronos-2 group-attention multivariate explainers proliferating among practitioners — 2026-06-11
- arXiv:2606.04900 — Petropoulos et al. multi-objective forecast combination; Pareto weights for statistical accuracy vs. inventory cost — 2026-06-15
- Gap Inc — Q1 FY26: inventory flat in dollars/units down; ~200bps tariff drag on merchandise margin; EPS beat, guidance raised — 2026-06-15
- Aritzia — Q1 FY27 (Mar–May 2026): 33% revenue growth vs 3% inventory growth; cleanest inventory-to-sales print in peer group — 2026-06-15
- Under Armour — Q1 2026: inventory +2%, operating margin swings from -25.3% to +0.3%; markdown bleed stopped — 2026-06-15
- Nike — Q4 FY26 reporting June 30; $230M supply chain severance booked Q3; Q3 inventory $7.5B (-1% units), tariff-inflated unit costs; margin inflection guided Q2 FY27 — 2026-06-15, updated 2026-06-17
- Retail sales — May trade +5.2% YoY; post-front-loading consumer bounce holding — 2026-06-15
- arXiv:2506.05941 — XGBoost RMSE 4.833 beats N-BEATS/N-HiTS/TFT on retail data with intermittency and missingness; SAITS imputation closes gap at aggregate levels only — 2026-06-16
- RELEX State of Supply Chain 2026 — 54% prefer AI recommendation + human decision; only 10% trust autonomous AI supply chain decisions; 47% using/planning AI-driven inventory optimization — 2026-06-16
- Blue Yonder ICON 2026 — Inventory Ops Agent: explainable supplier order approval workflow; new "skills" for agentic ordering layer over existing optimization engine — 2026-06-16
- Adidas Q1 2026 — +14% inventory on World Cup front-load; gross margin 51.1% (-1pp FX/tariffs); ~€250M Q1 + ~€250M Q2 event demand; H2 sell-through test ahead — 2026-06-16
- GLP-1 → apparel size-run allocation — structural demand shift toward smaller sizes making pre-GLP-1 sell-through curves stale at size level; historical allocation signals unreliable — 2026-06-16
- PVH — inventory cost +3% YoY in Q3, ~2pp attributable to tariffs; critical ratio and holding cost math needs updating — 2026-06-16
- Census MTIS April 2026 — retail inventories +0.7%, wholesale +0.5%; March I/S ratio 1.32 vs 1.38 YoY; tariff front-load clearing but dollar figures inflated by unit cost — 2026-06-17
- Syrup Tech — acquired by Anaplan Sept 2025 (coverage gap logged); fashion AI buy planning (Layer 2/3) absorbed into connected planning platform; co-founders joined Anaplan leadership — 2026-06-17
- Afresh — $34M funding April 2026 (coverage gap); scaling from fresh perimeter to center store; 12,500+ depts, 70% YoY revenue growth; Just Climate + High Sage Ventures — 2026-06-17
- invent.ai — 2026 Gartner FAR market guide recognition (short + long lifecycle); "agentic decisioning" blog framing; same caveat as Blue Yonder: agentic UI ≠ real decision math underneath — 2026-06-17
- Toolio — April 2026 update: rolling MFP inventory, in-season retrending, allocation controls; collapses Layer 1/2 gap from batch to live — 2026-06-17
- TSFM-Bench — arXiv:2410.11802 at KDD 2026; first cross-model benchmark across Chronos/TimesFM/Moirai zero/few/full-shot; retrained gradient boosting baseline still missing from most comparisons — 2026-06-17
- US-Iran MOU — signed June 17; Hormuz reopening ~30 days but mine clearance 6 weeks–6 months; Q3 BAF/PSS hits July 1 regardless; CMA CGM $1,000/TEU PSS + new FAK rates ($3,700/20', $6,300/40') effective July 1; Hapag-Lloyd $500–$1,000/TEU PSS from June 8 ongoing; buy plans on Hormuz-inflated unit costs are overstated for H2 — 2026-06-18
- BLS May 2026 — import prices +6.7% YoY, +1.9% MoM (released June 16); apparel/footwear/household goods component accelerating for second consecutive month; cost ratio c_u/(c_u+c_o) has shifted materially; frozen safety stock calibrations mis-stated — 2026-06-18
- NRF import forecast — June +14.3% YoY (2.25M TEU) then July cliff -8.4%, August -8.6%; tariff pull-forward manufacturing phantom demand signal at port level; planning systems reading June momentum as genuine demand will overshoot H2 buy — 2026-06-18
- RELEX — 10 AI Agents GA launched June 17; M&S Food as reference production customer; Inventory Control, Order Proposal Troubleshooting, Promotion Diagnostics, Store Support, Location Clustering + P&P equivalents; see Deep Dive for full architecture analysis — 2026-06-18
- Manhattan Associates — ~6% workforce cut June 1 + fiduciary investigation ongoing; OMS/WMS platform in restructuring; customer roadmap commitments post-June 1 carry elevated uncertainty — 2026-06-18
- Ralph Lauren Q4 FY26 — inventory +7%, management calls composition "healthy and current," mid-single-digit FY27 revenue growth guide; strategic pull-forward conviction buy — 2026-06-18
- Capri Holdings Q4 FY26 — inventory -17% to $581M, sharpest destocking in peer group; $25M tariff refund (IEEPA ruling) as additional cost reduction; full-price sell-through discipline — 2026-06-18
- Toolio — "Intelligence vs. Judgment" blog (June 16): AI handles intelligence (anomaly surfacing, recaps, exception flagging); humans own judgment (markdown timing, vendor negotiation, assortment bets); cleanest vendor articulation of agentic rung ceiling this week — 2026-06-18
- Section 122 tariff — apparel tariff expires July 24; USTR 60-country forced labor 301 proposed as replacement; comment period closes July 6; 36-day regime uncertainty window July 24–Aug 29; Federal Circuit stay June 11 adds second open variable; two unresolved landed cost inputs simultaneously — 2026-06-18

## Sign-offs Used (rolling 14 days)
<!-- format: line — YYYY-MM-DD -->
- "Three brands spent the quarter proving the model's least flattering claim: the order loop was never the problem." — 2026-06-15
- "Units down, dollars flat — that's not inventory discipline, that's tariffs doing the accounting." — 2026-06-15
- "54% of supply chain leaders want AI to recommend while they decide. Which is exactly what a spreadsheet does — we've just started calling it an agent." — 2026-06-16
- "22% GMV over a human baseline is a headline. That the conformal quantiles fed a simulation instead of a safety-stock formula is the paper." — 2026-06-17
- "The MOU moves the sell-through curve. The buy plan it was built on doesn't know that yet." — 2026-06-18
