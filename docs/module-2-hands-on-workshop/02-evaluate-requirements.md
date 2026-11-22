# 2. Evaluate the Requirement

<p class="step-meta">Leads: <span class="persona-badge persona-badge--ba">BA</span> · Tools: <span class="tool-badge tool-badge--testmanager">Test Manager</span> <span class="tool-badge tool-badge--autopilot">Autopilot</span></p>

<div class="flow">
  <a class="flow-step" href="#evaluate-the-requirement-with-autopilot">Evaluate the requirement with Autopilot</a>
  <span class="flow-arrow"></span>
  <a class="flow-step" href="#turn-suggestions-into-rules">Turn suggestions into rules</a>
  <span class="flow-arrow"></span>
  <a class="flow-step" href="#fix-the-under-18-rule">Fix the under-18 rule</a>
</div>

**Why it matters for you:** test cases are only as good as the requirement they come from. A vague rule gives vague tests – and arguments at sign-off about what "rejected" was supposed to mean.

Vague or incomplete requirements lead to gaps in testing. **Evaluate quality**, an Autopilot button in Test Manager, reads a requirement and finds gaps – undefined thresholds, ambiguous input formats, missing edge cases or validation rules – and suggests fixes. You decide which suggestions to keep. Buttons like this one don't use your AI usage pool.

## Evaluate the requirement with Autopilot

1. Open **Requirements** → **Submit Loan Request**.
2. On the requirement page, select **+ Evaluate quality**. (The other buttons there – **+ Autonomous Exploration**, **+ Optimize coverage** and **Assign test case** – come later.)
3. In **Provide additional context → Add documents**, select these project documents (marked **P**), so Autopilot checks the requirement against their rules:

    ✅ **UiBank Security Guidelines.pdf** – input validation rules for the form fields

    ✅ **UiBank Accessibility Guidelines.docx** – form labels, error messages and keyboard access

    ![Add documents tab in Provide additional context](../assets/images/Add%20Documents%20dialog.png){ .img-equal }

    You may also see **Project_import_summary_<date>.pdf**, created by your import in step 1. Leave it unselected.

    ??? tip "Where do these documents come from?"
        They're the project's attachments, under **Dashboard → Attachments**. Anyone on the project can add documents there, and Autopilot can read them.

        <!-- IMG: Dashboard → Attachments tab of the learner's project showing the UiBank documents (crop "Added by" names and the tenant name) -->

4. On the next screen:
    1. **Select a prompt**: choose **Multifaceted Audit**.

        ??? info "Editing prompts and adding your own"
            The built-in prompts are editable, and you can add custom prompts of your own – for example your team's checklist for requirements. Manage them in the **Prompt Library**, under **Project Settings**.

    2. Keep the recommended model.
    3. Select **Evaluate quality**. Autopilot takes a minute or so. You can close the panel while it works.

5. Under **Latest activity**, on the right of the requirement, select **Quality enhancements** to see the suggestions. If you kept the panel open, it shows them as soon as Autopilot finishes.

    <!-- IMG: requirement page with the + Evaluate quality button and "Quality enhancements" under Latest activity highlighted (crop the "by <name>" line under the link) -->

See <a href="https://docs.uipath.com/autopilot/other/latest/user-guide/requirement-evaluation" target="_blank">Requirement evaluation</a>.

## Turn suggestions into rules

A suggestion tells you *what's missing*. Your job as the analyst is to replace it with the actual business rule.

1. Expand each suggestion. Select **Add to Requirement** for the ones you agree with. Its status changes from **To do** to **In work**, and its title and suggestion appear at the end of the description.

    **Add to Requirement** closes the panel: reopen **Quality enhancements** for the next one.

2. Pick 1–2 suggestions about outcomes or messages, such as boundaries, rejection rules or the result page: you'll replace them with UiBank's exact text.
3. Edit the requirement. Under each added title, replace the suggestion with the rule itself, using the exact text UiBank shows. Your changes save when you click outside the description.

    ??? example "Sample: turn a suggestion into a rule"
        Your suggestions may differ. This one says rejection rules are missing:

        ![An enhancement suggestion: Add Rejection Criteria and Messages](../assets/images/TM%20Enhancement%20suggestion.png)

        Applying with its second example in <a href="https://uibank.uipath.com" target="_blank">UiBank</a> ($150,000 for 3 years, $400,000 income) gives the exact text. The acceptance criteria already have a rule for this case, with a different message, so update that rule instead of adding one:

        ```text
        Applicants 18-65 years old, requesting >$100,000 without income >3x loan amount:
        Reject with "You must be at least 18 years old for a loan and the loan must not exceed 100k."
        ```

4. Set the status of each suggestion you used to **Done**, from its status drop-down.

!!! success "Check it"
    ✅ Each title you added has a rule under it, not the suggestion.

    ✅ Each rule names a boundary you could test (an age, an amount) and the exact message UiBank shows.

??? example "Optional – the same request in Autopilot chat"
    Open the **Autopilot** panel (top bar, **Edit** mode) and type:

    ```text
    Evaluate the quality of the Submit Loan Request requirement and list the top 5 suggestions.
    ```

    Autopilot shows one card, **Evaluate Requirement Quality**, with the requirement, documents, prompt and model it will use. Select **Accept**. After about 1–2 minutes it says how many suggestions it found, lists the top 5 and gives a **Review** link to the same **Quality enhancements** list. It doesn't change the requirement itself.

    Same result, two ways in: the **+ Evaluate quality** button doesn't use your AI usage pool and lets you pick documents and a prompt; the chat version uses your AI usage pool but fits into a conversation – for example "…and tell me which suggestion matters most for the over-65 rule".

## Fix the under-18 rule

The original acceptance criteria need the same check. Test cases are generated from the requirement's text, so its messages must match what UiBank shows. The requirement says what UiBank *should* do: match its wording, not its behavior.

1. In <a href="https://uibank.uipath.com" target="_blank">UiBank</a>, go to **Products → Loans → Apply For A Loan**. Fill in any email, an amount of `5000`, any term, an income of `50000` and an age of **17**, then submit. UiBank shows two lines:

    *Sorry, at this time you have not been approved for a loan.*

    *You must be at least 18 years old for a loan and the loan must not exceed 100k.*

2. Edit **Submit Loan Request**. In the **under 18** rule only, replace "Not approved due to age." with UiBank's two lines. For example:

    ```text
    Applicants under 18 years old: Reject with "Sorry, at this time you have not been approved for a loan." and the reason "You must be at least 18 years old for a loan and the loan must not exceed 100k."
    ```

    It saves when you click outside the description.

3. Leave the **over 65** rule exactly as it is. It says what the business wants – a rejection – and you'll test UiBank against it from step 3 on.

!!! success "Check it"
    ✅ The **under 18** rule shows UiBank's two lines, word for word.

    ✅ The **over 65** rule still says "Not approved due to age."

!!! tip "Make every rule measurable"
    Back at your desk, give every rule the same treatment: exact boundaries (18, 65, $100,000), the exact approval message ("Congrats! You've been approved for a loan with UiBank!") and the exact rejection message. [3. Generate Test Cases](03-generate-test-cases.md) generates test cases from this text, so every vague word becomes a vague test step.

## Nice work!

Your requirement is clearer and testable – ready for generating test cases.

---

[Next → 3. Generate Test Cases](03-generate-test-cases.md){: .md-button .md-button--primary}

---
