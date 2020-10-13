# GPG command cheat sheet
## Importing a public key
1. Copy public key from keyserver

2. Create a new file
``
nano newfile.txt
``

3. Paste public key into file

4. Import key
``
gpg --import newfile.txt
``
## Sending a message
1. Create message
``
nano newmessage.txt
``

2. Encrypt the message and output ASCII
``
gpg -e -a -r recipient newmessage.txt
``
3. Display output
``
cat newmessage.txt.asc
``

4. Copy message and send
## Reciving a message
1. Copy the message

2. Create a newfile
``
nano message.txt
``

3. Paste the message into the file

4. Decrypt the file
``
gpg -d message.txt
``
