
# Source Code Management Tool: Git

## Introduction to Source Code Management (SCM) Tools
Source Code Management (SCM) tools are essential for tracking and managing code changes in software development projects. Git is a widely used SCM tool known for its distributed architecture and robust feature set.

---

## Lifecycle of Git
1. **Initialization**: Create a new repository using `git init`.
2. **Staging**: Add files to the staging area using `git add`.
3. **Commit**: Record changes in the repository using `git commit`.
4. **Branching**: Create new branches for feature development using `git branch`.
5. **Merging**: Combine branches using `git merge`.
6. **Pull and Push**: Synchronize local changes with remote repositories using `git pull` and `git push`.

---

## Practical Example: Using Git Commands
```bash
# Initialize a repository
git init

# Add files to staging
git add .

# Commit changes
git commit -m "Initial commit"

# View commit logs
git log

# Revert to a previous commit
git revert <commit-hash>

# Restore a file to its last committed state
git restore <file-name>
```

---

## Git Branch, Common Types of Branches, Checkout, Diff, Merge
- **Branches**: Feature, Development, Main/Master, Bugfix branches.
- **Checkout**: Switch between branches using `git checkout <branch-name>`.
- **Diff**: Compare changes using `git diff`.
- **Merge**: Merge branches using `git merge <branch-name>`.

---

## Git Workflow Explained
1. Clone the repository: `git clone <repo-url>`.
2. Create a feature branch: `git checkout -b <feature-branch>`.
3. Make changes and commit: `git add . && git commit -m "Description"`.
4. Push changes: `git push origin <feature-branch>`.
5. Create a pull/merge request.
6. Merge the branch into the main branch after review.

---

## Difference Between GitHub and GitLab
| Feature        | GitHub         | GitLab         |
|----------------|----------------|----------------|
| Hosting        | Hosted service | Self-hosting option available |
| CI/CD          | Third-party tools required | Built-in CI/CD tools |
| Access         | Limited free private repos | Unlimited private repos in free plan |

---

## Difference Between CE and EE GitLab
- **Community Edition (CE)**: Free, open-source version with basic features.
- **Enterprise Edition (EE)**: Paid version with advanced features like project analytics and enhanced security.

---

## How to Merge Repo Branches in GitLab
1. Navigate to Merge Requests in the GitLab project.
2. Create a new merge request.
3. Review changes and resolve conflicts if necessary.
4. Approve and merge the branch.

---

## How to Resolve Conflicts
1. Identify the conflicting files during the merge process.
2. Open the files and manually resolve conflicts.
3. Mark conflicts as resolved: `git add <file-name>`.
4. Commit the merge: `git commit`.

---

## Explain IDE, Install Visual Studio Code, Auto Git
- **IDE**: Integrated Development Environment (IDE) is a software suite that combines developer tools in a single GUI.
- **Install Visual Studio Code**: Download and install from the [official website](https://code.visualstudio.com/).
- **Auto Git**: Automates Git commands in Visual Studio Code using extensions like "GitLens".
