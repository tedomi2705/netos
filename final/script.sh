#!/bin/bash

for user in $(cat /data/usr.txt)
do
    if id -u $user >/dev/null 2>&1; then
        echo "User $user exists."
    else
        echo "User $user does not exist. Creating..."
        useradd -m $user
        echo $user:changeme | chpasswd
    fi
    # doi mat khau thanh 12345678
    echo $user:12345678 | chpasswd

    if sudo -u $user test ! -r /data/thuvien; then
        echo "User $user does not have read permission on /data/thuvien. Granting..."
        sudo setfacl -m u:$user:r /data/thuvien
    fi

    expiry_date=$(chage -l $user | grep "Password expires" | awk -F': ' '{print $2}')
    if [ "$expiry_date" != "never" ]; then
        expiry_date_sec=$(date -d "$expiry_date" +%s)
        current_date_sec=$(date +%s)
        diff_days=$(( (expiry_date_sec - current_date_sec) / 86400 ))
        if [[ $diff_days -le 7 ]]; then
            echo "User $user: ban can thay doi mat khau trong vong $diff_days ngay."
        fi
    fi

done
