# 1. Import Your Project and Meet Autopilot Chat

<p class="step-meta">Leads: <span class="persona-badge persona-badge--all">All</span> · Tools: <span class="tool-badge tool-badge--testmanager">Test Manager</span> <span class="tool-badge tool-badge--autopilot">Autopilot chat</span></p>

<div class="flow">
  <a class="flow-step" href="#download-the-project-file">Download the project file</a>
  <span class="flow-arrow"></span>
  <a class="flow-step" href="#import-it-into-test-manager">Import it into Test Manager</a>
  <span class="flow-arrow"></span>
  <a class="flow-step" href="#link-the-project-to-the-workshop-folder">Link the workshop folder</a>
  <span class="flow-arrow"></span>
  <a class="flow-step" href="#open-autopilot-chat">Open Autopilot chat</a>
  <span class="flow-arrow"></span>
  <a class="flow-step" href="#ask-your-first-three-questions">Ask your first three questions</a>
</div>

**Why it matters for you:** you get your own copy of the UiBank release project, and a chat assistant that answers questions about it in seconds instead of clicking through every page.

You start from a ready-made **UiBank** project: one requirement, six test cases, a test set, past results and attachments. Start the import as soon as you arrive – it runs in the background while the trainer introduces the day.

## Download the project file

1. Download <a href="../../assets/Files/Test%20Manager%20Project/Agentic%20Testing%20Workshop%20-%20Sample%20Test%20Manager%20Project.zip" target="_blank">Agentic Testing Workshop - Sample Test Manager Project.zip</a>.
2. Unzip it. You'll import the `.tmh` file inside.

## Import it into Test Manager

1. Open **Test Manager** in the workshop tenant, `<ORG>/<TENANT>`. Your trainer gives you the link.
2. On **Projects**, select **Import project**, then **Add file** and select the `.tmh` file. Keep **Target: New project**.
3. The file fills in a name, a prefix and a description. Replace all three, so your project is unique on the shared tenant:

    | Field | Pre-filled | Type instead |
    |---|---|---|
    | **Name** | UiBank Project | `UiBank` plus your initials, for example `UiBank AS` |
    | **Prefix** (the project key) | UIBWS | `UIB` plus your initials, for example `UIBAS` |
    | **Description** | a sentence about the original technical workshop | `Loan application tests for the UiBank 2.4 release decision.` |

    Use initials, not your full name: everyone on the tenant sees the project list.

4. Clear **Include automation information for test cases** (it's checked by default). Leave **Import governance information** and **Import project configuration** cleared.
5. Select **Import**, then **OK** when the upload completes.

<!-- IMG: Import project dialog with the three fields replaced (Name "UiBank AS", Prefix "UIBAS", business description) and "Include automation information for test cases" cleared – no personal names in the tenant header -->

!!! warning "Important"
    ✅ Clear **Include automation information for test cases** before you select **Import**.

    ✅ The import runs in the background and takes 3–15 minutes (about 3 minutes in rehearsal), longer when the whole class imports at once. Refresh **Projects** until your project card shows **Created on** instead of **Import in progress…**. Don't link the folder or open Autopilot chat before then.

    ✅ Don't see your card? Search for your project name on **Projects**. The project **Dashboard** may show **No results**: the imported results are older than its date range. You'll see your own results there from step 4 on.

??? info "Who ran the old tests?"
    The imported results keep the name of the person who ran them originally, under **Executed By**. That's history from the sample project, not a person on your team.

## Link the project to the workshop folder

To run tests on robots later today, Test Manager needs to know which **Orchestrator folder** to use. Orchestrator is where the robots live; your trainer set up one shared folder for the class.

!!! example "It's your turn now!"
    1. In your project, go to **Project Settings** and open the **Automation** tab.
    2. Set **Default Folder** to the folder your trainer gives you: in this workshop, **ATB - Agentic Testing Workshop**. Type part of its name to filter the list.
    3. Click **Save**.

<!-- IMG: Project Settings → Automation tab with Default Folder = ATB - Agentic Testing Workshop (crop the tenant header and initials) -->

!!! failure "Skipped this step?"
    Robot runs fail with `HTTP 400: Please assign folder to project level before executing testcases.`

    The workshop folder isn't in the **Default Folder** list? You're not assigned to it yet. Ask your trainer.

## Open Autopilot chat

**Autopilot chat** is an assistant inside Test Manager. You ask in plain words; it reads your project, searches the documentation, builds charts and – with your approval – makes changes.

1. Open your project first. The **Autopilot** icon (a sparkle) is in the top bar, next to the notifications bell, and it only appears inside a project – not on the project list.
2. Select it. The Autopilot panel opens on the right, with the question "How can I assist you with test management?".
3. Under the text box, check the mode selector. Test Manager offers two modes:

    | Mode | What it does | Today |
    |---|---|---|
    | **Edit** | Shows each action Autopilot wants to take and waits for your **Accept** or **Reject** | ✅ Use this one all day |
    | **Agent** | Runs actions without asking | Don't use it in the workshop |

    If it shows **Agent**, switch it to **Edit**.

<!-- IMG: Autopilot panel open inside a project, mode selector set to Edit, footer "Autopilot can make mistakes. Please double check the responses." visible (crop the breadcrumb project key and the user initials) -->

!!! warning "Edit mode asks for every action – reads included"
    In **Edit** mode, Autopilot shows a card for each action it takes in Test Manager – the action's name, "via MCP server: testmanager", and **Reject** / **Accept** – even when it only *reads* your project. One question can ask for 5 or more approvals. Read each card, then select **Accept**. It's slower, but you always see what Autopilot does on your behalf. Searches and charts run without a card.

    These actions are called **tools**. You'll learn what they are, and what they can't do, in [7. Build and Run the Regression Set](07-build-and-run-the-regression-set.md#what-mcp-means-for-you).

!!! info "Every chat turn uses your AI allowance"
    Each message you send to Autopilot chat uses your AI and agentic usage pool. The dedicated Autopilot buttons you use in steps 2 and 3 don't. Ask focused questions, and don't paste the same prompt twice. See <a href="https://docs.uipath.com/autopilot/other/latest/user-guide/autopilot-usage-pool-for-testing" target="_blank">Autopilot usage pool for testing</a>.

    Autopilot chat needs Test Manager on Test Cloud. No Autopilot icon? See [Troubleshooting](../module-3-troubleshooting-and-next-steps/02-troubleshooting.md#autopilot-chat) and ask your trainer to check your user licence.

## Ask your first three questions

Wait until your project card shows **Created on**. Then type each prompt into the Autopilot panel and press Enter. Wait for the answer before you send the next one.

### 1 – A how-to question: check the answer

```text
How do I run a manual test case in Test Manager?
```

Autopilot answers from what it knows, without a tool card. **Don't take the answer at face value.** In rehearsal it said you can't run a test case on its own and must add it to a test set first. On Test Cloud that's out of date: you can open the test case's **⋮** menu and select **Execute Manually**. You'll do exactly that in [4. Run the Test Three Ways](04-run-the-test-three-ways.md#2-run-it-yourself).

!!! question "Think about it"
    The footer of the panel says "Autopilot can make mistakes. Please double check the responses." Treat chat like a helpful new colleague: fast and usually right, but you check anything you'll act on.

### 2 – An overview of your project

```text
Give me an overview of this project: the requirements and how many test cases each has, the test sets, and the latest executions.
```

Autopilot asks you to approve about 5 read actions, one at a time – for example **Get_requirements**, **Get_test_sets**, **Get_test_executions**, **Get_assigned_test_case_ids_for_requirement** and **Get_test_cases**. Select **Accept** on each. The answer takes about 1–2 minutes.

### 3 – A coverage gap search

```text
Find all test cases not linked to any requirement.
```

This uses **Autopilot Search**, so there's no card to approve. A test case without a requirement is a gap: nobody can say which business rule it proves.

!!! success "Check it"
    Compare Autopilot's answers with the left navigation of your project:

    ✅ **Requirements**: 1 – **Submit Loan Request**, with 6 test cases

    ✅ **Test Cases**: 6

    ✅ **Test Sets**: 1 – **UiBank Smoke Test Set**

    ✅ **Execution**: 17 executions (the imported history)

    ✅ The search for unlinked test cases returns **none**: all 6 are linked to **Submit Loan Request**. Open **Test Cases** to confirm.

    Counts that don't match? Trust the Test Manager pages, not the chat. Chat can miscount – that's why you check.

## Nice work!

Your project is imported, linked to the workshop folder, and you've had your first conversation with Autopilot – including one answer you had to correct.

---

[Next → 2. Evaluate the Requirement](02-evaluate-requirements.md){: .md-button .md-button--primary}

---
