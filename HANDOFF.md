# HANDOFF – Agentic Testing for Business People guide

Working notes for whoever continues the guide. The full plan and research live outside this repo, in the workshop folder: `PLAN.md`, `PROGRESS.md` (resume point), `findings/verification.md` (live checks on the staging tenant) and `findings/research/` (`course-design-outline.md`, `reuse-map.md`, `claims-check.json`, `docs-facts.json`).

## Status (2026-11-22)

Phase 4 is done (2026-11-22): strict build, internal link and anchor check (0 broken), external link check (every docs.uipath.com URL is in the official sitemaps) and grep gates pass; three independent reviews ran, every finding went through a skeptic, and one fix pass applied the confirmed ones. Rendered check done at desktop and phone width (Home, Prerequisites, steps 4, 7, 8, Trainer Setup). Next is phase 5 (timed rehearsal on the tenant).

Phase 3 recap: every page written by 7 parallel writers, one integration pass, one completeness critic (18 gaps) and one fix pass.

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

## Phase 5 must check live (added in phase 4)

On top of the 12 open items below:
1. The Delegate **Smart mode** / **Smart approvals** label (Prerequisites step 6). Recapture `Delegate model selector.png` without a model name if possible.
2. The manual execution assistant's postcondition control (**Condition Met**, step 4 item 7).
3. The **Robot Logs** tab name for the autonomous run (step 5).
4. Step 8 coverage chart: **Fully** or **Partially tested** after a real learner run; the failures prompt answer (list or table).
5. Studio Web Publish: **For me / Shared** choice and the default Location on the class tenant.
6. Trainer publisher role label and the Test Manager project administrator role label (Trainer Setup, rights warning).
7. **Max number of VMs** really parallelises Run autonomously (replaces open item 11's runtime question); serverless capacity with several learners running the set at once.
8. Find obsolete tests under **Assign test case** on the requirement page (More Prompts).
9. The "If UiBank fixed the over-65 defect" High-Volume switch box: rehearse it, or keep it as an untested emergency path.
Remove each hedge or `<!-- REHEARSE -->` comment once confirmed.

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

## Image placeholders to capture in phase 5 (26)

`grep -rn "<!-- IMG" docs` lists them with what to capture. Capture as the learner-like account, crop header initials, executor names and signer names/emails.

| Page | Placeholders |
|---|---|
| Trainer Setup | Edit Pool → VM & runtime details |
| Introduction | Autopilot chat panel in Edit mode |
| Step 1 | Import dialog with replaced fields; Project Settings → Automation → Default Folder; Autopilot panel in Edit mode with footer |
| Step 2 | Dashboard → Attachments; requirement page with + Evaluate quality and Quality enhancements |
| Step 3 | Generated test cases under Latest activity; Submit Over-65 Request manual steps |
| Step 4 | ⋮ menu with Execute Manually / Execute Autonomously; manual execution assistant with Failed step; Execution list with manual + Delegate runs Failed |
| Step 5 | Autonomous run Logs tab; Autonomous Exploration Scenarios tab |
| Step 6 | Select Automation panel (Tenant Package Feed, incl. empty TestCase); Automation tab after Save; Test Cases list with Package Name |
| Step 7 | MCP Servers → Test Manager MCP server; Bulk_add_labels tool card; regression execution 2/1/0 |
| Step 8 | Dashboard Results Overview; coverage pie chart; Generate Report menu + Reports tab; Download Pdf menu |
| Step 9 | Chat go/no-go answer; Sign test case panel |

## Open items (re-check in phase 4 review or phase 5 rehearsal)

Unverified on the tenant – written from docs or PR 1, marked in the text where it matters:
1. **Learner minimum rights** (blocker 1) – the guide claims no minimum roles; Trainer Setup gives Automation User (direct folder assignment) and flags the re-check. Also untested: a **group** folder assignment showing the folder in the Default Folder picker.
2. **Delegate + `uip` on a real laptop** (blocker 3) – install, `uip login`, "quit and reopen Assistant", `uip --version`, Mac extension path, Behavior preferences Tone/Depth labels, sign-in URL shape.
3. **Over-65 Run autonomously result** – learner checks ran Standard / Underage / High-Volume only. Step 4 says it "should" mark the age step Failed; check the URL (`/loans/apply` vs home page). Create a Trainer Demo autonomous over-65 run as the step 5 fallback (Trainer Setup pre-warm now lists it).
4. **Execute Manually window** (blocker 7) – capture / upload labels; a one-case test set fallback is in step 4.
5. **Prompts not run live**: "Show a chart of failed test cases grouped by requirement." and the table prompt that replaces the by-label chart (two `<!-- REHEARSE -->` comments in step 8); all of More Prompts; the step 7 optional failed-logs tip; the Delegate repro prompt with `<PROJECT_PREFIX>`.
6. **Learner read access to the Trainer Demo project** – Trainer Setup suggests a project **Viewer** role (label to confirm); projector fallback.
7. **Governance as a learner** – self as Default approver, then toggle Governed on an existing log.
8. **Schedule labels** – save and deactivate one learner schedule (Recurrence daily 06:00 and the Advanced cron).
9. **Studio Web Publish default location** – the text avoids naming the default.
10. **Reference execution PDF** lists only the Standard and Underage cases under the requirement (the trainer's over-65 case was not linked at run time) – link it and regenerate the PDF before using it as a backup.
11. **Cloud VM capacity** – Trainer Setup now uses Max number of VMs as the lever (phase 4, per the Cloud Robots VM docs). Test that it parallelises before the class.
12. The sample `.tmh` still pre-fills "UiBank Project / UIBWS" and a coding-agents description (blocker 9) – step 1 tells learners what to type; re-export a business `.tmh` later.

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
