# More Prompts to Try

More questions to ask after the workshop, grouped by helper and tagged with the roles that use them most. Ask for outcomes, not clicks, and name things the way they appear in your project.

<p class="step-meta">Roles: <span class="persona-badge persona-badge--ba">BA</span> <span class="persona-badge persona-badge--uat">UAT</span> <span class="persona-badge persona-badge--qa">QA</span> · Tools: <span class="tool-badge tool-badge--autopilot">Autopilot chat</span> <span class="tool-badge tool-badge--delegate">Delegate</span></p>

!!! warning "Answers may vary – check them against Test Manager"
    Not every prompt on this page was rehearsed for the workshop. Autopilot and Delegate can make mistakes: compare counts and names with **Execution**, **Test Cases** or **Requirements** before you rely on them.

## Autopilot chat

Open your project, click **Autopilot** in the top bar, and keep the mode on **Edit**.

!!! info "Edit mode asks for each tool"
    In **Edit** mode, chat stops for your **Accept** or **Reject** every time it calls a Test Manager tool – reads included. A prompt that reads requirements, test sets and executions can take about five clicks. Searches and charts run without asking. Every chat turn uses your AI and Agentic usage pool.

### Morning standup brief

<p class="step-meta">For: <span class="persona-badge persona-badge--qa">QA</span> <span class="persona-badge persona-badge--uat">UAT</span></p>

```text
Summarize today's test runs in my project: how many passed, failed or had no result?
```

In daily use, ask for yesterday's runs instead.

### Coverage check before a release

<p class="step-meta">For: <span class="persona-badge persona-badge--qa">QA</span> <span class="persona-badge persona-badge--ba">BA</span></p>

```text
What percentage of requirements in this project are covered by test cases, and which requirements have no test cases at all?
```

Coverage only tells you that a requirement has test cases. It doesn't tell you that they passed.

### Failures in the last few days

<p class="step-meta">For: <span class="persona-badge persona-badge--qa">QA</span> <span class="persona-badge persona-badge--uat">UAT</span></p>

```text
Find all the test cases that failed in the last 5 days.
```

The workshop project's imported results are three years old, so only the runs you started today show up.

### Results for one requirement

<p class="step-meta">For: <span class="persona-badge persona-badge--ba">BA</span> <span class="persona-badge persona-badge--qa">QA</span></p>

```text
Show all the execution logs which affect requirement "Submit Loan Request".
```

### Test cases nobody has run

<p class="step-meta">For: <span class="persona-badge persona-badge--uat">UAT</span> <span class="persona-badge persona-badge--qa">QA</span></p>

```text
Find all test cases that have never been executed.
```

The test cases you generated in step 3 are good candidates.

### Execution trends

<p class="step-meta">For: <span class="persona-badge persona-badge--qa">QA</span></p>

```text
Show me trends of test cases that haven't been executed recently.
```

```text
Which test sets take the longest to execute?
```

Both should come back as charts. If you get a list instead, start the prompt with *"Show a chart of …"*.

### Flaky or recurring failures

<p class="step-meta">For: <span class="persona-badge persona-badge--qa">QA</span></p>

```text
For the failed test cases in the latest execution of Release 2.4 - Loan regression, look at their earlier results and tell me which ones are new failures and which keep failing.
```

### Obsolete test cases

<p class="step-meta">For: <span class="persona-badge persona-badge--ba">BA</span> <span class="persona-badge persona-badge--qa">QA</span></p>

```text
Find obsolete tests for the Submit Loan Request requirement.
```

Chat opens **Find Obsolete Tests**, the same capability as the button on the requirement page. It only flags test cases as outdated or redundant – you decide what to remove.

### Custom fields

<p class="step-meta">For: <span class="persona-badge persona-badge--ba">BA</span> <span class="persona-badge persona-badge--qa">QA</span></p>

```text
Show me all the custom fields.
```

The workshop project has no custom fields, so expect an empty answer here. In your own projects, you can then filter by them, for example by sprint or owner.

### Read-only exploration

<p class="step-meta">For: <span class="persona-badge persona-badge--all">All</span></p>

```text
List the test sets in this project and the test cases in each one. Don't change anything.
```

## Delegate

Delegate works across your desktop and reaches Test Manager through the connection you set up in [Prerequisites](../module-0-prerequisites/index.md#connect-delegate-to-test-manager). Name your project by its prefix – the letters before the number in your test case IDs – so Delegate picks the right one. Replace `<PROJECT_PREFIX>` in the prompts below with it.

### Morning recap (ready-made routine)

<p class="step-meta">For: <span class="persona-badge persona-badge--qa">QA</span></p>

Delegate's Test Cloud plugin includes a ready-made routine, **Summarize last night's execution of a test set**, in the **Not scheduled** list. It returns results only after the test set has run overnight, so on workshop day it finds nothing. See the routines box in [9. Decide Go or No-Go](../module-2-hands-on-workshop/09-decide-go-no-go.md#optional-extras). To try the same summary now, ask:

```text
Summarize the latest execution of Release 2.4 - Loan regression in project <PROJECT_PREFIX>.
```

### Rerun only the failures

<p class="step-meta">For: <span class="persona-badge persona-badge--uat">UAT</span> <span class="persona-badge persona-badge--qa">QA</span></p>

```text
Rerun only the failed test cases from the latest execution of Release 2.4 - Loan regression in project <PROJECT_PREFIX>, and tell me whether they pass now.
```

!!! warning "A rerun overwrites the results"
    The rerun updates the same execution in Test Manager: the new results replace the failed ones, and the old failures disappear from that execution. Write your report before you rerun if you need the original numbers. In the workshop, the over-65 test case fails again – UiBank's defect is still there.

Autopilot chat can't start runs with its standard tools, so use Delegate or the **Execute** button for this.

!!! warning "Prompts that write"
    Some prompts change Test Manager: adding labels, editing test cases, creating test sets, starting runs. Read each approval request – the tool card in Autopilot chat, the approval prompt in Delegate – before you accept it. If a request does more than you asked for, reject it.

---

[Next → Troubleshooting](02-troubleshooting.md){: .md-button .md-button--primary}

---
