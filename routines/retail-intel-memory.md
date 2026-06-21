# Retail Intel — Working Memory
_Last updated: 2026-06-21_

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
- Google Complexity Router (arXiv:2605.24381): feature-based routing assigns 30% of series to FM inference, 70% to lightweight specialists; MASE 0.970 vs. 0.989 for universal FM; heterogeneous demand explicitly classified as specialist-favoring regime; architecture implication: route at ingestion, calibrate threshold in-domain — [forecasting rung / honest boundary] — 2026-06-19
- DeepStock (arXiv:2603.19621): base-stock policy regularizations (monotone ordering + smoothness) as soft priors in DRL training; 100% production deployment on Alibaba Tmall; outperforms classical baselines (EWA, myopic newsvendor, base-stock); RL earns its place only because classical structure is injected as prior — confirms hyperscale-only watchlist stance; refined question is whether you have a working classical layer to regularize against — [RL rung] — 2026-06-20
- Blue Yonder "agent is the app" (ICON 2026) vs. RELEX agents-over-engine: Angove's claim is architecture-agnostic — consistent with agent over solver (right) or agent as solver (dashboard-with-grammar); SI-as-product-feature claim directionally true for config, not for hard integration; verdict: RELEX showed, Blue Yonder told; takeaway — agent is the door to the rung, not the rung itself — [agentic rung] — 2026-06-21

## Headlines & Company Events Covered (rolling 14 days)
<!-- format: entity — one-line — YYYY-MM-DD -->
- Time-series foundation models — Chronos-2 group-attention multivariate explainers proliferating among practitioners — 2026-06-11
- arXiv:2606.04900 — Petropoulos et al. multi-objective forecast combination; Pareto weights for statistical accuracy vs. inventory cost — 2026-06-15
- Gap Inc — Q1 FY26: inventory flat in dollars/units down; ~200bps tariff drag on merchandise margin; EPS beat, guidance raised — 2026-06-15
- Aritzia — Q1 FY27 (Mar–May 2026): 33% revenue growth vs 3% inventory growth; cleanest inventory-to-sales print in peer group — 2026-06-15
- Under Armour — FY26 full year (Q4 reported May 12): inventory $915M (-3%), full-year net loss $496M on -4% revenue $5.0B; "better not just smaller" composition narrative; stock -17% on FY27 guidance signals demand gap not closed — 2026-06-19
- Nike — Q4 FY26 reporting June 30; revenue guided -2–4% (China -20%), gross margin -25–75bps with ~250bps tariff headwind; first two-quarter clean sell-through across all channels; watch full-price mix and China trajectory — 2026-06-21
- Retail sales — May trade +5.2% YoY; post-front-loading consumer bounce holding — 2026-06-15
- arXiv:2506.05941 — XGBoost RMSE 4.833 beats N-BEATS/N-HiTS/TFT on retail data with intermittency and missingness; SAITS imputation closes gap at aggregate levels only — 2026-06-16
- RELEX State of Supply Chain 2026 — 54% prefer AI recommendation + human decision; only 10% trust autonomous AI supply chain decisions; 47% using/planning AI-driven inventory optimization — 2026-06-16
- Blue Yonder ICON 2026 — Inventory Ops Agent GA (supplier order approval workflow, new agentic "skills"); CEO Angove: "agent is the app," SI industry becomes product feature; architecture gap between framing and confirmed solver integration — 2026-06-21
- Adidas Q1 2026 — +14% inventory on World Cup front-load; gross margin 51.1% (-1pp FX/tariffs); ~€250M Q1 + ~€250M Q2 event demand; H2 sell-through test ahead — 2026-06-16
- GLP-1 → apparel size-run allocation — structural demand shift toward smaller sizes making pre-GLP-1 sell-through curves stale at size level; historical allocation signals unreliable — 2026-06-16
- PVH — inventory cost +3% YoY in Q3, ~2pp attributable to tariffs; critical ratio and holding cost math needs updating — 2026-06-16
- Census MTIS April 2026 — retail inventories +0.7%, wholesale +0.5%; March I/S ratio 1.32 vs 1.38 YoY; tariff front-load clearing but dollar figures inflated by unit cost — 2026-06-17
- Syrup Tech — acquired by Anaplan Sept 2025 (coverage gap logged); fashion AI buy planning (Layer 2/3) absorbed into connected planning platform; co-founders joined Anaplan leadership — 2026-06-17
- Afresh — $34M funding April 2026 (coverage gap); scaling from fresh perimeter to center store; 12,500+ depts, 70% YoY revenue growth; Just Climate + High Sage Ventures — 2026-06-17
- invent.ai — 2026 Gartner FAR market guide recognition (short + long lifecycle); "agentic decisioning" blog framing; same caveat as Blue Yonder: agentic UI ≠ real decision math underneath — 2026-06-17
- Toolio — April 2026 update: rolling MFP inventory, in-season retrending, allocation controls; collapses Layer 1/2 gap from batch to live — 2026-06-17
- TSFM-Bench — arXiv:2410.11802 at KDD 2026; first cross-model benchmark across Chronos/TimesFM/Moirai zero/few/full-shot; retrained gradient boosting baseline still missing from most comparisons — 2026-06-17
- Hormuz / freight — US-Iran MOU June 17; mid-June GRIs crystallized: transpacific +40% from pre-conflict baseline, Asia-Europe +20%, Shanghai-Jebel Ali 4×; $3k/FEU emergency surcharges Gulf corridors; Q3 BAF/PSS July 1; buy plans on pre-April unit costs still misstated for H2 — 2026-06-21
- BLS May 2026 — import prices +6.7% YoY, +1.9% MoM; apparel/footwear/household goods accelerating second consecutive month; c_u/(c_u+c_o) ratio shifted materially; frozen safety stock calibrations mis-stated — 2026-06-18
- NRF import forecast — June +14.3% YoY (2.25M TEU) then July cliff -8.4%, August -8.6%; tariff pull-forward phantom demand signal at port level; planning systems reading June momentum as genuine demand will overshoot H2 buy — 2026-06-18
- RELEX — 10 AI Agents GA launched June 17; M&S Food as reference production customer; Inventory Control, Order Proposal Troubleshooting, Promotion Diagnostics, Store Support, Location Clustering + P&P equivalents — 2026-06-18
- Manhattan Associates — ~6% workforce cut June 1 (~260 jobs); Linda Pinne new CFO since March 31; $7–9M Q2 restructuring charges (substantially complete); Rosen Law fiduciary investigation ongoing; OMS/WMS roadmap signals still absent — 2026-06-20
- Ralph Lauren Q4 FY26 — inventory +7%, management calls composition "healthy and current," mid-single-digit FY27 revenue growth guide; strategic pull-forward conviction buy — 2026-06-18
- Capri Holdings Q4 FY26 — inventory -17% to $581M, sharpest destocking in peer group; $25M tariff refund (IEEPA ruling); full-price sell-through discipline — 2026-06-18
- Toolio — "Intelligence vs. Judgment" blog (June 16): AI surfaces exceptions, humans own judgment calls; cleanest vendor articulation of agentic rung ceiling — 2026-06-18
- Section 301 tariffs — CIT struck down May 7 (Section 122), stayed June 11, expiry July 23; USTR Section 301 Forced Labor proposed June 2: 60 economies, 10–12.5%, textile mechanism for US-cotton apparel; hearing July 7, registration deadline June 22, comment close July 6; five simultaneous tariff scenarios for fall landed cost — 2026-06-21
- arXiv:2605.24381 — Google Complexity Router: 30% FM / 70% specialist split, MASE 0.970 vs. 0.989 universal FM; heterogeneous demand classified specialist-favoring regime — 2026-06-19
- Scientific Reports 2026 RL — Sorour et al. multi-objective inventory RL: profit + carbon as independent MDP objectives; PPO/PPG/A2C/DDQN benchmarked; academic result, no production evidence; EU CSRD forcing function to watch — 2026-06-19
- Levi Strauss — Q2 FY26 inventory +15% in costs (half flagged early holiday pull-forward); DC consolidation: Ohio facility sold ($22M), Kentucky closing, shifting owned-and-operated → 3PL mix; Q2 reports July 9; watch for clean frontload vs. markdown pressure — 2026-06-21
- DeepStock arXiv:2603.19621 — base-stock-regularized DRL at 100% Tmall production; hyperscale RL only works with classical prior; first confirmed RL deployment outside Amazon at e-comm hyperscale — 2026-06-20
- arXiv:2603.16815 — "Beyond Accuracy": M5 Walmart benchmarked by newsvendor inventory cost; Temporal CNN/LSTM beat statistical baselines on cost not just error; third paper this month making accuracy ≠ cost ranking — 2026-06-20
- Lululemon CEO Heidi O'Neill — 25-year Nike veteran, Sept 8 start, inherits 15–16 month lead-time target and SKU-rationalization agenda; supply-chain translation question from performance-sport to fashion-cycle — 2026-06-20
- Vuori / Alo athleisure — Vuori Q4 2025 holiday volume below Q4 2024 peak; Alo broadening into outerwear/underwear; tailwind decelerating; historical Lululemon-era sell-through curves increasingly unreliable for peer group allocation — 2026-06-21

## Sign-offs Used (rolling 14 days)
<!-- format: line — YYYY-MM-DD -->
- "Three brands spent the quarter proving the model's least flattering claim: the order loop was never the problem." — 2026-06-15
- "Units down, dollars flat — that's not inventory discipline, that's tariffs doing the accounting." — 2026-06-15
- "54% of supply chain leaders want AI to recommend while they decide. Which is exactly what a spreadsheet does — we've just started calling it an agent." — 2026-06-16
- "22% GMV over a human baseline is a headline. That the conformal quantiles fed a simulation instead of a safety-stock formula is the paper." — 2026-06-17
- "The MOU moves the sell-through curve. The buy plan it was built on doesn't know that yet." — 2026-06-18
- "Google built a router so you'd stop arguing about which model wins. The router's answer is: it depends on the series. You still have to know your series." — 2026-06-19
- "The only thing that made deep RL work at Tmall was putting the newsvendor's ghost inside it. Build the ghost first." — 2026-06-20
- "'The agent is the app' is a clean line. The question is which app — the one that routes to a solver, or the one that used to be a spreadsheet." — 2026-06-21
