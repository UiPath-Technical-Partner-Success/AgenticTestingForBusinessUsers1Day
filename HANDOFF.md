# HANDOFF – Agentic Testing for Business People guide

Working notes for whoever continues the guide. The full plan and research live outside this repo, in the workshop folder: `PLAN.md`, `PROGRESS.md` (resume point), `findings/verification.md` (live checks on the staging tenant) and `findings/research/` (`course-design-outline.md`, `reuse-map.md`, `claims-check.json`, `docs-facts.json`).

## Status (2026-11-22)

Phase 5 is done (2026-11-22): learner rights proven with a learner-only account, steps 1–9 rehearsed live and timed as a learner (project **UiBank AS / UIBAS**), every page fixed against what really happened, 21 screenshots added. Phase 6 done the same day: phase 5 gaps fixed, `main` pushed, repo description set, deploy workflow green (`gh-pages` exists). Pages itself is not switched on yet (Settings → Pages → `gh-pages`). Still unverified: Delegate and `uip` on a real learner laptop.

## Phase 5 rehearsal results (2026-11-22)

Scripted learner pass on staging Playground with the learner test account (personal Chrome profile), after removing it from Automation Developers. Full log: side-session notes folder, `phase-5-fixes-log.md` and `phase-5-timelog.txt` (outside the repo); rights evidence in `../findings/verification.md` → "Phase 5 – learner rights".

| Step | Rehearsal time (one learner, no reading) | Result |
|---|---|---|
| 1 | 8 min (import 2.5 min) | all checks pass; prompt 3 may ask for one Get_test_cases approval |
| 2 | 3 min net (evaluation 1 min) | **Add to Requirement / status = 403 for learners** (rights page) – workaround written; requirement edit works |
| 3 | 4 min (generation 1 min) | Submit Over-65 Request generated with the right name and data |
| 4 | 7 min | Run autonomously starts (type **Autonomous**, not Manual); Execute Manually labels confirmed (Set Passed Till Here, Upload attachment, Capture screen, Condition met, Done); Delegate not run (by design) |
| 5 | 5 min reading | Robot Logs tab confirmed; over-65 robot runs ended after step 1 – see "Run autonomously over-65" below |
| 6 | 4 min (3 links) | search box matches test case names only – Package filter documented |
| 7 | 7 min core + 3 min schedule | 2/1/0 in 40 s; chat write tools work; triage = UiBank defect |
| 8 | 6 min | coverage = **Partially tested**; failures chart = count per requirement; table prompt works; Insights + PDF |
| 9 | 1 min (Path B) + 3 min governance | NO-GO with criterion and release condition; learner self-approval and Sign work |

Agenda in `trainer-setup.md` now shows these times and the planning factor for 15 learners.

**Rights (proven):** licence App Test Developer; tenant **Allow to be Automation User** and TM **Project Creator** through the learner group; workshop folder **Automation User** + a folder role with subfolder **View** (`SubFolders.View`) – without it the Default Folder shows "Folder does not exist." after a reload. Written into Trainer Setup → Proven minimum rights.

**Run autonomously over-65:** four runs of UIBAS:10. Run 1 (Url `/loans/apply`) and runs 2–3 ended in about a minute with step 1 Failed and "Verification could not be completed (HttpRequestException)". Cause found: the panel saves its Url into the test case's **Manual Steps → URL** field and pre-fills it; typing into the pre-filled field appended (`…/loans/applyhttps://…`). Guide now uses `https://uibank.uipath.com` and says to clear the field first. A control run of ATBL:2 (URL pre-filled correctly) ran normally. Runs 4–6 (clean URL, step 1 reworded, pre/postcondition removed) failed the same way, while imported test cases (ATBL:2, UIBAS:2) ran 6–8 min and passed. **Cause found:** the imported cases have **no expected results**; every step that has one triggers the TM behaviour verification, which returned "Verification could not be completed (HttpRequestException)" on this staging tenant for learner and admin runs alike – a service issue, not rights, URL or wording. With expected results only on the decision step, the Trainer Demo run (ATBT:9) passed steps 1–10 and marked the decision step **Failed**, with Autopilot's comment "The result page displays the decision message: Congrats! You've been approved…" and the approval screenshot (`atb-05-autonomous-decision-step.jpg`). Trainer Setup now has a behaviour-verification check for the day before and this backup recipe.

## Phase 4 review summary (2026-11-22)

Workflow `atb-phase4-review`: three Opus reviewers (high effort) with separate lenses, then Opus skeptics (medium) that tried to refute each finding. One Opus fixer applied the confirmed findings (the skeptic's corrected fix where it gave one).

| Lens | Findings | Confirmed | Refuted | Fixed | Deferred |
|---|---|---|---|---|---|
| Accuracy (labels, Preview, licensing, unverified items) | 12 | 12 | 0 | 12 | 0 |
| Business-learner usability | 13 | 13 | 0 | 13 | 0 |
| Coverage and trainer readiness | 13 | 13 | 0 | 13 | 0 |
| **Total** | **38** | **38** | **0** | **38** | **0** |

Severity: 1 high (coverage-1 – no test data for the trainer's automations), 17 medium, 20 low. Skeptics corrected the proposed fix in 30 cases (for example Find obsolete tests lives under **Assign test case**, not **+ Optimize coverage**). Nothing was deferred, but several fixes are hedged until phase 5 confirms the label (list below). Full findings JSON: the side-session notes folder, `phase-4-review-findings.json` (outside the repo).

Main changes:
- **Trainer Setup:** Max number of VMs is now the capacity lever for Run autonomously (extra runtimes run background processes only, per the Cloud Robots VM docs); test data table for the four automations (50000 / 3 / 90000, ages 34 / 17 / 66; High-Volume 150000 / 3 / 500000); trainer account needs; step 6 live demo script (a separate Tests project, never re-publish UiBank.BusinessTests); Basic or trial pool warning; offline copies and backup tenant; Runtime license row; Publish **Shared** (to confirm); only Autonomous Exploration needs Windows; "Most steps were checked" instead of "Every step".
- **Step 3:** the over-65 test case uses the same data as the trainer's automation.
- **Warnings before the click:** Run only once (step 4), governance moved before Run the set (step 7), signature warning before Sign (step 9).
- **Step 4:** postcondition (**Condition Met**), runtime type explained, the Standard Loan fallback explained. **Step 5:** Robot Logs tab, how to spot the robot's run. **Step 8:** coverage chart and failures prompt answers loosened until phase 5. **Step 9:** "restricted" removed.
- **Prerequisites:** neutral Delegate model hint (no model name), Adaptive with an optional Smart mode / Smart approvals, pop-up click path, Orchestrator explained.
- **Rendered fix:** dropped the custom `mermaid-init.js`, which threw a console error on the Prerequisites diagram. Material's built-in Mermaid support renders it with the local `mermaid.min.js`.

## Phase 5 live checks – status (2026-11-22)

| # | Item (from phase 4) | Status |
|---|---|---|
| 1 | Delegate **Smart mode / Smart approvals** label; recapture `Delegate model selector.png` | **not checked** – Delegate not installed on this Mac by design; laptop check |
| 2 | Manual assistant postcondition control | **confirmed**: checkbox **Condition met** (ticked by default) + **Done**, no Next; window closes itself |
| 3 | **Robot Logs** tab | **confirmed** (tabs Logs / Robot Logs / Execution details / Affected requirements) |
| 4 | Step 8 coverage label and failures answer | **confirmed**: **Partially tested 1**; failures chart = bar chart + count per requirement |
| 5 | Studio Web Publish **For me / Shared**, default Location | from phase 1 (trainer): **For me / Shared**, Location default **Orchestrator Autopilot Feed**; not re-run (trainer demo only) |
| 6 | Trainer publisher role and TM project admin role labels | **confirmed** on the tenant: **Allow to be Automation Publisher** (tenant), **Automation Publisher** (folder); project roles **Project Owner / Test Manager / Viewer / Test Manager Administrator** |
| 7 | **Max number of VMs** parallelism; serverless capacity with several learners | **not tested** – needs a pool change that costs Platform Units (not allowed); one VM runtime queued runs one after another as expected. Serverless parallel runs not measured |
| 8 | Find obsolete tests location | **confirmed**: under both **+ Optimize coverage** and **Assign test case ▾** |
| 9 | "If UiBank fixed the over-65 defect" switch | **kept as an untested emergency path** (UiBank still has the defect) |

## Page map

| Page | State |
|---|---|
| `index.md` | written – story, three helpers, wf-map (4 phases, 9 steps), persona flip-cards, objectives, latest-features box |
| `module-0-prerequisites/index.md` | written – sign-in, licence check, Assistant + Delegate (Windows/macOS tabs), one-time **Connect Delegate to Test Manager** (`uip`), ready checklist |
| `module-1-introduction/index.md` | written – Test Cloud, Test Manager, "Which helper when", buttons vs chat (pool), MCP teaser, Test Cloud only note, rule for today |
| `01-import-and-meet-autopilot-chat.md` | written – import (what to type instead of the `.tmh` defaults), Default Folder, Autopilot in Edit mode, prompt 1 as a "check the answer" moment |
| `02-evaluate-requirements.md` | written |
| `03-generate-test-cases.md` | written – **Submit Over-65 Request** naming, Excel import box, PDD + Delegate box |
| `04-run-the-test-three-ways.md` | written – Run autonomously (two screens, Preview) first, Execute Manually, Delegate |
| `05-compare-the-runs.md` | written – comparison, step wording fix, trainer demo of Autonomous Exploration (Preview) |
| `06-automate-with-studio-web.md` | written – trainer demo, learners link 3 test cases with Select Automation |
| `07-build-and-run-the-regression-set.md` | written – MCP box, chat labels + set, Configure Automation (**Cloud - Serverless Testing**), 2/1/0, triage, optional schedule and governance pointer |
| `08-read-the-results.md` | written – Dashboard, requirement view, chat charts, Execution Insights, execution PDF |
| `09-decide-go-no-go.md` | written – Delegate path and browser path, one-page template, governance box, NO-GO |
| `you-did-it.md`, module 3 pages | written |
| `trainer-setup.md` | written – tenant, licences, folder, Cloud Robot – VM pool and serverless machine, package build, backups, pre-warm, day-before checklist |
| `includes/system-requirements.md` | simplified – browser + extension, Assistant + Delegate, tenant URL from the trainer, uibank.uipath.com, download.uipath.com, npm registry |
| `README.md` | business workshop description, local run |

## Assets

- New screenshots (from `findings/evidence/`, cropped to the side panel so no names, initials or project keys show): `atb-04-run-autonomously-setup.jpg`, `atb-04-run-autonomously-configure.jpg`, `atb-06-automate-in-studio-web-panel.jpg`, `atb-07-configure-automation-serverless.jpg`. Uncropped originals are not in the repo.
- Removed: `Attachments in TM.png`, `TM Quality enhancements.png`, `TM Generated test cases.png` (showed a personal name) and 11 unreferenced leftovers (`OC Enterprise setup`, `OC Machine more actions`, `OC Manage access user`, `OC Runtime App Testing`, `OC Runtime Testing`, `TM Add Test Cases Static`, `TM Smoke Set Execution Result`, `TM Test Cases Studio Project`, `TM Test Set Configure Automation`, two hero robots). All are recoverable from commit `285b56b`.
- `UAT Scripts/UiBank Regression Tests.xlsx` is linked from step 3.

## Images (phase 5)

21 screenshots captured as the learner account on 2026-11-22 (`docs/assets/images/atb-0x-*.jpg`), cropped and redacted (no names, emails, initials or tenant name; an agent viewed every image). The Introduction reuses `atb-01-autopilot-panel.jpg`.

Still to capture (`grep -rn "<!-- IMG" docs`):
- Step 4: Execution list with the manual and the Delegate run (needs a Delegate run on a laptop).


## Open items – status after phase 5

1. **Learner minimum rights** – **proven** (Trainer Setup → Proven minimum rights). Still untested: a **group** folder assignment in the Default Folder picker (direct assignment used).
2. **Delegate + `uip` on a real laptop** – **still unverified – to be verified on a learner laptop** (not installed on this Mac by design, to protect the trainer's own `labs` profile). Includes the Smart mode label and a new `Delegate model selector.png`.
3. **Over-65 Run autonomously result** – **answered**: the decision step is marked Failed with the approval screenshot (Trainer Demo run on 2026-11-22). Open: TM behaviour verification fails with HttpRequestException on staging for every step with an expected result – report to UiPath; Trainer Setup has the check and the backup recipe.
4. **Execute Manually window** – **confirmed** (labels in step 4).
5. **Prompts** – step 1, 7, 8 and 9 prompts run live and written to match. Not run: More Prompts, the step 7 optional failed-logs tip, the Delegate prompts.
6. **Learner read access to the Trainer Demo project** – label **Viewer** confirmed in Manage Access lists, but **not assigned** (needs the admin's browser; the CLI can't write project permissions). Trainer Setup: assign Viewer or use the projector.
7. **Governance as a learner** – **confirmed** (self-approver, Governed toggle, In review, Sign).
8. **Schedule labels** – **confirmed** (Repeat Daily, start tomorrow, De-activate → Inactive; schedule left Inactive in UIBAS).
9. **Studio Web Publish default location** – Orchestrator Autopilot Feed (phase 1); the text keeps "the default is not the one Test Manager reads".
10. **Reference execution PDF** – **regenerated** 2026-11-22 from ATBT run 20261122.0852: the requirement section lists ATBT:1, :2 and ATBT:9 (Failed); no emails. Local only: `../findings/evidence/P5-reference-execution-report.pdf`.
11. **Cloud VM capacity** – not tested (cost); see item 7 in the table above.
12. The sample `.tmh` still pre-fills old values – unchanged; step 1 tells learners what to type.
13. **Step 2 suggestion buttons (403)** – **resolved by routing**: only suggestions made by the **+ Evaluate quality** button fail (`PATCH …/llmactivity` 403); suggestions made through Autopilot chat (prompt + **Review**) can be applied and their status changed, in UIBAS and ATBL (204, "Suggestion added to the requirement."). Step 2, Troubleshooting and Trainer Setup send learners to the chat route. No tenant role change made.
14. **Trainer UI tasks** – done on 2026-11-22 with Victor's work browser: learner account given the **Viewer** project role on ATB Trainer Demo (project role list seen: Project Owner, Test Manager, Manual Tester, Test Designer, Test Executor, Viewer, Performance Tester, Test Governance Manager); orphan execution deleted; Edit Pool screenshot added (`atb-trainer-edit-pool-vm-runtime.jpg`); ATBT:9 got 11 manual steps (it had none) and a Trainer Demo Run autonomously ran (steps 1–10 Passed, decision step Failed with the approval screenshot) – it is the step 5 backup.

Decisions taken in phase 3 (Victor: ask only for critical things):
- Prompt 1 kept as a "check the answer" moment, not replaced.
- By-label chart replaced with a table prompt.
- Delegate model hint: changed in phase 4 to "keep the default or recommended model" (no model name), so the guide does not go stale.
- Windows on ARM line dropped (not in Delegate docs); "local admin" became "rights to install apps, or ask IT".
- "Test Cloud only" labels added for Execute without a test set, Automate in Studio Web, governance, single-log PDF.
- Orchestrator MCP servers: GA, with "some server types are in Preview" (prod docs).
- The "Organize test cases in bulk" Delegate box from PR 1 step 4 was dropped, not moved to More Prompts.
- Home has a one-line agenda only; the full agenda is on Trainer Setup until phase 5 timings exist.

## Rules for writers

- En dashes (–) only, never em dashes. docs.uipath.com links only. Never "Test Product". No Claude Code, coding agents, Studio Desktop or Object Repository. `uip` only in the Prerequisites "Connect Delegate to Test Manager" step and in Troubleshooting.
- No personal names and no real email addresses in text or screenshots. Use `<ORG>/<TENANT>` placeholders.
- Keep `mkdocs build --strict` green; anchor checks are on (`validation.links.anchors: warn`).
- `docs/assets/js/mermaid.min.js` is a third-party library and contains em dashes: exclude it from the em dash grep.

## Phase log

| Date | Phase | What changed |
|---|---|---|
| 2026-11-22 | 2 – scaffold | Site created from PR 1 `19079ac`: config retitled, 9-step nav, drafts + stubs, persona badge CSS, requirements file, deploy workflow, README, this file. Strict build passes. One local commit, nothing pushed. |
| 2026-11-22 | 3 – write | All pages and the include written; integration, completeness critic and fix passes; 4 cropped screenshots added, 14 images removed; strict build and grep gates pass. One local commit, nothing pushed. |
| 2026-11-22 | 4 – review | Build, link, external link and grep checks; 3 reviews (38 findings, all confirmed by skeptics, all fixed); neutral Delegate model hint; mermaid init fix; rendered check at desktop and phone width. One local commit, nothing pushed. |
| 2026-11-22 | 5 – rehearsal | Learner out of Automation Developers; minimum rights proven (SubFolders.View added via the ATB Workshop Learner folder role); steps 1–9 rehearsed and timed as a learner; all pages fixed to match; 21 screenshots; REHEARSE comments removed; agenda times; reference PDF regenerated. One local commit, nothing pushed. |
| 2026-11-22 | 6 – publish | Gaps fixed (step 2 chat route; behaviour verification finding and Trainer Demo backup run; Viewer role; 3 more screenshots). Pushed to `main`, description set, deploy workflow green. Pages not switched on. |
