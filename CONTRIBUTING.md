# Contributing to VANADIUM UM

###### Adapted from the Atom Contributor Guidelines

:tada: First off, thanks for taking the time to contribute! :tada:

The following documentation is a set of guidelines for contributing to the Knox Conty Department of Watershed Software Upgrade Project.

## How can I contribute?

### Reporting bugs

This section guides you through submitting a bug report for Atom. Following these guidelines helps developers, maintainers, and the community understand your report, reproduce the behavior, and find related reports.

We track bugs as GitHub issues. After you've determined what software clump your bug is related to, create an issue on that repository and provide the following information. Explain the problem and include details to help maintainers and developers reproduce the problem. 
We encourage you to use our templates when filing your issues, BUT if nothing fits at all, you can make your own.

- Use a clear and descriptive title for the issue to identify the problem.
- Describe the exact steps to reproduce the problems with as much detail as necessary.
- If there are special or scenarios which cause the bugs to show or crash, provide those specific scenarios or examples.
- Explain the behavior you expected to see.
- Note whether the software terminates gracefully or crashes.
- Any other information that you think are important.

If you squish the bug, please reference your commit hash when you close the issue, if possible. If not, we should be able to match your bug squashing by your commit emoji :bug: `:bug:`.

### Suggesting Enhancements

This section guides you through submitting an enhancement or a refactoring request.

Enhancement suggestions are tracked as GitHub issues. After you've determined what software clump your bug is related to, create an issue on that repository and provide the following information.
We encourage you to use our templates when filing your issues, BUT if nothing fits at all, you can make your own.

- Use a clear and descriptive title for the issue to identify the area of improvement.
- Describe the code clumps that you think should be optimized or enhanced, or if it is a rendered piece of software, the exact steps to get to that display.
- If there are any special scenarios which cause rendering issues, provide those specific scenarios or examples.

## Styleguides

### Git Commit Messages

- Use the present tense, if possible ("Add feature" not "Added feature")
- Use the imperative mood ("Move cursor to..." not "Moves cursor to...")
- Limit the first line to 72 characters or less
- Reference issues and pulls requests liberally after the first line.
- Consider starting the commit message with an applicable emoji to make it easier to see.
  + :tada: `:tada:` for initial commits

  + :bug: `:bug:` when fixing a bug
  + :fire: `:fire:` when removing code or files
  + :pencil2: `:pencil2:` fixing typos
  + :toilet: `:toilet:` when doing garbage collection
  + :white_check_mark: `:white_check_mark:` when adding testing programs
  + :construction: `:construction:` when code in progress (do not merge)*
  + :loud_sound: `:loud_sound:` adding or updating logs
  + :mute: `:mute:` Removing logs

  + :art: `:art:` when improving the format or structure of code
  + :recycle: `:recycle:` when refactoring code
  + :lipstick: `:lipstick:` adding/updating UI or style files
  + :children_crossing: `:children_crossing:` improving UX or usability
  
  + :racehorse: `:racehorse:` when making performance improvements
  + :lock: `:lock:` when dealing with security
  + :memo: `:memo:` when writing documentation
  + :truck: `:truck:` moving or renaming code
  + :bulb: `:bulb:` adding or updating comments in source code
  + :card_file_box: `:card_file_box:` adding or updating database related changes
  
  + :poop: `:poop:` writing bad code that will need improved
  + :beers: `:beers:` writing code drunkenly
  
  + :see_no_evil: `:see_no:evil:` adding or updating .gitignore file
  + :penguin: `:penguin:` when fixing specific to Linux
  + :santa: `:santa:` when fixing issues specific to Windows Server
  + :arrow_up: `:arrow_up:` when ADDING dependencies
  + :arrow_down: `:arrow_down:` when REMOVING dependencies
  
  + :alembic: `:alembic:` experimenting new things
  + :sparkles: `:sparkles:` introducing new features
  + :rocket: `:rocket:` deploying stuff
  + :twisted_rightwards_arrows: `:twisted_rightwards_arrows:` merging branches
  
* Asterisk means secondary emoji, typically combined with primary

### GitHub Pull Requests

Use the same degree of specificity, if not more, when merging a pull request, as you would when writing a commit message.
- Use the present tense, if possible ("Add feature" not "Added feature")
- Use the imperative mood ("Move cursor to..." not "Moves cursor to...")
- Limit the first line to 72 characters or less
- Reference issues and other pulls requests liberally after the first line.
- Use the same emojis that you would use in a commit message.

### GitHub Branch Naming

- Include your USERNAME or some other unique identifier as the first thing in the branch name.
- Describe what you're doing in one or two words, and use dashes as delimiters. Your branch should be easily typable.
- Please don't focus on making the branch terribly unique. Once the branch has been deleted, the name can be reused!
- Example branch names:
  + `kim3-html`
  + `kim3-javascript-patch`
  + `brydon1-login`
  + `brydon1-signup-modal`
  + `canfield1-js`
  + `canfield1-security-search`
