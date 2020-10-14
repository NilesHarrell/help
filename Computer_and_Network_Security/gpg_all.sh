#!/bin/bash

# PGP message encryption and decryption in ASCII

# Functions

encrypt()
{
        echo "encrypting $message with $recipient public key"

        # create file with message
        echo $message > temp.txt

        # encrypt message
        gpg -e -a -r "$recipient" --always-trust ./temp.txt

        # print encrypted message
        cat temp.txt.asc

        # delete file
        rm temp.txt

        # delete file
        rm temp.txt.asc
} # end of encrypt function

encrypt-sign()
{
        echo "encrypting $message with $recipient public key"

        # create file with message
        echo $message > temp.txt

        # encrypt message
        gpg -es -a -r "$recipient" --always-trust ./temp.txt

        # print encrypted message
        cat temp.txt.asc

        # delete file
        rm temp.txt

        # delete file
        rm temp.txt.asc
} # end of encrypt-sign function

decrypt()
{
        echo decrypt

        # create file with message
        nano temp.asc

        # decrypt message
        gpg -d temp.asc

        # delete file
        rm temp.asc
} # end of decrypt function

help()
{
        echo "Help"
        echo "Usage: ./program [-option] [message] [recipient]"
        echo "Options: -e: encrypt, -es: encrypt and sign, -d: decrypt"
        exit
} # end of help function

# Main

message=
recipient=

while [[ $1 != "" ]] ;
do
        case $1 in
                "-e" )
                        shift
                        message="$1"
                        shift
                        recipient="$1"
                        encrypt ;;
                "-es")
                        shift
                        message="$1"
                        shift
                        recipient="$1"
                        encrypt-sign ;;
                "-d" )
                        decrypt ;;

                "-h" )  help ;;
        esac
        shift
done
