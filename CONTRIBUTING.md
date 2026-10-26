# Contributing to Simple Interest Calculator

All contributions, bug reports, bug fixes, documentation improvements, enhancements, and ideas are welcome.

Thank you for your interest in contributing to this project! We welcome and appreciate community contributions to help improve this calculator and documentation.

---

## Code of Conduct

This project adheres to the Contributor Covenant Code of Conduct. By participating, you are expected to uphold this code. Please report unacceptable behavior following the guidelines in [CODE_OF_CONDUCT](CODE_OF_CONDUCT).

---

## How to Contribute

### 1. Reporting Issues and Bug Reports
- Check existing issues in the GitHub repository to avoid duplicates.
- If you find a bug, open a new issue describing:
  - Clear and descriptive title.
  - Steps to reproduce the bug.
  - Expected behavior vs. actual behavior.
  - Relevant environment details (OS, Bash version).

### 2. Proposing Changes and Enhancements
- If you have an idea or feature request, open an issue labeled feature request.
- Discuss the proposed change before opening a pull request to ensure alignment with project goals.

### 3. Creating Branches
- Fork the repository to your own GitHub account.
- Clone your fork locally:
  ```bash
  git clone https://github.com/<your-username>/mcino-Introduction-to-Git-and-GitHub.git
  ```
- Always create a new, descriptive branch from `main`:
  ```bash
  git checkout -b feature/your-feature-name
  # or for bug fixes:
  git checkout -b bug-fix-typo
  ```

### 4. Making Changes and Testing
- Keep commits focused and atomic.
- Write clear, concise commit messages in imperative mood (e.g., `Fix simple interest formula in README.md`).
- Validate any script changes:
  ```bash
  bash -n simple-interest.sh
  printf "1000\n5\n2\n" | bash simple-interest.sh
  ```

### 5. Submitting Pull Requests
- Push your branch to your forked repository:
  ```bash
  git push origin <branch-name>
  ```
- Open a Pull Request on GitHub against the `main` branch.
- Provide a summary of the changes made and reference any related issues.
- Be responsive to feedback and review comments.
