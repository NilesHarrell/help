# GPG command cheat sheet
## Sending public key
### Copy/Paste 
1. Export public key to a file ``gpg --export --armor name@example.com > my_key.pub``

2. Display file ``cat my_key.pub``

3. Copy public key

4. Go to http://keys.gnupg.net/ and paste key

### Command line
1. Find the key id ``gpg --keyid-format LONG --list-keys name@example.com``

2. This results in:

```
pub   rsa4096/ABCDEF0123456789 2018-01-01 [SCEA] [expires: 2021-01-01]
      ABCDEF0123456789ABCDEF0123456789
uid              [ ultimate ] name
```

3. Copy the key id after the rsa4096: ``ABCDEF0123456789``

4. Send it to the key server ``gpg --keyserver keys.gnupg.net --send-keys ABCDEF0123456789``

## Importing a public key
### Copy/Paste
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
## Helpful commands
1. Gpg help
``
gpg -h
``
2. List gpg keys
``
gpg -k
``
