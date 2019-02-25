#!/bin/bash

# File:			git_cli.sh
# Name:			Kevin Crotty
# Date:			24 Feb 2019
# Desc:			Reference Commands for using 'git' at the command line
# Usage:		./git_cli.sh

#Here's a comment too

# Formatting
# Template: echo -e "${Red}  ${NC}"
NC='\e[0m'
Red='\e[0;31m'
Green='\e[0;32m'
Blue='\e[0;34m'
Purple='\e[0;35m'       # Purple
Cyan='\e[0;36m'

# Template: echo -e "${Red}  ${NC}"
echo -e "${Green}# Order of Operations for creating a branch, making an edit, merging branch, then cleaning up environment ${NC}"

echo -e "${Green}# Create a new local branch ${NC}"
echo -e "${Red}git branch ${Cyan}new_Branch${NC}"

echo -e "\n${Green}# Changes the active branch to 'new_Branch'${NC}"
echo -e "${Red}git checkout ${Cyan}new_Branch${NC}"

echo -e "\n${Purple}*** Make some file/folder changes ***${NC}"


echo -e "\n${Green}# Stages the changes made to any files (-n is --dry-run)  ${NC}"
echo -e "${Red}git add -An ${Cyan}${NC}"

echo -e "\n${Green}# Stage a single file ${NC}"
echo -e "${Red}git add ${Cyan}filname${NC}"

echo -e "\n${Green}# Use when removing a file from a repository ${NC}"
echo -e "${Red}git rm ${Cyan}filname${NC}"

echo -e "\n${Green}# Undo any previous staging ${NC}"
echo -e "${Red}git reset ${Cyan}filename${NC}"

echo -e "\n${Green}# Commit all staged files so they can be pushed/merged ${NC}"
echo -e "${Red}git commit -m  ${Cyan}\"Comment\"${NC}"

echo -e "\n${Green}# push '-u' sets 'upstream' to remote repository so you can just use 'git push' in the future ${NC}"
echo -e "${Red}git push -u origin ${Cyan}new_Branch${NC}"

echo -e "\n${Green}# Switch back to the master branch ${NC}"
echo -e "${Red}git checkout ${Cyan}master${NC}"

echo -e "\n${Green}# Pull from origin incase anyone else has made changes to master ${NC}"
echo -e "${Red}git pull ${Cyan}${NC}"

echo -e "\n${Green}# Merge changes in new_Branch with master ${NC}"
echo -e "${Red}git merge ${Cyan}new_Branch${NC}"

echo -e "\n${Green}# Push merged changes in master to origin ${NC}"
echo -e "${Red}git push -u origin master ${Cyan}${NC}"

echo -e "\n${Green}# Delete local branch when complete ${NC}"
echo -e "${Red}git branch -d ${Cyan}new_Branch${NC}"

echo -e "\n${Green}# Delete remote branch once complete ${NC}"
echo -e "${Red}git push origin --delete ${Cyan}new_Branch${NC}"

echo -e "\n${Green}# Taggin takes a snapshot at certain point of devolpment (use on master branch) ${NC}"
echo -e "${Red}git tag -a  ${Cyan}tag_Name${Red} -m ${Cyan}\"Comment\"${NC}"

echo -e "\n${Green}# Need to push tags seperately ${NC}"
echo -e "${Red}git push --tags ${Cyan}${NC}"

echo -e "\n${Green}# Command to delete a tag ${NC}"
echo -e "${Red}git tag -d ${Cyan}tag_Name${NC}"

echo -e "\n${Green}# Delete a tag on remote repository ${NC}"
echo -e "${Red}git push origin :${Cyan}tag_Name${NC}"

echo -e "\n${Green}#  ${NC}"
echo -e "${Red} ${Cyan}${NC}"

echo -e "\n${Green}#  ${NC}"
echo -e "${Red} ${Cyan}${NC}"

echo -e "\n${Green}#  ${NC}"
echo -e "${Red}TODO: ADD 'git lfs' COMMANDS  ${Cyan}${NC}"
