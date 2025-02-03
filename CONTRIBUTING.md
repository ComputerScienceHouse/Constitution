# Contributing

Thanks for contributing! ❤️ 

All types of contributions are encouraged and valued. See the [Table of Contents](#table-of-contents) for different ways to contribute and details about the processes by which this project handles them. 

Please make sure to read the relevant section before making your contribution. We hope these guidelines will smooth out the experience for all involved. Thank you! - Constitutional Maintainers

## Table of Contents

- [Contributing](#contributing)
  - [Table of Contents](#table-of-contents)
  - [I Found An Issue In The Constitution](#i-found-an-issue-in-the-constitution)
  - [I Have a Question](#i-have-a-question)
  - [I Want To Fix An Issue](#i-want-to-fix-an-issue)
  - [I Want To Review A PR](#i-want-to-review-a-pr)
  - [Guide - Making Changes To The Constitution](#guide---making-changes-to-the-constitution)
  - [Commit Guidelines](#commit-guidelines)
  - [Debugging](#debugging)
  - [Attribution](#attribution)

## I Found An Issue In The Constitution

Ooh, awesome, nice find!

Before reporting the issue, it is best to search through the issues list and double-check to make sure the issue does not overlap with any existing issues. If it does, it is generally recommended adding a comment on an existing issue.

Otherwise, create a new issue using the Constitution Issue template:

- In the title, include a descriptive name for the issue and, if possible, where the issue occurs in the current binding CSH Constitution (eg, the one at constitution.csh.rit.edu).
- Mark whether the issue reflects a semantic or non-semantic change to the Constitution.
- Include a short description of the issue. Include an excerpt of the language that is most in question.

Once you've created a title and description for the issue, add any relevant labels. Several labels are available for application. Some commonly used labels for issues are:

- `needs-discussion`: for issues that should be discussed with Maintainers.
- `discussion-issue`: for issues that require some longer-term discussions.
- `question`: for issues where further information is requested.

We'll leave the assignees section blank until the issue has been picked up and under development.

Once your issue has a title, description, and labels, it is all set! Congrats 🎉

## I Have a Question

If you have a general question about the Constitution, ask a Maintainer (@constitutionalmaintainers on slack).

If you find a section of the Constitution that requires interpretation or clarification, we recommend the following:

- Open an [Issue](/issues/new), as described [above](#i-found-an-issue-in-the-constitution).
- Add the `question` label.

## I Want To Fix An Issue

First, find an issue on the Constitution GitHub that you'd like to work on (or, alternatively, [create one](#i-found-an-issue-in-the-constitution) 😃). 

Next, assign the issue to yourself (and any others working on the issue) to indicate that the issue has been picked up and is under development.

Then, make a branch from main containing the issue number and a description of the changes in the form `issue_number-issue-description`, (eg, `3-add-anti-discrimination-policy`). 

On the branch, modify `constitution.tex` to resolve the issue and commit your changes. Then, push to your branch and make a Pull Request on GitHub using the PR template.

Title your PR in the form `Resolve #Issue_Number Issue-Description` (eg, `Resolve #14 Potential Issue with Privacy in Judicials`). In the PR description, mark if this is a semantic or non-semantic change, and provide a summary of the changes made in your PR. 

Lastly, assign the PR to yourself, and add any relevant labels (for example - `ready for review`). Your PR is now ready for review!

## I Want To Review A PR

> Note: only Maintainers can review PRs 

Yo, that's awesome! First, add yourself as a reviewer on the PR.

Next, review the changes made in the PR. If you have questions or concerns about any of the changes, submit a review by going to `Files Changed`, highlighting the line in question, and hitting the `+`.

Once you've reviewed all the changes, under the `Files Changed` tab, hit the `Review Changes` button. Write a general review of the changes. If the changes are ready for finalization, hit `Approve` to let the author know the changes are ready to be merged. Otherwise, hit `Request Changes` to request changes from the author prior to merging.

## Guide - Making Changes To The Constitution

1. Create a local copy of the repository.

    > If you are not a Maintainer, make a Fork first 

    ```
    git clone https://github.com/ComputerScienceHouse/Constitution.git
    ```

2. Check that you are not on an issue branch.
    
    ```
    git branch
    ```
    
    To switch branches, run:
    
    ```
    git switch <branch_name>
    ```

3. Install dependencies. 

    > This installs texlive on your computer. If you have another latex editor, you can skip this step and use that.
    
    Installing dependencies on debian
    
    ```
    sudo apt install texlive texlive-formats-extra make
    ```
    
    Installing depencdencies on fedora
    
    ```
    sudo yum install texlive make
    ```

4. Checkout a new development branch.

    ```
    git checkout -b <branch_name>
    ```

    Follow the branch naming convention found in [I Want To Fix An Issue](#i-want-to-fix-an-issue).

5. Make any changes to `constitution.tex` and save the file once ready.

6. Compile the LaTeX document. (when using texlive)
    
    ```
    make
    ```
    
    Visually inspect the generated PDF document to ensure your changes are correct.

7. Make a commit that includes your changes.

    ```
    git add constitution.tex
    git commit
    ```
    
    See the [Commit Guidelines](#commit-guidelines) for more information on writing commit messages. 

8. Make a Pull Request
    
    Using the github cli:
    
    ```
    gh pr create
    ```
    
    Or, using standard git:
    
    ```
    git push
    # now go to github.com/ComputerScienceHouse/Constitution > Pull Requests > New Pull Request
    ```
    > Remember to set the upstream if in a Fork: git push -u origin <branch_name> 
    
    For instructions on making a Pull Request, see [I Want To Fix An Issue](#i-want-to-fix-an-issue).

Yay! Congrats, your PR is now ready for review! ❤️

## Commit Guidelines

```
Capitalized + short (80 chars or less) summary

More detailed explanatory text, if necessary. Wrap it to 80 characters.

Write your commit message in the imperative: "Fix bug" and not "Fixed
bug" or "Fixes bug." This convention matches up with commit messages
generated by commands like git merge and git revert.

Paragraphs come after blank lines.

- Bullet points are okay, too.
- For this project, commit messages will generally be a single line.
```

## Debugging

If you encounter any issues contributing to this project, please reach out to a Maintainer.

## Attribution
This guide is based on the **contributing.md**. [Make your own](https://contributing.md/)!