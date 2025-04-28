## What is a branch?
It is a version of our code. Branches have a name and are pointing to a commit (there's a different history+past commits depending on our branch, but some commits may be common).
<br>
One branche per feature (the smaller the better) so changes happen to the branch, not the master workflow until the final merge. Afterwards, we merge and delete the branch.

## Commands
- `git branch <name>` = creates the branch, it's an exact duplicate of our current/previous branch (they point to the same commit)
- `git branch` = returns my current branch
- `git checkout <name>` = changes current (`HEAD`), `<name>` points to `HEAD` now
- `git branch -d <name>` = deletes this branch (**NOT** the commits also)
- `git checkout -b <name>` = creates a new branch and makes this new branch as our current working one = `git branch <name>` + `git checkout <name>`
- `git merge <branch>` = merges <branch>'s history with my current branch + try to merge changes in files from both the branches => 2 parents in new commit. *(Afterwards we find the most recent parent of those two parents => commits of the new branch = commits of parent1 + commits of parent2 => updates master, master in new commit - see schema (1))*

*schema (1)*
![branch](https://user-images.githubusercontent.com/19435096/66163182-62b38500-e638-11e9-96a8-bc81d9ca43a4.jpg)

*Note: If you make a branch on terminal and want it to show on GitHub, you need to `git push origin branchname` first!*
*Note2: After being done with a branch, `git checkout <productionbranch>`, and then `git merge <tesbranch>` and then `git branch -d <testbranch>` (you can delete the testbranch from GitHub's UX)*
#

### Master Branch
- Our default branch after a `git init` command.
- (For most projects) it has a 'current' code
- Usually we create a new branch as a copy of master

#
## References to parental nodes
| Symbol  | Meaning                                            |
|----|------------------------------------------------------------|
| ~  | 1 commit behind                                            |
| ^  | the first commited parent                                  |
| ~2 | commit's grandpa (2 commits back based on `^` (if merged)) |
| ^2 | second parent from merge                                   |

e.g. `192a812~2` = 2 commits before commit #192a812, or `HEAD^2`

## Rewriting History
We can change our commits' sequence, description and changes, but: **you should not rewrite a history in commits that others may pull** <br>
`git commit --amend` = changes most recent commit, add to it the staged stuff.<br>
`git commit --amend --no-edit` = [check here](https://dev.to/lt0mm/comment/eo8)

## Back Merging
When I work on a branch, it is possible that some changes might have happened on master => we need `git merge master` and resolve the conflicts. Or...
- `git rebase` = like `merge` but better, it happens between two branches and changes the base where a branch has been made, rewrites its history (clean). Followed by a clean `pull request`. Generally we merge only for final pull request on each branch.
- `git rebase -i` = dynamic: changes the sequence of commit applies changes, fixes multiple commits or can break a commit to many.
- `git reset <commit>` (usually `git reset HEAD`) = returns current branchto <commit>, cancels in between changes.

**Not for published commits!!**

- `git push --force-with-lease` or `git push --force` = if I change history, git denies pushing w/o it.
