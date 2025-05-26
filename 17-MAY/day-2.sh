#!/bin/bash
echo "War..."
echo "Enter Your name:"
read -r name
if [ "$name" == "admin" ]; then
    echo "full access"
elif [ "$name" == "user" ];then 
    echo "User Access"
else 
    echo "Access Denied..!"
fi

