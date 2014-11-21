set -x
if read -t 5 -sp "Enter the password>" secret;then
    echo -e "\nthe input is $secret"
else
    echo -e "\nTime out!">&2
    exit 1
fi
set +x

FILE=/etc/passwd

read -p "Enter a user name >" user_name
file_info=$(grep "^user_name:" $FILE)
if [ -n "$file_info" ]; then
    IFS=":" read user pw uid gid name home shell <<< "$file_info"
    echo "User='$user'"
    echo "Uid='$uid'"
    echo "Gid='$gid'"
    echo "Full name='$name'"
    echo "Home Dir='$home'"
    echo "shell='$shell'"
else
    echo "No such person 'user_name'"
fi
