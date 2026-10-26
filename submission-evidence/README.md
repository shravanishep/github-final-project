# Coursera Final Project — Submission Evidence

This directory contains terminal commands, output logs, and API verification evidence for Part 2 (Git Command Line Interface) of the IBM / Coursera **Introduction to Git and GitHub** final assignment.

---

## Evidence Index

| Task | File Name | Objective | Status |
| :--- | :--- | :--- | :--- |
| **Task 6** | [`forked-repo`](forked-repo) | `curl` verification that the fork is derived from `ibm-developer-skills-network/mcino-Introduction-to-Git-and-GitHub` | Ready locally (Pending remote fork click) |
| **Task 7** | [`merge_branches`](merge_branches) | `git checkout main` and `git merge bug-fix-typo` showing exactly 1 file changed | **Complete & Verified** |
| **Task 8** | [`bug-fix-revert`](bug-fix-revert) | `git revert` on `bug-fix-revert` branch and `curl` pull request verification | Local revert complete (Pending PR on GitHub) |
| **Task 9** | [`github-branches`](github-branches) | `git branch -a`, `git status`, and `git branch -vv` terminal outputs | **Complete & Verified** |

---

## Verification Commands Quick Reference

### Verify Fork Relationship:
```bash
curl.exe -s https://api.github.com/repos/<your-username>/mcino-Introduction-to-Git-and-GitHub
```

### Verify Branches Locally:
```bash
git branch -a
git branch -vv
git status
```

### Verify Pull Request:
```bash
curl.exe -s "https://api.github.com/repos/ibm-developer-skills-network/mcino-Introduction-to-Git-and-GitHub/pulls?head=<your-username>:bug-fix-revert&state=all"
```
