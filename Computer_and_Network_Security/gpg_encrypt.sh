#!/bin/sh

# script to encrypt pgp messages
# first argument is the message, second argument is the name of the reipient's public key

# prints Input
echo Message: $1
# prints recipient
echo Recipient: $2

# make file
echo $1 > temp.txt

#encrypt file
gpg -e -a -r "$2" --always-trust ./temp.txt

# print encrypted file
cat temp.txt.asc

# delete file
rm temp.txt

# delete file
rm temp.txt.asc
