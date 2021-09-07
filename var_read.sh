#!/bin/bash

echo ====Type1====

echo -n Your Name:
read NAME
echo -n Your Age:
read AGE
echo ===Employee Details===
echo AGE=$AGE
echo NAME=$NAME


echo =====TYPE2======

read -p "Your LastName: " NAME
read -sp "Your DOB: " DATE
echo
echo "My lastname: $NAME"
echo
echo "My DOB: $DATE"

echo ====TYPE3======

read HOSTNAME < /etc/hosts
echo $HOSTNAME
