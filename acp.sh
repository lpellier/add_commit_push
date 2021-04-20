#!/bin/bash

BLUE="\e[34m"
RED="\e[31m"
RESET="\e[0m"

BRANCH="$1";
if [ -z "$BRANCH" ]
then
	printf "${BLUE}Please run the following command : \nacp \"branch\"\n${RESET}"
	exit
fi

if [ -e "$PWD/Makefile" ]
then
	printf "${BLUE}Makefile found, cleaning up...${RESET}\n"
	make fclean > /dev/null
fi
git add $PWD
git status
printf "${BLUE}Confirm push ? (y/n)${RED}\n"
read answer
if [ "$answer" = "y" ] || [ "$answer" = "Y" ]
then
	printf "${BLUE}Name your commit:${RED}\n"
	read commit
	if [ -n "$commit" ]
	then
		printf "${RESET}"
		git commit -m "$commit"
		git push origin ${BRANCH}
	else
		printf "${BLUE}You should name your commit.\n"
		printf "Resetting...${RESET}\n"
		git reset
	fi
else
	printf "${BLUE}Resetting...${RESET}\n"
	git reset
fi
printf "${RESET}"
