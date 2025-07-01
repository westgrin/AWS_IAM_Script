# # Shell Script for AWS IAM Management

## Project Overview
This 2-hour project enhances the `aws-iam-manager.sh` script to automate IAM user creation, group management, and permission assignment for CloudOps Solutions’ DevOps team, executed on Ubuntu (WSL) with VS Code via Ubuntu.

## Setup
- Initiated on Jul 01, 2025, 12:20 PM WAT.
- Used Ubuntu terminal (WSL) with VS Code, configured AWS CLI, and documented in ~/Documents/Workspace/AWS_IAM_Script.

## Project Execution

### 1. Prerequisites and Setup
- Configured AWS CLI with credentials and verified with `aws iam list-users`.
- Created project directory and initialized Git repository.

### 2. Extend the Shell Script
- **Define IAM User Names Array**: Added `IAM_USER_NAMES=("devops1" "devops2" "devops3" "devops4" "devops5")` for iteration.
- **Create IAM Users**: Implemented `create_iam_users` with a loop to create users via `aws iam create-user`.
- **Create Admin Group**: Implemented `create_admin_group` to create “admin” group and attach `AdministratorAccess` policy via `aws iam attach-group-policy`.
- **Add Users to Group**: Implemented `add_users_to_admin_group` with a loop to add users to “admin” group via `aws iam add-user-to-group`.
- **Test Script**: Ran `./aws-iam-manager.sh` and verified in IAM console.

### Thought Process
- **Objective Analysis**: Identified the need to automate onboarding for five DevOps users, a group, and policy assignment.
- **Script Structure**: Chose to extend the provided script by filling placeholder functions, ensuring modularity.
- **Error Handling**: Added checks (e.g., `$?`) to handle group existence and command failures.
- **Security Consideration**: Used AWS-managed `AdministratorAccess` policy but noted the need for least privilege in production (e.g., custom policies).
- **Testing Approach**: Iteratively tested each function to ensure CLI commands executed correctly.

### Challenges and Solutions
- **AWS CLI Configuration**: Ensured credentials had IAM permissions; verified with `aws iam list-users`.
- **Group Existence**: Added a check to avoid errors if “admin” group exists.
- **Permission Errors**: Confirmed AWS CLI role had sufficient privileges to manage IAM.

## Tools Used
- **Ubuntu Terminal (WSL)**: For script execution and testing.
- **VS Code**: For editing `aws-iam-manager.sh` and `README.md`.
- **Git Bash**: For version control and GitHub push.
- **AWS CLI**: For IAM resource management.
- **AWS Management Console**: For verification.

## Project Deliverables
- **Documentation**: This `README.md` details the thought process and execution.
- **Script Link**: [GitHub Repository](https://github.com/westgrin/AWS_IAM_Script)

## Conclusion
This project successfully automated IAM management for CloudOps Solutions, streamlining DevOps onboarding with a reusable script, adhering to best practices for security and efficiency.