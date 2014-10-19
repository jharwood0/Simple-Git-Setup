echo "##~Please install git first~##"
echo "Please enter a name:"
read name
echo "please enter an email address:"
read email
user_name="git config --global user.name \"$name\" "
email_address="git config --global user.email \"$email\" "
eval $user_name
eval $email_address
echo "All Done!"
git config -l
