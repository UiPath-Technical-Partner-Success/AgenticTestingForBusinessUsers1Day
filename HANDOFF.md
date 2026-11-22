# HANDOFF – Agentic Testing for Business People guide

Working notes for whoever continues the guide. The full plan and research live outside this repo, in the workshop folder: `PLAN.md`, `PROGRESS.md` (resume point), `findings/verification.md` (live checks on the staging tenant) and `findings/research/` (`course-design-outline.md`, `reuse-map.md`, `claims-check.json`, `docs-facts.json`).

## Status (2026-11-22)

Phase 2 is done: the site is scaffolded and builds with `mkdocs build --strict`. **No page is finished yet.**

- Pages copied from the technical guide (PR 1, commit `19079ac`) are starting drafts. Each starts with a `<!-- PHASE3: adapt per reuse-map … -->` comment that names its reuse-map and outline sections. They still contain technical content (Studio Desktop, Claude Code, coding agents, the `uip` CLI, the Object Repository, per-learner folders) that phase 3 must remove or rewrite.
- New pages (steps 5, 6 and 8) are stubs: H1, one purpose line and a `<!-- PHASE3: write per outline … -->` marker.
- Links to removed pages were pointed at their replacements so the build passes. Some link texts and anchors now point at sections phase 3 will rewrite, for example "Link the test cases to the package" in Troubleshooting. Re-check every link when the pages are written.

## Page map

| Page | Source in PR 1 | State |
|---|---|---|
| `index.md` | `index.md` | draft – wf-map links updated to the 9 steps; text, phases, objectives still technical |
| `module-0-prerequisites/index.md` | same | draft – still has Studio, coding agent and learner folder sections |
| `module-1-introduction/index.md` | same | draft – needs "Which helper when", MCP teaser |
| `01-import-and-meet-autopilot-chat.md` | `01-import-tm-project.md` | draft – "Check it with your coding agent" to replace with "Meet Autopilot chat" |
| `02-evaluate-requirements.md` | same | draft (KEEP almost as is) |
| `03-generate-test-cases.md` | `03-generate-test-cases.md` | draft – add PDD box (from step 4 draft) and Excel import box |
| `04-run-the-test-three-ways.md` | `04-run-manual-tests.md` | draft – also holds the PR 1 Autonomous Exploration and PDD text: move them to steps 5 and 3 |
| `05-compare-the-runs.md` | – | stub |
| `06-automate-with-studio-web.md` | – | stub |
| `07-build-and-run-the-regression-set.md` | `07-create-test-set.md` | draft – serverless only, chat + MCP box, run and triage parts from PR 1 `08` |
| `08-read-the-results.md` | – | stub |
| `09-decide-go-no-go.md` | `08-run-and-report.md` | draft – keep report, defect, routine; add browser path and governance box |
| `you-did-it.md`, module 3 pages, `trainer-setup.md` | same (prompts page renamed `01-more-prompts.md`) | drafts |
| `includes/system-requirements.md` | same | **unchanged** – still lists Studio and `cloud.uipath.com`; simplify per reuse-map §2 "Includes" |

## Assets

- Kept: CSS/JS, hooks, the PDD, the sample project zip, 32 images (reuse-map KEEP list, Trainer Setup `OC *` images, two hero robot images for decoration).
- Added: `docs/assets/Files/UAT Scripts/UiBank Regression Tests.xlsx` for the optional "Bring your Excel UAT scripts" box in step 3 (verification item 14). Not linked from any page yet.
- Dropped: Object Repository `.nupkg` files, all `Studio *`, `Object Repo*`, `testExplorer`, `TExpl listing`, `Use Application properties`, `New Test Automation Project`, `UiBank Highlight`, `custom library listing`, `Manage packges settings` and the mobile hero image; `raw-content/`, the PR 1 `CLAUDE.md` and its HANDOFF history.
- `TM Test Cases Studio Project.png` is kept only for a possible Package Name check in step 6. It shows a Studio project: retake or delete it.
- CSS: new `.persona-badge--ba/--uat/--qa/--all`, `.tool-badge--autopilot/--testmanager/--robot/--trainer`, and a `.step-meta` line (usage example in the CSS comment). `--studio` is renamed `--studioweb` for both the tool badge and the flow-strip part.

## Open items

From `findings/verification.md` ("Blockers and caveats"):

1. **The sample `.tmh` still pre-fills Name "UiBank Project", Prefix "UIBWS" and a description that mentions coding agents** (blocker 9). Re-exporting a business-version `.tmh` is a later tenant task. Until then, step 1 should tell learners what to type in those fields. Imported results also show the original executor's name: crop screenshots.
2. Learner minimum rights are not proven: the learner test account sits in a group with tenant-level admin roles (blocker 1). Decision pending with the workshop owner; re-check in phase 5.
3. Delegate + CLI sign-in not tried on a learner laptop (blocker 3). Copy-paste commands are in verification item 2.
4. Chat Edit mode asks for one approval per tool call, reads included (blocker 4). Tell learners up front.
5. Prompt fixes (blocker 5): the first docs prompt gets a wrong answer; "failed grouped by requirement" needs the word "chart"; "distribution by label" doesn't chart.
6. Execute Manually window (capture, attachment) not verified (blocker 7).
7. Imported executions are 3 years old: the Dashboard and "last N days" Insights ignore them (blocker 8).
8. The shared robot is a Cloud Robot – VM pool with a 9-minute cold start and about 6 minutes per autonomous run (blocker 2). Trainer Setup needs the day-before settings from verification.md.

## Rules for writers

- En dashes (–) only, never em dashes. docs.uipath.com links only. Never "Test Product". No Claude Code, coding agents or Studio Desktop. `uip` only in the one-time "Connect Delegate to Test Manager" step.
- No personal names and no real email addresses in text or screenshots. Use `<ORG>/<TENANT>` placeholders.
- Keep `mkdocs build --strict` green; anchor checks are on (`validation.links.anchors: warn`).
- `docs/assets/js/mermaid.min.js` is a third-party library and contains em dashes: exclude it from the em dash grep.

## Phase log

| Date | Phase | What changed |
|---|---|---|
| 2026-11-22 | 2 – scaffold | Site created from PR 1 `19079ac`: config retitled, 9-step nav, drafts + stubs, persona badge CSS, requirements file, deploy workflow, README, this file. Strict build passes. One local commit, nothing pushed. |
