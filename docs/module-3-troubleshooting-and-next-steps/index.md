# Troubleshooting & Next Steps

You took one UiBank requirement all the way to a release decision. This section helps you get unstuck and take the same way of working back to your team.

You used three helpers today: **Autopilot** in Test Manager (the buttons and the chat), **Delegate** on your desktop, and **robots** that the trainer provided (Run autonomously and the serverless regression run). See [Introduction](../module-1-introduction/index.md) for the full picture.

## What's inside

✅ **[More Prompts to Try](01-more-prompts.md)** – everyday questions for Autopilot chat and Delegate: standup summaries, coverage checks, failure trends, rerunning failures, and more.

✅ **[Troubleshooting](02-troubleshooting.md)** – fixes for the most common problems with Delegate, Autopilot chat, test runs and reports.

## Taking this to your team

✅ **Test Cloud only:** Autopilot chat and its charts, the Test Manager MCP tools, Execute Manually without a test set, Automate in Studio Web, governance (formal sign-off), the PDF report of a single test result, Find obsolete tests and the autonomous features (Run autonomously and Autonomous Exploration, both Preview) need Test Manager on **Test Cloud**. On the Flex licensing model, chat, charts, Find obsolete tests and autonomous testing aren't available. Before you plan a rollout, check what your tenant has in the <a href="https://docs.uipath.com/test-manager/automation-cloud/latest/user-guide/test-manager-feature-availability-page" target="_blank">Test Manager feature availability</a> table.

✅ **Usage pool and licences:** every Autopilot chat turn and every Delegate task uses your monthly AI and Agentic usage pool. The dedicated Autopilot buttons (Evaluate quality, Generate tests, Import Test Cases, Generate Report) don't. Run autonomously uses the tenant's App Test Platform Units instead. How big your allowance is depends on your user licence and your organization's plan. When the pool is spent, chat and Delegate pause until an admin grants a top-up or the month resets – there's no automatic fallback. See <a href="https://docs.uipath.com/autopilot/other/latest/user-guide/autopilot-usage-pool-for-testing" target="_blank">Autopilot usage pool for testing</a>.

✅ **Edit mode as the safe default:** in Autopilot chat, **Edit** mode shows each tool and waits for your **Accept** or **Reject**. **Agent** mode runs the tools without asking, and the docs label it experimental. Start every new prompt in Edit mode, and keep Agent mode for prompts you've already checked in Edit mode.

✅ **Delegate approval modes:** **Cautious** asks before every operation, **Adaptive** runs read-only actions on its own and asks before anything that writes, changes or runs something, **Full access** never asks. In regulated teams, admins set the approval mode, allowed tools, blocked apps and sites, and models centrally in **Automation Ops** policies, and can lock them so users can't change them. See <a href="https://docs.uipath.com/delegate/standalone/latest/user-guide/centralized-configuration" target="_blank">Delegate centralized configuration</a> and <a href="https://docs.uipath.com/delegate/standalone/latest/user-guide/security-settings" target="_blank">Delegate security settings</a>.

✅ **Secrets:** logins for the application under test belong in Orchestrator Credential assets, never in prompts, test steps or test data.

✅ **Regular runs:** schedule a regression test set in Test Manager (test set → **Execute** → **Create Schedule**). Schedules start automated runs only, not autonomous ones.

!!! note "For admins: give Autopilot chat more tools"
    Today you used the tools that ship with Test Manager. With those standard tools, chat can't start, schedule or stop a run, or create Execution Insights – you used the buttons for that. An admin can add more tools:

    - the **Performance Testing** MCP server, so chat can analyze performance runs
    - MCP servers built in **Orchestrator** (**MCP Servers** → **Add MCP Server**) that expose your own automations or APIs, for example a process that creates test data or test accounts in another application. Some server types, such as the Platform and Swagger MCP servers, are in Preview

    Users then see them in Autopilot chat → ⚙ **Chat settings** → **MCP Servers**, under **From your organization**. The **Automation Ops** Autopilot policy controls which tools, MCP servers and models chat may use. See <a href="https://docs.uipath.com/test-manager/automation-cloud/latest/user-guide/about-autopilot-chat" target="_blank">About Autopilot chat</a> and <a href="https://docs.uipath.com/orchestrator/automation-cloud/latest/user-guide/about-mcp-servers" target="_blank">About MCP servers</a>.

## Where to go next

✅ **Insights dashboards:** with Insights enabled, the ready-made **Test Manager Execution Report** dashboard tracks results across projects and over time. See <a href="https://docs.uipath.com/insights/automation-cloud/latest/user-guide/test-manager-execution-report" target="_blank">Test Manager Execution Report</a>.

✅ **Jira or Azure DevOps:** connect your project to your defect tracker, then **Create Defect** from a failed test case log, and the Dashboard's Open Defects number fills in. See <a href="https://docs.uipath.com/test-manager/automation-cloud/latest/user-guide/defect-synchronization" target="_blank">Defect synchronization</a> and <a href="https://docs.uipath.com/test-manager/automation-cloud/latest/user-guide/connecting-an-azure-devops-project" target="_blank">Connecting an Azure DevOps project</a>.

✅ **Performance and accessibility testing:** Test Manager can reuse automated tests to check how an application behaves under load, and to report accessibility issues. Both build on automations that your automation colleagues create. See <a href="https://docs.uipath.com/test-manager/automation-cloud/latest/user-guide/performance-testing---overview" target="_blank">Performance testing overview</a> and <a href="https://docs.uipath.com/test-manager/automation-cloud/latest/user-guide/accessibility-testing" target="_blank">Accessibility testing</a>.

## Learn more

✅ <a href="https://docs.uipath.com/autopilot/other/latest/user-guide/autopilot-for-testers" target="_blank">Autopilot for Testers</a>

✅ <a href="https://docs.uipath.com/test-manager/automation-cloud/latest/user-guide/about-autopilot-chat" target="_blank">About Autopilot chat in Test Manager</a>

✅ <a href="https://docs.uipath.com/delegate/standalone/latest/user-guide/delegate-for-testing-overview" target="_blank">Delegate for Testing</a>

✅ <a href="https://docs.uipath.com/delegate/standalone/latest/user-guide/features-and-functions-for-testing" target="_blank">Delegate operations for testing</a>

✅ <a href="https://docs.uipath.com/test-manager/automation-cloud/latest/user-guide/autonomous-test-execution" target="_blank">Autonomous test execution (Preview)</a>

✅ <a href="https://docs.uipath.com/test-manager" target="_blank">Test Manager documentation</a>

---

[Next → More Prompts to Try](01-more-prompts.md){: .md-button .md-button--primary}

---
