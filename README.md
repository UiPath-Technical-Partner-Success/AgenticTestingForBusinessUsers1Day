# Agentic Testing for Business People – Hands-On Workshop Guide

The learner's handbook for a 1-day, instructor-led UiPath Test Cloud workshop for business users: business analysts (BA), UAT (User Acceptance Testing) testers and QA (Quality Assurance) managers. It's an MkDocs Material site.

Learners take one UiBank loan requirement from a vague rule to a release decision: evaluate the requirement, generate test cases, run the over-65 test three ways (yourself, Delegate, a robot), link Studio Web automations, build and run a regression set, read the reports, and decide go or no-go. The helpers are Autopilot in Test Manager (buttons and chat), Delegate on the learner's desktop, and test robots provided by the trainer. No Studio install and no coding.

| Phase | Steps | What learners do |
|---|---|---|
| Prepare | 1–3 | Import the project, meet Autopilot chat, evaluate the requirement, generate test cases |
| Run | 4–5 | Run the over-65 test case yourself, with Delegate and autonomously, then compare the runs |
| Automate & organize | 6–7 | Link test cases to a Studio Web package, build and run a regression set with Autopilot chat |
| Decide | 8–9 | Read the dashboard, charts and Execution Insights, then decide go or no-go |

The workshop runs on a Test Cloud tenant with the latest features. Learners need a browser and UiPath Assistant with Delegate; the trainer prepares the shared folder, the robots and a Studio Web package. The trainer checklist is in the guide: [Trainer Setup](docs/trainer-setup.md).

## Run it locally

You need Python 3.

macOS or Linux:

```bash
python3 -m venv .venv
.venv/bin/pip install -r requirements.txt
.venv/bin/mkdocs serve
```

Windows: double-click `start-guide.bat`. The first run creates the virtual environment and installs the requirements, then it starts the site and opens your browser. By hand, in PowerShell:

```powershell
python -m venv .venv
.venv\Scripts\pip install -r requirements.txt
.venv\Scripts\mkdocs serve
```

Then open http://127.0.0.1:8000.

Before you push, run `mkdocs build --strict`: it fails on broken links and anchors.

## How it's organized

| Folder | Content |
|---|---|
| `docs/module-0-prerequisites/` | Laptop, accounts, and installing and connecting Delegate |
| `docs/module-1-introduction/` | Test Cloud, Test Manager, Autopilot and Delegate in plain words |
| `docs/module-2-hands-on-workshop/` | The 9 hands-on steps |
| `docs/module-3-troubleshooting-and-next-steps/` | More prompts to try and fixes for common problems |
| `docs/trainer-setup.md` | Tenant, folder, robots and the day-before checklist |
| `docs/assets/` | Images, CSS, scripts and downloadable files |
| `hooks/` | MkDocs hooks: cache busting, new-tab links in the requirements list, step-number badges in the menu |
| `includes/` | Shared snippets (the system requirements list) |

The navigation is in `mkdocs.yml`. Pushing to `main` deploys the site to GitHub Pages through `.github/workflows/deploy.yml`.
