#!/usr/bin/env bash
echo "Enter username: ";
read username;

if [ ! "$username" ]; then
    username=$(whoami);
    echo "username has been set to: $username";
else
    echo "username has been set to: $username";
fi

echo "Enter a password: ";
read pass1;
echo "Confirm your password: ";
read pass2;
while [ "$pass1" != "$pass2" -o ! ${#pass2} -ge 8 ]; do
    echo "Enter a password: ";
    read pass1;
    echo "Confirm your password: ";
    read pass2;
done

passwordhash=$(echo "$pass2" | md5sum);
printf "username: $username\npassword: $passwordhash\n" >> $1;

# roep aan met: ./maakLogin.sh passwordfile