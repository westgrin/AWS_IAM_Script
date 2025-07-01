#!/bin/bash

# AWS IAM Manager Script for CloudOps Solutions
# This script automates the creation of IAM users, groups, and permissions

# Define IAM User Names Array
IAM_USER_NAMES=("devops1" "devops2" "devops3" "devops4" "devops5")

# Function to create IAM users
for user in "${IAM_USER_NAMES[@]}"; do
    echo "Creating IAM user: $user"
    aws iam create-user --user-name "$user" >/dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "Success: $user created"
    else
        echo "Error: Failed to create $user"
    fi
done
# Function to create admin group and attach policy
for user in "${IAM_USER_NAMES[@]}"; do
    echo "Adding $user to admin group"
    aws iam add-user-to-group --user-name "$user" --group-name "admin" >/dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "Success: $user added to admin group"
    else
        echo "Error: Failed to add $user to admin group"
    fi
done
# Function to add users to admin group
for user in "${IAM_USER_NAMES[@]}"; do
    echo "Adding $user to admin group"
    aws iam add-user-to-group --user-name "$user" --group-name "admin" >/dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "Success: $user added to admin group"
    else
        echo "Error: Failed to add $user to admin group"
    fi
done
# Main execution function
main() {"\n    echo \"==================================\"\n    echo \" AWS IAM Management Script\"\n    echo \"==================================\"\n    echo \"\"\n    \n    # Verify AWS CLI is installed and configured\n    if ! command -v aws &> /dev/null; then\n        echo \"Error: AWS CLI is not installed. Please install and configure it first.\"\n        exit 1\n    fi\n    \n    # Execute the functions\n    create_iam_users\n    create_admin_group\n    add_users_to_admin_group\n    \n    echo \"==================================\"\n    echo \" AWS IAM Management Completed\"\n    echo \"==================================\"\n"}

# Execute main function
main

exit 0
