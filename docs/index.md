# Welcome to the <span style="color: #2196F3;">Agentic Testing for Business People</span> Workshop

![Get robots that execute tests](assets/images/Get%20robots%20that%20execute%20tests.png)

**Thank you for joining the UiPath Agentic Testing for Business People Workshop!**

This **Learner's Handbook** is your hands-on guide for the day. It answers one business question: **can UiBank ship its new loan form?**

You follow a release the way your team does: from a **requirement**, to **test cases**, to **test runs**, to **reports**, to a **go/no-go decision**. No code. AI helps at every step, and you stay in charge of every decision.

!!! info "Before the workshop"
    Complete the **[Prerequisites](module-0-prerequisites/index.md)** before the session starts. You install **UiPath Assistant with Delegate** on your Windows laptop or Mac, and connect Delegate to Test Manager once (about 5 minutes). Everything else runs in your browser.

    Your **trainer will share the organization and tenant** you'll use during the workshop.

!!! note "Labels may differ on your tenant"
    This workshop runs on a tenant with the latest features. Your own tenant may show slightly different labels, or may not have every feature yet. Features marked **(Preview)** may still change.

## Your three helpers

You'll work with three kinds of helper. Each one has its own job.

✅ **Autopilot in Test Manager** – AI built into Test Manager. Its **buttons** check a requirement, generate test cases and write reports. Its **chat** answers questions about your project, builds charts and organizes your work, such as creating a test set.

✅ **Delegate on your desktop** – an AI agent on your laptop that works in your apps the way you would. Today it runs a test case on the UiBank website, and reproduces a defect with screenshots.

✅ **Robots** – they run tests for you, without anyone at the keyboard. Your trainer provides them: one robot follows your written test steps on its own, and cloud robots run the automated regression tests.

See [Introduction](module-1-introduction/index.md) for which helper to use when.

## What you'll do

The day follows a release from start to finish, in four phases:

<div class="wf-map">
  <div class="wf-phase">
    <div class="wf-phase-head">
      <span class="wf-phase-kicker">Phase 1 · Prepare</span>
      <span class="wf-phase-title">Requirement + tests</span>
    </div>
    <div class="wf-steps">
      <a class="wf-step" href="module-2-hands-on-workshop/01-import-and-meet-autopilot-chat/"><span class="wf-num">1</span>Import and meet Autopilot chat</a>
      <a class="wf-step" href="module-2-hands-on-workshop/02-evaluate-requirements/"><span class="wf-num">2</span>Evaluate the requirement</a>
      <a class="wf-step" href="module-2-hands-on-workshop/03-generate-test-cases/"><span class="wf-num">3</span>Generate test cases</a>
    </div>
    <div class="wf-phase-foot">A clear requirement and test cases you trust, with <strong>Autopilot</strong></div>
  </div>
  <div class="wf-arrow" aria-hidden="true"></div>
  <div class="wf-phase">
    <div class="wf-phase-head">
      <span class="wf-phase-kicker">Phase 2 · Run</span>
      <span class="wf-phase-title">You, Delegate, a robot</span>
    </div>
    <div class="wf-steps">
      <a class="wf-step" href="module-2-hands-on-workshop/04-run-the-test-three-ways/"><span class="wf-num">4</span>Run the test three ways</a>
      <a class="wf-step" href="module-2-hands-on-workshop/05-compare-the-runs/"><span class="wf-num">5</span>Compare the runs</a>
    </div>
    <div class="wf-phase-foot">One test, three testers, and the <strong>evidence</strong> each one leaves</div>
  </div>
  <div class="wf-arrow" aria-hidden="true"></div>
  <div class="wf-phase">
    <div class="wf-phase-head">
      <span class="wf-phase-kicker">Phase 3 · Automate &amp; organize</span>
      <span class="wf-phase-title">Studio Web + chat</span>
    </div>
    <div class="wf-steps">
      <a class="wf-step" href="module-2-hands-on-workshop/06-automate-with-studio-web/"><span class="wf-num">6</span>Automate with Studio Web</a>
      <a class="wf-step" href="module-2-hands-on-workshop/07-build-and-run-the-regression-set/"><span class="wf-num">7</span>Build and run the regression set</a>
    </div>
    <div class="wf-phase-foot">A <strong>regression set</strong> built in chat and run on cloud robots</div>
  </div>
  <div class="wf-arrow" aria-hidden="true"></div>
  <div class="wf-phase wf-phase--outcome">
    <div class="wf-phase-head">
      <span class="wf-phase-kicker">Phase 4 · Decide</span>
      <span class="wf-phase-title">Reports + decision</span>
    </div>
    <div class="wf-steps">
      <a class="wf-step" href="module-2-hands-on-workshop/08-read-the-results/"><span class="wf-num">8</span>Read the results</a>
      <a class="wf-step" href="module-2-hands-on-workshop/09-decide-go-no-go/"><span class="wf-num">9</span>Decide go or no-go</a>
    </div>
    <div class="wf-phase-foot">Charts, reports and a documented <strong>go/no-go decision</strong></div>
  </div>
</div>

<p class="wf-caption">Select a step to jump to it.</p>

The day runs from 09:00 to 17:00, with two breaks and lunch. The robot works through everyone's test runs over lunch, so you start it just before.

## Who is it for

The workshop is for mixed business teams: business analysts (BA), user acceptance testing (UAT) testers, and test or quality assurance (QA) managers. Each step shows who leads it: <span class="persona-badge persona-badge--ba">BA</span> <span class="persona-badge persona-badge--uat">UAT</span> <span class="persona-badge persona-badge--qa">QA</span> or <span class="persona-badge persona-badge--all">All</span>. Everyone does every step.

Hover over or select a card to see what you take home.

<div class="flip-card-grid">
  <div class="flip-card" tabindex="0">
    <div class="flip-card-inner">
      <div class="flip-card-front">Business analyst (BA)</div>
      <div class="flip-card-back">
        <div class="flip-card-back-title">What you take home</div>
        <ul>
          <li>Measurable acceptance criteria</li>
          <li>Test cases generated from a requirement</li>
          <li>Coverage gaps found in chat</li>
        </ul>
      </div>
    </div>
  </div>
  <div class="flip-card" tabindex="0">
    <div class="flip-card-inner">
      <div class="flip-card-front">UAT tester</div>
      <div class="flip-card-back">
        <div class="flip-card-back-title">What you take home</div>
        <ul>
          <li>A manual run with evidence</li>
          <li>The same test run by Delegate and a robot</li>
          <li>Steps an agent can follow</li>
        </ul>
      </div>
    </div>
  </div>
  <div class="flip-card" tabindex="0">
    <div class="flip-card-inner">
      <div class="flip-card-front">Test / QA manager (QA)</div>
      <div class="flip-card-back">
        <div class="flip-card-back-title">What you take home</div>
        <ul>
          <li>A regression set run without code</li>
          <li>Charts and reports you can check</li>
          <li>A go/no-go decision with evidence</li>
        </ul>
      </div>
    </div>
  </div>
</div>

## Learning objectives

By the end of the workshop, every learner can:

✅ Explain in plain words what Autopilot in Test Manager (buttons and chat), Delegate and a test robot each do, and pick the right one for a job

✅ Explain MCP (Model Context Protocol) as "the list of approved actions Autopilot chat can take in Test Manager", and approve one of those actions

✅ Know the cost basics: Autopilot chat turns and Delegate tasks use your AI allowance, Autopilot buttons don't, and robot runs use the tenant's Platform Units

??? info "Objectives by role"
    **Business analyst (BA)**

    ✅ Evaluate a requirement with Autopilot, and turn vague rules into measurable acceptance criteria

    ✅ Generate test cases from a requirement and its documents, then judge which to keep. Optional: import existing Excel UAT scripts

    ✅ Use Autopilot chat to find coverage gaps, such as test cases with no requirement

    ✅ Optional: turn a business document into a requirement and a test case with Delegate

    **UAT tester**

    ✅ Run a manual test and record evidence: pass or fail, a comment, a screenshot

    ✅ Hand the same test case to Delegate and to a robot, and compare the evidence each one leaves

    ✅ Write test steps that both a person and an agent can follow

    ✅ Tell a UiBank defect from a test defect, and reproduce it with evidence

    **Test / QA manager**

    ✅ Build a regression set with Autopilot chat, and run it on cloud robots without code

    ✅ Read Dashboard numbers correctly: Total Coverage means "a test exists", not "ready to release"

    ✅ Build charts in chat, and check the AI's counts against **Execution**

    ✅ Produce an Execution Insights report and an execution PDF

    ✅ Make and document a go/no-go decision based on the requirement, not on the success rate. Optional: formal sign-off

## How this guide is organized

| Section | What's inside |
|---|---|
| **[Prerequisites](module-0-prerequisites/index.md)** | Your laptop and browser, your account, and installing and connecting Delegate |
| **[Introduction](module-1-introduction/index.md)** | A short tour of Test Cloud and Test Manager, and which helper to use when |
| **[Hands-On Workshop](module-2-hands-on-workshop/01-import-and-meet-autopilot-chat.md)** | The nine hands-on steps, from importing your project to the go/no-go decision |
| **[Troubleshooting & Next Steps](module-3-troubleshooting-and-next-steps/index.md)** | More prompts to try, fixes for common problems, and how to take this to your team |
| **[Trainer Setup](trainer-setup.md)** | The trainer's checklist before the workshop |

!!! quote "Here's something worth holding onto as you work through this workshop"
    AI agents don't replace testers – they give testers a new way to work. Instead of clicking through dashboards to find out what failed and why, you ask a question in plain English and get an answer grounded in your real test data.

    Robots bring determinism and control, agents bring adaptability and reasoning. **This workshop is about putting the two together.**

---

[Next → Prerequisites](module-0-prerequisites/index.md){: .md-button .md-button--primary}

---
