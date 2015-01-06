#!/bin/bash

out=$(git)
if [ $? == 0 ]
then
	echo "Please install git first!"
	exit
fi
echo "Please enter a name:"
read name
echo "please enter an email address:"
read email
out=$(git config --global user.name "$name")
out=$(git config --global user.email "$email")
echo "Would you like to cache your username and password?(y/n)"
read yn
if [ "$yn" = "y" ]
then
	out=$(git config --global credential.helper 'cache --timeout=3600')
fi
echo "Would you like to set your default editor?(y/n)"
read yn
if [ "$yn" = "y" ]
then
	echo "Please enter your default editor:(emacs,vim,nano, etc..)"
	read editor
	out=$(git config --global core.editor $editor)


fi
echo "All Done!"
git config --list
