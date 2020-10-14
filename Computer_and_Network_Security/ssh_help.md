# Help with SSH and related commands

## How to SSH
1. First you need your username on the ssh server ``username``

2. Then you need the address of the server, for this exam 1 it is ``exam1.hacking.fans``

3. Then you put them together ``username@exam1.hacking.fans``

4. After entering you ssh passphrase you should be logged in

## How to transfer files
### SCP
Similar to ssh, you need your username and the address of the server ``username@exam1.hacking.fans``

#### Sending files to server
1. Create a file ``my_file.txt``

2. Send file to your directory on the server ``scp my_file.txt username@exam1.hacking.fans:/home/username/``

#### Receiving files from server
1. File on the server ``server_file.txt``

2. What you want the file to be saved as ``my_copy.txt``

3. Tell the server to send you the file and save it on your machine ``scp username@exam1.hacking.fans:/home/username/server_file.txt my_copy.txt``
