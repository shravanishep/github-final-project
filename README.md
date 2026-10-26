# Simple Interest Calculator

A lightweight, beginner-friendly Bash utility designed to calculate simple interest based on user-supplied principal, annual interest rate, and time period in years. This project forms the practical laboratory for the IBM / Coursera **Introduction to Git and GitHub** course.

---

## Project Purpose

The purpose of this repository is twofold:
1. **Interactive Financial Calculation**: Provide a clear, robust Bash script (`simple-interest.sh`) that automates simple interest calculations with input validation and decimal precision.
2. **Version Control Mastery**: Demonstrate foundational Git and GitHub skills, including repository forking, branch management, atomic commits, fast-forward merging, revert workflows, and peer-reviewed pull requests.

---

## Overview of the Simple Interest Bash Calculator

Simple interest is calculated using the standard financial formula:

$$\text{Simple Interest} = \frac{\text{Principal} \times \text{Rate} \times \text{Time}}{100}$$

Where:
- **Principal ($P$)**: The initial sum of money borrowed, invested, or loaned.
- **Annual Rate of Interest ($R$)**: The percentage charged or earned per annum.
- **Time Period ($T$)**: The duration of the loan or investment in years.

The script (`simple-interest.sh`) prompts the user interactively for each variable, performs sanitization (stripping carriage returns for cross-platform compatibility), validates that all inputs are positive numbers, and outputs the calculated interest.

---

## How to Run `simple-interest.sh`

### Prerequisites
- A Bash-compatible environment (Linux terminal, macOS Terminal, WSL, or Git Bash on Windows).
- Ensure executable permissions are granted to the script:
  ```bash
  chmod +x simple-interest.sh
  ```

### Interactive Execution
Run the script directly from your terminal:
```bash
./simple-interest.sh
```
or via the Bash interpreter:
```bash
bash simple-interest.sh
```

### Non-Interactive / Piped Execution
You can also pass inputs directly using `printf`:
```bash
printf "1000\n5\n2\n" | bash simple-interest.sh
```

---

## Example Input and Output

### Example 1: Standard Calculation
```
Enter the principal:
1000
Enter rate of interest per year:
5
Enter time period in years:
2
The simple interest is: 
100
```

### Example 2: Fractional / Decimal Rate
```
Enter the principal:
2500
Enter rate of interest per year:
7.5
Enter time period in years:
3
The simple interest is: 
562.50
```

### Example 3: Invalid Input Handling
```
Enter the principal:
abc
Enter rate of interest per year:
5
Enter time period in years:
2
Error: Invalid input. Please enter valid numeric values for principal, rate, and time.
```

---

## Git Workflow Used in the Project

This project adheres to industry-standard Git and GitHub practices:

1. **Fork & Clone**: Fork the upstream repository to your GitHub profile and clone the fork locally:
   ```bash
   git clone https://github.com/<your-username>/mcino-Introduction-to-Git-and-GitHub.git
   ```
2. **Feature & Bug-Fix Branching**: Always branch off `main` for isolated changes:
   ```bash
   git checkout -b bug-fix-typo
   ```
3. **Atomic Commits**: Stage and commit focused modifications with clear messages:
   ```bash
   git add <filename>
   git commit -m "Fix simple interest formula typo in README.md"
   ```
4. **Local Integration**: Switch back to `main` and merge your branch:
   ```bash
   git checkout main
   git merge bug-fix-typo
   ```
5. **Revert Workflow**: Test regression recovery by creating a revert branch and generating a revert commit:
   ```bash
   git checkout -b bug-fix-revert
   git revert HEAD --no-edit
   ```
6. **Remote Synchronization & Pull Requests**: Push branches to GitHub and open pull requests against upstream `main` for peer review.

---

## License

This project is licensed under the Apache License 2.0. See the [LICENSE](LICENSE) file for the full license text.

_© 2022 XYZ, Inc._
