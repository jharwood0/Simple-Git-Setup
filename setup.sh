#!/bin/bash

echo "##~Please install git first~##"
echo "Please enter a name:"
read name
echo "please enter an email address:"
read email
user_name="git config --global user.name \"$name\" "
email_address="git config --global user.email \"$email\" "
eval $user_name
eval $email_address
echo "Would you like to cache your username and password?(y/n)"
read yn
if [ "$yn" = "y" ]
then
	cache="git config --global credential.helper 'cache --timeout=3600'"
	eval $cache
fi
echo "Would you like to set your default editor?"
read yn
if [ "$yn" = "y" ]
	echo "Please enter your default editor:(emacs,vim,nano, etc..)"
	read editor
	edit="git config --global core.editor $editor"
	eval $edit
fi
echo "All Done!"
git config -list
