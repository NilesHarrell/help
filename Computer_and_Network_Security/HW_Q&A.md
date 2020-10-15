# HW 1

1. The Internet backbone consists of a group of regional ISPs   **False**

2. Elements within the Internet core are typically interconnected with **Fiber**

3. Routers operate at **Layer 3**

4. Statistical multiplexing is an efficient method for packet switching **True**

5. Assume the following: (1) the propagation delay between browser and server is 100
ms, (2) the transmission rate of the link is 10 Mbps, (3) a web page, base HTML file
100 Kbytes in length, contains two images of 1000 KBytes each. Compute the total
delay when a browser downloads this web page given the use of non-persistent HTTP
with Parallel TCP Connections and neglecting all other delays. **2480ms**

6. The application layer interface within a host is called the: **Application programming interface and Socket**

7. If a FTP connection message is to be sent to a FTP server, the destination port number to be used is **21**

8. Cookies can be used to **Identify a user and Obtain a considerable amount of data about a user**

9. If the proxy does not have the most up-to-date version of an object, HTTP will use the following method to obtain it **The Conditoional Get method**

10. Because of its importance, the DNS service is centralized. **False**

11. ICANN maintains the IP addresses for all the authoritative DNS servers. **True** 

12. Company x must put its NS RR at the __________ name server. **Top-Level Domain** 

13. Company x must put its MX RR at the ______ name server. **Authoritative**

# HW 2

1. XML provides the foundation for storing and exchanging data across different operating systems **True**

2. PHP is the Post Hypertext Processor script language for the server side **True**

3. TCP packets are limited to 64 kilobytes for datagrams **False**

4. A fundamental difference between TCP and UDP is that TCP is connection-oriented, while UDP is connectionless **True**

Use this picture for questions 5-8

![alt text][HW2.1]

5. What is the Source MAC Address for a frame traveling from Station A to Station B in the following network. **00-50-12-FB-76-CP**

6. What is the Source IP Address for a frame traveling from Station A to Station B in the following network. **131.204.1.2**

7. What is the Router IP Address for a frame traveling from Station A to Station B in the following network. **131.204.1.1 and 131.204.10.1**

8. What is the Destination IP Address for a frame traveling from Station A to Station B in the following network. **131.204.10.3**

9. Which of the following functions are performed by the network layer? **Routing**

10. Virtual circuits provide a reserved link from source interface to destination interface. **True**

11. Marking traffic for a certain priority which corresponds to a specific QoS is done by **Originating equipment and VLAN Switch and Router**

12. CIDR **Eliminates the class limitations resulting form the network ID and Is the representation used for configuring routers and firewalls**

13. The information needed to map from IP address to MAC address within each host is saved in the ARP cache. **True**

14. When a host joins a network, it can dynamically obtain its IP address from the net-work DHCP server. **True**

15. What is the only destination from W that does not use the X router link? 

![alt text][HW2.2]

**Y**

16. Routing tables are generated **Statically and Dynamically**

[HW2.1]: https://github.com/Spencer-Kotys/help/blob/main/Computer_and_Network_Security/Pictures/HW2.1.png "HW2.1"
[HW2.2]: https://github.com/Spencer-Kotys/help/blob/main/Computer_and_Network_Security/Pictures/HW2.2.png "HW2.2"

# HW 3

The following HTTP response and request data corresponds to the sequence of events outlined in Figure P14.1: S1 = 1000, A1 = 2000, L1 = 100 and L2 = 1500.

![alt text][HW3.1]

1.What is value for X? **2000**

2. What is value for Y? **1100**

3. What is value for Z? **0**

4. What is value for S2? **2000**

5. What is value for A2? **1100**

6. What is value for S3? **1100**

7. What is value for A3? **3500**

8. What is value for L3? **0**

9. Given the simple acknowledgment scheme shown in the figure and the following
data: L = 10,000 bits, R = 1 Gbps, and RTT = 0.07 s, determine the link utilization.

![alt text][HW3.2]

**.0001428**  **EQUATION for Link Utilization: (L/R)/[RTT + (L/R)]**

Use the following picture for questions 10 and 11

![alt text][HW3.3]

10. If a sender sends N packets to a receiver in a pipelined fashion, as outlined in the figure, and the parameters are L = 10,000 bits, R = 1 Gbps, RTT = 0.07 s, the trans-mission delay D TR = L/R and N = 2, determine the link utilization. **.0002857**

11. If a sender sends N packets to a receiver in a pipelined fashion, as outlined in the figure, and the parameters are L = 10,000 bits, R = 1 Gbps, RTT = 0.07 s, the trans-mission delay D TR = L/R and N = 2. Determine the minimum window size at the receiver. **20000 bits**

12. The sending host uses transport protocols to break application layer messages into segments and pass them to the link layer. **False**

13. The security property that indicates that only the receiver or sender is able to understand the contents of a message is called? **Confidentiality**

14. Attacks that disrupt or block availability are known as **DDoS attacks**

15. The assurance that information is not altered by elements along the communication path is known as **Integrity**

16. Eavesdropping and packet sniffing are considered to be attacks on **Confidentiality**

17. Identity theft and password cracking are considered to be attacks on **Authentication**

18. Conficker is unusual in that it is worm as well as a rootkit. **True**

19. When an individual is under a personal phishing attack, the attack is called **Spear phishing**

20. Once a hacker installs a MBR rootkit on a machine, the hacker has complete control of the machine. **True**

21. Trojan horses, viruses and rootkits are examples of malicious programs that **Propagate independently** 

22. Worms and Zombies are examples of malicious programs that **Propagate independently**

23. Buffer overflows are a serious security issue of some software. **True**

24. Firewalls can block traffic between the internal network and the **Internet and DMZ**

25. VPN traffic is allowed through the firewall. **True**

26. A firewall passes or blocks traffic based upon **IP address and Port number**

27. The TCP port numbers greater than 1024 are used for servers with TCP connections in a stateless packet filtering environment. **True**

[HW3.1]: https://github.com/Spencer-Kotys/help/blob/main/Computer_and_Network_Security/Pictures/HW3.1.png "HW3.1"
[HW3.2]: https://github.com/Spencer-Kotys/help/blob/main/Computer_and_Network_Security/Pictures/HW3.2.png "HW3.2"
[HW3.3]: https://github.com/Spencer-Kotys/help/blob/main/Computer_and_Network_Security/Pictures/HW3.3.png "HW3.3"
