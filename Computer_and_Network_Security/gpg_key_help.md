# GPG command cheat sheet
# Importing a public key
1. copy public key from keyserver

2. create a new file
``
nano newfile.txt
``

3. paste public key into file

4. import key
``
gpg --import newfile.txt
``
