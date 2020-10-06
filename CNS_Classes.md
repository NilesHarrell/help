# Class 00 -- Introduction

## What is Git and how do we use it!

* Git is a version control system developed by Linux Torvolds to version control the Linux Kernel
* Git is a series of pointers that enable content (Blobs) to be managed. Learn [How Git Works]
* Three videos I have made may also help and I **suggest** watching if you are not comfortable: 
  * [Video 1] -- Git Basics
  * [Video 2] -- Push Pull GitHub
  * [Video 3] -- Merge and Fork

![Git Usage]

<!--

In its most basic form Git is a version control system initially developed by Linus Torvolds in 2005 to enable a distributed non-centralized way to track and manage changes to the Linux kernel. It is currenlyt at 87% market share according to [Wikipedia]

We will notice by watching [How Git Works] that git keeps your files organized by using a series of compressed files to keep track of files and versions by their SHA1 hash. It is important to note that one can version control anything on a computer, file, photo, music... But the most efficient method not to version control your Microsoft Word file, because it is wrapped in an XML warpper. It would be to store content as text, which we do in this class and will take about a little later. Think of storing code in text form and you are on the right track. You will find that Git can be used in a distributed form with GitHub or GitLab, both are hosted cloud instances that help you share, store and collaborate code. On these platforms it is not uncommon to store code as well as complied binaries depending.

We could spend the rest of the year studying Git guts but lets just watch this **suggested** video. [More Git Guts]

Watch the internals with:

```bash
mkdir fooproject
cd fooproject/
watch -n 1 -d find .
```
-->

## Working with GitHub/GitLab

* GitHub will be used as a central repository for all class content
* GitHub can be used to version control any text content
* Class content is written in [Markdown] and rendered into documents with [Pandoc]
* Class content is "alive" and changes will be made often 


<!--
This course is going to be very different from other courses. You will genearlly not be told "how" to do something, only "what" we are trying to accomplish and sometimes you will be provided a method in which to do it. To that point I have attempted a unique method of managing the class by using a GitHub repository as the text bases for the class. Every class is written in [Markdown] which is:

`"a lightweight markup language with plain-text-formatting syntax, created in 2004 by John Gruber with Aaron Swartz. Markdown is often used to format readme files, for writing messages in online discussion forums, and to create rich text using a plain text editor. [Markdown Wikipedia]`

That means that everything in the class is either text, including formatting, or a picture that is referenced with a link. Lets take a look at some examples, navigate to [https://github.com/macee/cns/blob/master/class_00_introduction/class_00.md]

You will notice that you see a folder structure that shows you are in `cns/clas_00_introduction/class_00.md` to the left of this folder you see that there is a "Branch" which shows you what branch you are on in the repositry tree:

![GitHub1]

You will be able to drop down the branch list to see all the branches used in this repository. A branch enables the tracking of changes without touching the main code base. For example, I like to keep the master branch clean until the course is finished and then merge all changes from that course into Master, for that reason we are going to use **2020F** for the year and semester (year 2020, F = Fall). **So if you seem lost remember to check your branch.** 

When you make make changes and the **Commit** them to the repository. An important concept to understand is that the **Repository** is the package of all the information of the product and currently can be **Cloned** from the **Remote** which in this case is GitHub and once cloned will live on your local machine.

Lets start with cloning a repository:


Working with GitHub to not only get the class content but also make your own adjustments to the content. Getting started is as easy as:

1) Setup an account at [GitHub]
2) Send your GitHub name to the instructor on Slack
3) Once you have access to the repo poke around using the navigation links under the black bar on the top of the screen. Move to the class of the day. You should notice a little pen icon in the upper corner of the file display window.
4) If you find an edit you want to make simply click the **pen icon** and you will enable editing. GitHub automagically creates a fork of the project for you in the background and when you are done it will ask you if you want to submit your edits in a pull request.
5) Submit your edits using the **Pull Requst** to send them to the instructor for review and possible inclusion into class!
-->



[Intro Video]:https://youtu.be/uSZBvO44A3A
[Skillport]:https://cg.portal.uscg.mil/training/SitePages/Skillport.aspx 
[CG Portal]:https://cg.portal.uscg.mil
[GitHub]:https://github.com
[Hello World]:https://guides.github.com/activities/hello-world/
[Markdown]:https://www.markdownguide.org/getting-started/
[Pandoc]:https://pandoc.org/
[cns.hacking.fans]:http://cns.hacking.fans/
[https://github.com/macee/cns/blob/master/class_00_introduction/class_00.md]:https://github.com/macee/cns/blob/master/class_00_introduction/class_00.md
[WSL]:https://docs.microsoft.com/en-us/windows/wsl/about
[Ultimate Guide]:https://adamtheautomator.com/windows-subsystem-for-linux/
[Install WSL]:https://docs.microsoft.com/en-us/windows/wsl/install-win10
[How Git Works]:https://www.youtube.com/watch?v=P6jD966jzlk
[More Git Guts]:https://www.youtube.com/watch?v=lG90LZotrpo
[Git Usage]: https://cga.sfo2.digitaloceanspaces.com/cns/images/git_usage.png
[Video 1]:https://youtu.be/4rxQTbxlVIU
[Video 2]:https://youtu.be/5H-0bZqe6jI
[VIdeo 3]:https://youtu.be/EOYWH0hMEWg
[Wikipedia]:https://en.wikipedia.org/wiki/Git
[Markdown Wikipedia]:https://en.wikipedia.org/wiki/Markdown
[Install WSL]:https://youtu.be/8ExUMQJCXDA
[Hello World]:https://guides.github.com/activities/hello-world/
[GitHub Guides]:https://guides.github.com/

# Class 01 -- Hypervisors
## Definitions

* SAN -- Storage Area Network
* NAS -- Network Attached Storage
* VDI -- Virtual Desktop Infrastructure
* CPU -- Central Processing Unit
* GPU -- Graphics Processing Unit
## Virtualization

![A Picture is worth 1000 words](https://mk0resourcesinfm536w.kinstacdn.com/wp-content/uploads/1-123.png)

## What is virtualization

* Creating something that is "virtual" vs "physical"
  * Virtual Compute Resources
  * Virtual Storage
  * Virtual Network Resources
* A host (or group of hosts) abstracts the resources allowing a pool of resources to be broken up into smaller groups
* The host is often called a **"Hypervisor"**

<!--

Back in the olden days we had one server for each... server. So if you needed a mail server you went to Dell and purchased a server that had the Ram CPU and Disk space needed for the sizing of your application. As you can imagine as your company matured you started to plan for sizing for the life of the server. So you really planned 5 years out based on some growth number you assumed based on some pie in the sky agressive growth plan. If you didn't, the sever would be too small and you would need to replace before the end of its life (usually 5 years). You normally purchased a server that was larger so you didn't get caught needing a new server. Imagine you do the same for your Domain Controller, Database Server, Web Server, ticketing system, etc etc. You had lots of servers, racks of server. Each would have some issue over the lifetime of service that involved power supplies, scheduled maintenance and upgrades and disk failure. When that happened that service went down. You would need to set up a whole different data center so in the event of a natural disaster you could keep running... More servers. More hardware. More maintenance. More Breakage.

In walk virtualization. The idea is not new, using a computer for more than one thing, dating back to the early days of the Berkley Sofwared Distribution and the MIT MAC (Multiple Acces Computer) Project. MIT needed the ability to use compute resources. GE won the bid to provide it but IBM took notice and created the CP-40 Mainframe which led to the CP-67 which was the first commercial Main Frame to support Virtualization. It ran CP/CMS (Control Program/Console Monitor System) to enable the utilization of a time shared computer. The system was tuned and released by 1972. At this point main frames did have other systems of time sharing but that invovled allocating resources which as you can imagine is not as efficient as **sharing** resources across environments, it also had the feature of allowing each tenant to have their own operating system and not need to share a system with someone else who could be doing something compleately differnt. In essance the hardware was running two things at the same time. The other approch was to have multiple users and seperate their usage in a multi user environment. This was what MAC at MIT worked on and called multiCS which later continued research at Bell Labs and became Unix. The CP differed because it was an entire sepearte operating system not user land. Unix took a differnt path however as opposed as virtualizaing the entire OS it focused on making software portable at the applcaition level and was the first to make application virtualization. The process contuied with Sun Microsystems project "Stealth" that later became Java. The idea being you write for Java and anything with the Java Runtime Environment can run that application. This made cross-platform protablility much easier. Java would create a "Java Pyte Code" that then was complied at run time on the end device. 

In 1987 a company called Insignia Solutions made a product called SoftPC that allowed MS-DOS Applications to run on UNIX workstaitons. They extended this by adding support for the MAC OS. This opened up for other vendors to make similar products. Apple made Virtual PC and sold it to Connectix. In 1998 a company called VMware was established and started making the VMware Workstation in 1999. Like the other offerings it was able to allow users in different systems on their system. As we will learn of all the companies VMware was the one that stuck and is one of the market leaders today along with a handfull of others. In 2001 VMware released the ESX Server that was a system designed to host Virtual Machines. Microsoft purchaed COnnectix in 2003 and released Microsoft Virtual PC 2004 and Microsoft Virtual Server 2005. Lastly Citrix purchased an open source project called Xen, started in 2003, and relased XenServer.
-->

## Type 1 and Type 2 Hypervisors

* Type 1 is **"Bare Metal"** Hypervisor meaning it is installed directly on the physical machine
  * Limited other functionallity other than acting as a hypervisor - i.e. doesnt have the capability for normal dekstop functions like use a browser and send/receive emails.
  * Traditionally they are lightweight and optimized for performance
  * No traditional operating system or desktop
  * Some examples: VMware ESXi, Citrix Xen, Oracle KVM
* Type 2 is the **Desktop** Hypervisor meaning it is an application on your host operating system used to abstract the system resoucres
  * Also known as **"Hosted Hypervisor"**
  * Relies on the hosts Operating System to control various aspect of managing CPU and Memory
  * Some examples: VirtualBox, VMware Workstation, KVM

<!--

There are two main types of Hypervisors. Type 1 is a lightweight operating system that is optimized for running on physical hardware and that alone also known as "Bare Metal". The most common version of this is ESXi which is made by VMware. You are use ESXi for free but in order to unlock the more advanced features you will need additional software. A Type 1 Hypervisor has little other function other than hosting virtual resources. It its core you do little else. ESXi has a limited GUI that enables networking and password options but most administartion is done in the web browser. The current system just transition to an HTML5 base off of the legacy Flash version. It is in this web interface that you can start and stop machines, make machines from an installer disk, allocate and adjust resources and many other tasks.

The second, Type 2, is a desktop hypervisor that is used to run another machine on your current operating system. This is a piece of software that sits on your operating system and utilizes native hardware access and the operating system to control the differnt aspects of managment of the virtual resoruces. In prior classes you have used VMware Workstat

-->
 In addition to that, Bare metal hypervisors (type 1) are faster and more efficient as they do not need to go through the operating system and other layers that usually make hosted hypervisors slower. Type I hypervisors are also more secure than type II hypervisors.
Hosted hypervisors, on the other hand, are much easier to set up than bare metal hypervisors because you have an OS to work with. These are also compatible with a broad range of hardware.

### Visually Type 1 vs Type 2


![How Many Layers?](https://img.vembu.com/wp-content/uploads/2019/12/Hypervisor-Types.png)

## Why Bother Virtualizing

![So many resources](https://cga.sfo2.digitaloceanspaces.com/cns/images/why_virtualize.png)

### So Many Benefits

* Increase hardware Utilization
* Share unused resources
* More resources
* Isolate hardware from OS - another layer of security 
* Move resouces accross different physical server
* Increase efficiency and productivity

<!--

When the world started to move to virtualization it was now possible to buy hardware for average load as opposed to peak load. I like to think of it like a water tower, in a water system you need be able to provide water pressure via pumps. If you don't have a water tower you need enough pumps for the max possible usage to maintain pressure. As you can imagine that max condition could only be for a moment and after the pump will no longer be needed. The water tower is built into the system to provide a means to provide pressure when demand is high and then replenish when the load is low. It enables the capacity of the pumps to be sized to average usage verus max usage. This is what the hypervisor does. It provides the ability to pool reasource so you have one pool that enables reduction of hardware and ability to build to what your system average load is. Many times not all CPUs will of VMs will be burning at the same time, not all memory will be 100% utilized. The hypervisor takes advantage of that!

-->

#### So Many Benefits -- Desktop Edition

* Type 2 Hypervisors
  * Test out new stuff!
  * Run Linux as your host and still have Windows
  * Try out sketchy software

<!--

Type two hypervisors are for desktops. They enable you to have a host and run whatever guests you may want on them. There are various type 2 hypervisors. We will get some exposure to Virtualbox, and VMware Workstaion. If you have a Mac Workstation is called VMware Fusion and the free version is VMware Player. There are a few other Type 2 hypervisors but those are the major ones. You can use a vm to do lots of things. For example, I have some software for my boat engine from Evinrude. I didn't want to install it on my daily driver because it would be another thing and it was only for Windows (I normally use Linux). So I made a Windows VM and installed the software and was able to pass the USB port with the cable connected to the engine through directly to the VM and voila! It worked. Now that VM can live on a jump drive and work on any machine that has the Type 2 hybervisor on it. When I need to see what malware will do I use that same method to test something out, it is a great way to sandbox a machine. As a note, some malware is VM aware and will not run in a VM so you normally need to try to trick it in various ways, but that is for another day!

-->
https://www.youtube.com/watch?v=dckSc61WS6w   visit the website for good explainations about type 1 and 2 virtualization too.

## Moving to the CLOUD

**The Cloud:** *A pool of resources of storage, compute, and memory available*

* As you span physical hosts you can span geographic datacenters
* Live migration and failover as well as geographic migration usher in an unprecidented era of avaliability

<!--

So what is The Cloud? We have had various clouds for some time. The idea of a cloud is just a pool of resources of storage, compute, and memory that is avaliable to you. Public clouds are Amazon Web Services (AWS), Google Cloud Platform (GCP) and Microsoft Azure. Those major public clouds provide daily and hourly rates for various different resources priced by size and capablity. The public clouds have provided everything from Database as a Service to VMs and storage. We use the cloud in this class to host the content for the class in what is known as an S3 bucket (Super Simple Storage) which is a term from Amazon, the class content is actually in a smaller developer centeric cloud called Digital Ocean and they call the S3 Bucket "Spaces" but that is besides the point. The storage is one tool that provides an Application Programing Interfaces (API) to enable you to interact with the resouces in an automated fasion. This means you can spin up VMs and move them with a short bit of code. The tool we are going to use for this is called Terraform, and we will be installing it tomorrow!

In addition to public clouds we can also have Private Clouds, these are clouds you buy and own and they can be either remote or on premisis. An example of a local private cloud is the Cyber Net VMware cluster that Mr. Davis manages. It has a pool of resouces that we can use for class and labs and about as full featured as the above mentioned public clouds. The only difference is that it is completly housed in Mac Hall.

You can imagine that with public clouds you have the issue of storing information on someone elses computer. You get away from that with private clouds but you have another issue, what if your datacenter gets flooded, or burns down? In private clouds you need to take that into account and plan a Disaster Recover Site (DRS) which can be very costly. In a public cloud you can move machines around the world without much effort. This enables migrations to take place and systems to deliver content close to where customers are using them. Think of Netflix, does it make sense for me to stream a movie that is stored in California? It is much more cost effective to have a Content Distribution Network that is palced around the country to enable deliver to be close to the customer. Less bandwidth is less cost. 

-->

## VM Migration

* Enables migration accross physical hosts in a datacenter (in VMware world called vMotion)

You can move memory to different servers. This means that VM's are able to be moved from machine to machine via memory snapshots.

![vMotion]

<!--

We talked about the ability to move machines from one physical host to another. This can be accomplished using various methods, on a private cloud it is called vMotion with the VMware vendor. Imagine you need to take a physical host down to replace a failed power supply or do routine maintenace. Without live migations and virtulaization you would need to turn off that system. In the world where having your service up makes you money this is not ideal. VMs can be migrated (while still running) from one host to another in order to enable service or move machines away from some natural disaster, like a hurricane. While working with the Navy my command needed to migrate machines from the Gulf area to the West Coast to avoid the damage that may occure from a hurricane. All without having any downtime. Take a moment to think about how powerful that is!

-->

## Shared Storage

* Enables single pool of storage on the host (in VMware world calle vSAN)
* Or can mount external SAN or NAS

![vSAN]

<!--

We talked about pooling resources and storage is no different. Virtualization enables shared storage accross hosts. You can have your compute resources on one machine and your storage resouces on another. You can migrate just compute or just storage depending on what you want to accomplish. In the old days you could mount external Network Attached Storage (NAS) or Storage Area Network (SAN) to a single host that had a single service running. This was great because you didn't need to worry about storage failing in your server, you had redundance on your NAS or SAN. Now you can attach the same storage to a pool of resouces and decide what storage resources you need for what application. 

If you have a database that gets lots of random reads and writes you may want to have a pool of storage with Solid State Drives (SSD). If you have a ton of large files that are not accessed often you may to store that data on high capacity hard drives or tape. There are various ways you can streamline a system because you no longer need to have the storage on the same host as your VM.

-->

## Virtual Desktop Infastructure

* VDI enables desktops to be established in the datacenter with little or no required hardware
* Desktop can be accessed from a Thin Client, Zero Client (PC over IP) or Browser (Blast Protocol)
* Enables presistant user storage without presistant VM (new session = new vm with same storage)
* Virtualize Applications only

<!--

As we move to more and more things virtualized you can have virtualized desktops. So imagine you no longer need a computer and you can get a computer with 100's of gigabytes of ram and terrabytes of harddrives. You have access on a small laptop to massive compute Graphics Cards (GPU) or 64 Core Central Processing Units (CPU). This is possible with VDI. VDI enables a small comptuer known as a Thin Client or Zero Client to control a desktop machine in the cloud. You can imagine it doesn't stop there. You are able to separate the user files applications and preferences out from the Operating System and apply those when the machine is started up so you are always starting from a known good base operating system. You can patch the "Gold Image" and set it to boot on all new machines next time they are started up. One may say "Well Mr. Macris what happens if I am off-line?" Great question Mr. Macris, some configuations enable you to synch your VDI instance with a physical laptop so you can travel, when you get back your files and preferencs are pulled and you are back to the cloud!

-->

## One more... Containers

* Docker has enabled shared Host OS kernal and isolated applications and binaries
* Docker is a containerization platform which is a form of virtulization
* Other containerization platforms are BSD Jails

![Containers O My!]

<!--

One more abstraction on the same theme. Containers provide the ability to share the Host OS kernel but isolate the applications. This allows very low overhead because the base of the system is shared and only the differences are isolated. Containers can be run on VMs and can be moved across hosts very easily. A normal web application may have 6 containers consisting of things like storage, database, webserver, load balancer and firewall. As the world starts utilzing containers more and more it is clear the future is moving from Virtual Machines to containers. The leader in container technology is a company and open source project called Docker. Docker is the software that enables the sharing of the host OS kernel. As you start managing containers you need a platform to do that and that is where Kubernetes (K8S) comes in, that is a product made by Google and now managed by a non-profit. It is going to be the base of most clouds moving forward. VMware is even moving their entire vCenter and ESXi onto K8S with the next major release. 

-->
[A Picture is worth 1000 words]:https://cga.sfo2.digitaloceanspaces.com/cns/images/hypervisors.png
[How Many Layers?]:https://img.vembu.com/wp-content/uploads/2019/12/Hypervisor-Types.png
[So many resources]:https://cga.sfo2.digitaloceanspaces.com/cns/images/why_virtualize.png
[So many resources]:https://cga.sfo2.digitaloceanspaces.com/cns/images/why_virtualize.png
[vMotion]:https://cga.sfo2.digitaloceanspaces.com/cns/images/vmotion.png
[History of Containers]:https://blog.aquasec.com/a-brief-history-of-containers-from-1970s-chroot-to-docker-2016
[vSAN]:https://cga.sfo2.digitaloceanspaces.com/cns/images/vsan.png
[Containers O My!]:https://cga.sfo2.digitaloceanspaces.com/cns/images/container.png


# Class 02 -- Intro 2 Linux
## Definitions

* GNU -- GNU is Not Unix
* Bash -- Bourne Again Shell
## Brief History

* Linux developed by Linus Torvalds
* Linux was first announced in 1991 and Linus has continued to lead development since
* The kernel needed supporting applications provided by GNU (GNU is Not Unix)
* Linux is free and open-source

<!--

Linux Torvolds started developing Linux as a project because he was sick of the licensing structure of MINIX (POSIX OS developed in 1987). So as an undergraduate he started writing his own replacement. In 1991 he started developing it and he released the first kerenl 1.0 in 1994 (We are currently at Kernel 5.8). The kernel, the core of the operating system, needed a number of applications around it, the Unix applications were alread being rewritten by an organization known as GNU (GNU is Not Unix). Linux is genearlly licensed under the somewhat permissive GNU GPL v2 and is free and open source. The Linux kernel is hosted at [kernel.org] where you can download and compile your own version as well as all additional information associated with it. You can also view the GitHub of Linux on [Linus' GitHub Page]. Take a look and the project and you can see how the creator of git (and Linux) intended it to be used. 

-->

## Windows vs Linux

* Both systems are Desktop and Server multipurpose operating systems
* Systems are very similar but occupy very different parts of the market
* Windows owns the desktop and business enterprise
* Linux owns the web and supercomputer space
* Linux is generally free to use and pay for support
* Linux runs faster even with older hardware whereas windows are slower compared to Linux.

<!--

I am often asked what is the differenc between Linux and Windows. The answer is that they are both very different and very similar. They both have full featured Desktop and Server varients. They are both used by billions of people every day. You can do most tasks on either (some are better than others). Today, in reality, Microsoft has moved to make Windows more like Linux while trying to maintain all the things that has made Windows sucessful. Linux on the other hand is open source and community driven and rarly needs to incorperate any technology from Microsoft. Depending on how you look at it, Linux is really the most important piece of code the world has ever known. It is the largest project ever, it has the most active users, and it owns every corner of the technology market with the exception of the SMB and legacy corperate environments. Microsft is however very rich and working to buy their way into segements they are losing. Git, the program, is free and open source. So Microsft purchased GitHub. AWS is based on KVM (now Amazon Linux), Microsoft is pouring money into Azure and having only tempered sucess. Microsft had a phone OS that failed, Android is based on Linux and by far the most popular computing device the world has ever seen. The Coast Guard uses Windows, the world uses Linux. Both are impressive pieces of human enginuity, but born out of different beginnings. We use both operating systems in our class because the world is full of both! 

-->


## Why Linux

* It is important to be familiar with both platforms
* Many tools are Linux only (Kali Linux)
* Some jobs are easier on Linux, others are easier on Windows
* Linux allows a user to control every aspect of the operating systems

<!--

Most of the security industry relies heavily on Linux tooks and custom OSes. From foreniscs to reverse engineering Linux by nature does not care about Windows permissions and because of the open nature of the OS it makes it easy to extend and develop tools used by both attackers and defenders. Also, it is assumed that most people have little if any experience with Linux but use Windows every day! As we will dive deeper into both Linux and Windows it was noted by students last year that a short primer would be very helpful. Mainly, we are going to try to get familar with how to use the command line and how build powerful commands and scripts that enable us to do things that are painful and repetitive by hand. We will learn a bit about regular expressions, and redirection as well as some of the best tools for different jobs. 

-->

## What is the Windows of Linux

* The kernel is the lowest level of software in the operating system
* The kernel is responsible for linking hardware and software
* Distributions are tooling built on the kernel, tools like package manager
* Desktops are the Human Machine Interface that can be used to interact with the operating system 

Make sure to check out the [Interactive Distro Timeline]
I would also **recommend** looking at the [History of Linux]
* https://www.digitalocean.com/community/tutorials/brief-history-of-linux 

<!--

When you installed the WSL it doesn't look anything like the Graphical User Interface (GUI) you get in Windows. The core of Linus is the kernel that is responsible for communicating with hardware on your system. For example, if you have a webcam that will need to be supported by the kernel or have a kernel module loaded if it isn't. I just loaded a kernel module for a "virtual webcam" just the other day to facilitate software I am using for class to work with teams. The kernel is responble for connecting the hardware and software. From there you need various systems to start and stop service, manage windows and manage software (in our case "packages"). When all these parts are put together and the finish product is provided it is known as a **distribution** or distro for short. There are a few major ones that come from a few camps, we have been using Ubuntu which is based on **Debian** but the widly deployed distro in enterprise is from Red Hat known as Red Hat Enterprise Linux or RHEL for short. RHEL is open source but the community version is called **CENTOS**. RHEL has a support model that makes it update repositories closed but CENTOS almost exactly the same, infact RHEL gives you a script that changes CENTOS to RHEL by simply changing the logos and the addresses of the repositories. Debian uses the **dpkg** based package manager and RHEL uses the **rpm** package manager, dependencies in Debian are managed by **APT** and by **yum** in REHL. The part you see and interact with known as the GUI are usually only preinstalled on Desktop versions of the OS. Server are usually don't have a Desktop because it is just extra software that is not needed. Desktops do range and you can select whatever desktop suits your needs. Many Linux Distros ust GNOME, KDE or XFCE just to name a few. The idea is that you have ultimate flexability on your system and how it works. You can make your desktop whatever you want it to be.

A Quick Stack from Bottom to top:

* Kernel
* Distro
* Desktop
* Applications

-->

## The Terminal

* We will utilize a Terminal which is a text input/output environment
* Terminals need a shell which is the command interpreter, in our case the Bash Shell (Bourne Again Shell)
* The Bash Shell replaced the Bourne Shell
* There are other shells as well like the csh (C Shell) or FiSH (Friendly Interactive Shell)
* A console is a physical terminal- think keyboard, mouse and screen

For Linux the Fish (friendly interactive shell) works well. Install by typing "sudo apt install fish"
Fish is a Unix based shell that suggests different commands as you type based on what you have already typed into the command line. 

The Linux Bash Terminals are extremely powerful and can accomplish most major computing functions

## The Directory Structure

* Windows assigns drive letters like C:\ to each drive
* Linux assigns a "Special File" which is a block device to each drive
* In Linux you mount the drive to a directory

<!--

```
constantine@pop-os:~$ df -h
Filesystem                             Size  Used Avail Use% Mounted on
/dev/nvme1n1p3                         450G  221G  206G  52% /
/dev/nvme1n1p1                         498M  280M  218M  57% /boot/efi
/dev/nvme1n1p2                         4.0G  2.4G  1.7G  59% /recovery
nas.macris.home:/mnt/nas/shows         8.9T  304G  8.6T   4% /home/constantine/shows
nas.macris.home:/mnt/nas/music         8.8T  128G  8.6T   2% /home/deanna/Music
nas.macris.home:/mnt/nas/vmware        9.1T  424G  8.6T   5% /home/constantine/vcenter
/dev/sda1                              932G  867G   66G  94% /media/constantine/Samsung_T5

```
-->

## More Directories

* You can use the `tree` command to look at directories in Linux
* The directory structure is generally the same across distributions (some slight differences)

<!--
```
constantine@pop-os:~/$ tree -d / -L 1
  /                     # root top level directory

 bin -> usr/bin      # Binairies mapped to user directory
 boot                # Files to boot system
 dev                 # Device files
 etc                 # Host configuation Files
 home                # User home directories
 lib -> usr/lib      # Share libraries and kernel modules
 media               # Mount point for external media
 mnt                 # Mount point for temporary filesystems
 opt                 # Add-on applications (like Slack)
 proc                # Virual filesystem documenting kernel and process status
 root                # Home directory for the root user
 sbin -> usr/sbin    # System binaries mapped to user directory
 srv                 # Data for services
 tmp                 # temporary files
 usr                 # Multi-User utilities and appliations (user settings and binaries)
 var                 # Variable Files
```
-->

## Everything is a file

* Everything in Linux is a file or running process
* Files can be either
  * Ordinary/Regular Files
  * Special Files
  * Directories

## Special Files

* Special files can be either:
  * Block Files -- device files that provide access to system hardware `ls -l /dev | grep "^b"`
  * Character Files -- device files that provide **unbuffered** serial access to system hardware `ls -l /dev | grep "^c"`
  * Symbolic Link Files -- A reference to another file, like a shortcut `ls -l /dev | grep "^l"`
  * Pipe or Named Pipes -- Files that allow inter-process communication `ls -l /dev | grep "^p"`
  * Socket Files -- Sockets are files that enable inter-process communication `ls -l /dev | grep "^s"`

## Directories

* Directories are special files that can store regular files or special files
* `ls -l / | grep "^d"`
* One can make directories with `mkdir`
* One can change directories with `cd`
* One can remove empty directories with `rmdir`

[kernel.org]:kernel.org
[Linus' GitHub Page]:https://github.com/torvalds/linux
[Interactive Distro Timeline]:https://upload.wikimedia.org/wikipedia/commons/1/1b/Linux_Distribution_Timeline.svg
[History of Linux]:https://www.digitalocean.com/community/tutorials/brief-history-of-linux

# Class 03 -- Linux Basic

## Definitions

* SSH  -- Secure Shell
* OTP  -- One Time Password
* FQDN -- Fully Qualified Domain Name


## Linux Commands -- `man`

* Use the command `man` to get a manual page on any other program or command
* Navigate the page using the `j`, `k` keys (down, up)
* Search the manual with `/` (slash) followed by the **enter** key

<!--

The abaility to get help when learning Linux is paramount. To do this we know we have online search engines but that is *not efficient and tends to break you out of what you are working on to grab the mouse or touchpad. Instead you can find **manauls** build into the programs we use. The nice thing about the manuals is that they follow a pretty standard format. There are 8 main sections of the manual, some sections are not present or not used.

| Section |                            Description                           |
|:-------:|:----------------------------------------------------------------:|
| 1       | General commands                                                 |
| 2       | System calls                                                     |
| 3       | Library functions, covering in particular the C standard library |
| 4       | Special files (usually devices, those found in /dev) and drivers |
| 5       | File formats and conventions                                     |
| 6       | Games and screensavers                                           |
| 7       | Miscellanea                                                      |
| 8       | System administration commands and daemons                       |

You can access the man page for a command or program simply with `man <command>` which will bring you to the default **Section 1** or only section depending on what is present. If you want a particular section you can specify it with `man <section> <command>`. You can also simply show all man pages with `man -a <command>.

You can search within man pages with the `/` key which will enable you to seach for text in the body of the man page. If you don't want to enter the search again simply hit the `/` key without any search string and it will default to the last searched string. 

At this point you may wonder how do I get out of this gloruious font of knowledge? Use the `q` button to bring you back into your shell.

-->

## Finding the right command

* Using the `apropos` command one can search man files
* You can get reminders or ideas of new commands
* This is a great resource if you forget a command or need a quick way to find new tools!

<!-- 

Many times it is difficut to remember the exact command you want to use. Going to the internet is again not always the best place to start so you can use built in tools to Linux to remind you of commands you know, or find new commands. For example if you want to find a command to "List Files" we already know that is `ls`. For a moment imagine you forgot the command, you could use the command `apropos list files` to help job your memory. If you do that you get a long list and the `ls` command is in there! What is cool is that you get a great view of differnt commands you never knew about that do simlar things. like `lsattr` which will list file attributes. You can pivot and read about attributes in a Miscellanea section page on attributes with `man attributes` or dig into lsattr with `man lsattr` if you think it will be useful for your work. Learning to navigate the man pages is important, like the VI editor you can navigate with the `j` and `k` keys to go down and up (the arrows also work). It may not seem natural at first but start to notice how many times your hands need to leave the keyboard for a mouse or arrow keys, it is minimized by using keyboard shortcuts and command keys!

-->

## Installing

* Ubuntu uses the APT package manager
* Software is installed via repositories
* The package manager will assist in managing depedencies
* You need to elevate your privledges to install software (generally)
* `apt [OPTION] {command}`

<!--

If you have been playing around in any operating system you know that you will eventually need to install something. The way that Linux approaches this is very different from Windows. Windows issues a self contained binary you know as files with an "exe" extension. This generally brings you to a wizard that helps you install the software and all dependencies. Most of the time libraries for that dependency are incldued and compiled into the binary. Linux utlizes a different approach. The operating system has trusted repositories that it uses. These are public places where software for the system can be pulled from. You can add your own un-trusted repos but most of the tools you need can be obtained from the Distobution Repository. You can use your package manager to update software, install new software, upgrade your operating system, and much much more. The repostories can act as trusted software souces, and you can use remote repos or pull down the software you want and host one locally on your network. This is a very powerful concept for secure computing. The other benefit is that software can simply list dependencies, and the package manager will deconflict those depedencies. If you need a library for XYZ program, and you already have it, then the package manager will know that and not need to install it again. It will also check the repo for udpates and will update ALL that software and everything in the dependecy tree. Say goodbye to opening up software and having it need to get an update, the package manager does that for you.

You can check out the man page for `apt` and start to touch on its function, you will see varous associated programs like `apt-get` and `apt-cache`. We could do a whole class on just the apt package manager but know that you can use it to search with `sudo apt search <program>` or pull new software with `sudo apt update && sudo apt upgrade`
-->

## Navigating and Basics

* Find out where you are with `pwd` Print Working Directory
* Change directory with `cd` 
* List the programs in a directory with `ls`
* Print files to the screen with `cat` (also concatenates files) or `less` (more is less)
* Edit text with `nano`, `vi`, `vim` or `emacs` (nano is easiest)

<!--

To get started it is nice to know some basic commands. To move around a shell in a text based user interface it a few commands will be helpful. Using `pwd` to find out your current location is helpful. Everything is mounted to the root of the file system `/`. From here you will find directories and mount points. Many times your BASH shell will show you the current directory as part of your command prompt for example mine for the CNS repo is: `constantine@pop-os:~/repo/cns$` where it shows `<user>@<host>:<directory>$` When we look the directory we see a few strange things, the `~` (tilde) represent the user's (constantine) home directory (in this case it is /home/constantine). If I were to expand out the path that the command prompt is in it would looke like this:

```bash
constantine@pop-os:~/repo/cns$ pwd
/home/constantine/repo/cns
```

To go backwards from /home/constantine/repo/cns to /home/constantine/repo (go up one directory from cns to repo) you would use the short hand for moving up one directory in the tree which is `..` (two periods) where `.` (one period) represent the current directory, and `..` represent the parent directory. The command would be `cd ..`

```bash
constantine@pop-os:~/repo/cns$ pwd
/home/constantine/repo/cns
constantine@pop-os:~/repo/cns$ cd ..
constantine@pop-os:~/repo$ pwd
/home/constantine/repo
```

If we want to see what is in the directory we will be using a command we have seen before `ls`. Using `ls` will list the contents of the directory. In its more useful form `ls -al` will list files in long format (`-l`) including all hidden files (`-a`)
![ls -al](https://cga.sfo2.digitaloceanspaces.com/cns/images/CapturedImage-16-08-2020%2014-52-08.png)
![ls -al](https://cga.sfo2.digitaloceanspaces.com/cns/images/CapturedImage-16-08-2020%2014-52-00.png)

If we want to see the contents of some the files in a directory we can use the `cat` command. For example lets take the file `syllabus.md`

```bash
constantine@pop-os:~/repo/cns$ head syllabus.md 
---
title: "Syllabus"
subtitle: "Computer and Network Security"
author: "Constantine Macris"
date: "12JAN2020"
titlepage: true
titlepage-color: "2E3B86"
titlepage-text-color: "FFFFFF"
```
You will notice that it will list the text from the whole file (displayed above is only the first few lines)

If you don't want to show the whole document in the shell in line you can use the `less` command that will allow you to scroll through the pages with arrows or specific keys you can find in the help file using the key `h`. Check it out!!

If you want to specifically look at only the first n number of lines you can also check out the `head` command. As you can imagine the last few lines can be displayed with `tail`

-->

## Make Directories, Copy, Move and Remove

* A folder is generally called a **directory** in Linux
* Make a directory with `mkdir` and remove an empty directory with `rmdir`
* You can copy files with the `cp` command. `cp <file to be copied> <destination>`
* If you want to move a file (it will no longer be at the source) use the `mv` command. `mv <file or directory source> <destination>`
* To remove a file you will use the `rm` command.

<!--

In Windows you move and copy files in the file explorer or file manager. In Linux you generally will not have a GUI (however the mechanics of moving and copying files in a GUI are pretty much the same as Windows). You will be using the shell and commands to move and copy files, make directories and otherwise manipulate files. As you can imagine a 2 year old can use most GUIs but it will take a little more time to master the shell commands. The first nuance is that **folders** are called **directories**. You can make directories with `mkdir` or remove directoires with `rmdir`. It is important to note that you can only remove an empty directory in this way. If you would like to remove a directory and its contents you will need to use the `rm -rf <directory name>` **Proceed with caution because Linux will let you delete your entire file system with this command if you issue the root directory as a path** That would be a bad day and the end of that system.

To copy and move files it is somewhat similar, you will using the `cp` command to copy and the `mv` command to move. Copy will make a copy of the file or directory at the source, move will move the entire thing and remove the source. You can get more information on all these commands with the `man` page for each. These command should become second nature. 

Like we said above, the remove command, `rm`, can really ruin your day. Linux will not stop you from removing yourself. But you can remove just about whatever you want with it. 

-->

## Network

* There are various pieces of software that manage system networking
* Modern versions of Ubuntu use the `ip` command
* `ip` allows you to display and change network devices, interfces and tunnels
* Look at your IP address with `ip addr`
* `ip [OPTION] OBJECT {COMMAND | help}`

<!--

The `ip` commanad is an all purpose network command that helps accomplish many networking goals in Linux. At the most basic level it allow you to see what interfaces you have on your system and the IP addresses associated with them. It is, like most of the tools we are talking about, much more powerful. The command will let you set up static routes, manipulate network interfaces, manage and display IP Routing Tables and much much more!

-->

## Remote Connections -- SSH

* SSH -- Secure Shell is a method for remote access to machines
* Provides a secure method for remote access
* Supports multiple authentication modes
  * Passworkd
  * Public/Private Keypair
  * Certificate
  * OTP
* `ssh <user>@<FQDN>`

<!--

A key aspect to working in this course is going to be getting comfortable moving from one machine to another. The most common way to remotely manage Windows machines is by using Remote Desktop Protocol (also supported by Linux) which is comparably heavy weight and insecure. Linux is majorly managed using SSH or Secure Shell. It is a remote access protocol on **port 22** by default that enables remote managment of systems in a LAN or accross a WAN. It is generally considered as secure as the types of encryption and ciphers used and because it is so lightweight it is fast and reliable. In the lab we set up Ansible that uses SSH as a standard means of access into a system. One can set up almost any authentication mechanism for SSH including LDAP (Lightweight Directory Access Protocol), password, token, cert, OTP and many more! We will be using SSH so take a moment to become familiar with the command and the features!

-->

[IP Command Examples]:https://phoenixnap.com/kb/linux-ip-command-examples

# Class 04 Defense in Depth
## Definitions

* NIST -- National Institute of Standandards and Technology
* IA   -- Information Assurance
* DISA -- Defense Information Systems Agency
* RMF  -- Risk Managment Framework
* STIG -- Security Technical Implementation Guide
* SRG  -- Security Requirements Guide
* SCAP -- Security Content Automation Protocol
* APT  -- Advanced Persistant Threats

## References

* [NSA Defense in Depth]
* [Information Assurance Technical Framework]
* [National Information Assurance Partnership]
* [Common Criteria Profiles]
* [NIST RMF]
* [NIST 800-53]
* [NIST Control Familes]
* [Bruce Schneier Defense in Depth]
* [Authentication Management]
* [FireEye APT]

<!--
Above are some references used in class and should be reviewed and treated as **required reading**.
-->

## Introduction

![Depth](https://blog.knowbe4.com/hubfs/Defense_in_Depth.jpg)

<!--
Everyone knows we need security on our information systems. The biggest issue organizations have is where to start. In our first class, we will be exploring a few different government standards for information system security. The first thing we will look as is Defense in Depth. Defense in Depth is the idea that organizations should have layered security much like a historical castle. From there we will talk about the NIST 800-53, which is the security controls for federal systems. As you can imagine and much like exercise routines, there are literally of hundreds of security frameworks out there, including one that uses the same scale as your credit score... The most important aspect of security frameworks is that you adopt one for the right reasons. 
-->

## Defense in Depth

* A best practice guide to security
* Defined by the NSA in a white paper. [Defense in Depth](https://cga.sfo2.digitaloceanspaces.com/cns/nsa-defense-in-depth.pdf)
* Provides high level construct of layered defense model

<!--
Defense in Depth is security layering methodology developed by the National Security Agency. The idea is that by layering security controls and considering a holistic approach to security, you will cover your security bases. The method includes consideration of adversaries, balancing security of people, technology and principals
-->

## Defense in Depth -- Castle

![defense](https://blog.sucuri.net/wp-content/uploads/2016/10/defense-in-depth-castle.jpg)

## Defense in Depth - Adversaries

* Who are your Adversaries?
* What are they trying to achieve?

<!--

When considering the attack surface of any system, it is important to consider who your adversary is. Closely coupled with this theory is how valuable those things you are protecting are. If you have a very expensive jewel in your home, you can expect that you will need to enhance your security posture to protect that highly valuable item. You would expect that the adversary will change from a casual thief to an individual who is targeting your home specifically because of that high value item. Normal locks are no longer adequate and you may consider getting a safe and a security system. If that jewel is worth $10 million, you would expect to spend a substantial sum of money to protect it. The more valuable the target, the more lengths individuals will go to steal it. Who wants what you have and why?
![](https://www.riskmanagementmonitor.com/wp-content/uploads/2016/04/bae-the-usual-suspects.jpg)

-->

## Defense in Depth - Adversaries (part 2)

* Adversaries include Nation States, Terrorists, Criminal Activists, Hackers or Corporate Competitors, etc.
* Motives include intelligence gathering, embarrassment, prestige, monotary gain, etc.
* Attacks include monitoring, active attacks, close-in attacks, exploitation of insider, supply chain attacks, denial of service (DOS), etc.

<!--
For data systems you can expect that adversaries include but are not limited to Nation States, Terrorists, Criminal Elements, Hackers and Corporate Competitors. As you can imagine the adversaries do not need to simply steal data. They can attack any aspect of the C-I-A (A-N) triad. There is a general misconception that one must have something of value to be a target, as described above. With automated scanning and exploitation it doesn't take anything to be a target other than being exposed. Many times the most valuable thing you have is not valuable to the adversary at all but to you. That is why ransomware has become such a problem for businesses in the last number of years. 
-->

## Advanced Persistent Threats

* Usually well organized well funded (Advanced)
* Have objectives that continue across years (Persistent)
* Looking to harm target organizations (Threat)

<!--

Advanced Persistant Threats are highly organized highly technical "enterprises" that utiltize connectivity and technology to obtain tactical, operational and strategic objectives. APTs may be backed by nation states or criminal organizations. They are developing tools techniques and procedures (TTPs) as well as utilizing those avaliable to the public. We will go deep into APTs during our classes dealing with cyber threats but it is important to know that they exist and that they may be called under a number of names depending on who has discovered them. Take a moment to read about some APTs covered by FireEye at [FireEYE APT]. We will discuss mapping APTs using the MITR Att&ck matrix in the next class!

-->

## Information Assurance

* Protection of Confidentiality, Integrity, Availability, Authentication and Non-Repudiation
* Application based on **Protect, Detect, and React** paradigm
* IA requires a balance focus on People, Technology and Operations


<!--
The concept of information assurance is one that we link to "Cyber Security". The application of information assurance is in alignment with the cycle of protect, detect and react. The three relatively simple items combine to a continual improvement cycle which is the heart of any security program. In Defense in Depth Information assurance is the umbrella that attempts to balance people, technology and operations. When we apply these concepts together we get a basic security matrix that can call the defense in depth matrix.

|         | People | Technology | Operation |
|---------|--------|------------|-----------|
| Protect |        |            |           |
| Detect  |        |            |           |
| Respond |        |            |           |

-->

## Information Assurance -- People

* Gain support from top down
* Develop policies, procedures, roles, and responsibilities
* Assure continued training, skills development and accountability
* Includes physical and personnel security

<!--
It is a firm belief that personnel are the only tool that can solve security problems. Today there are hundreds if not thousands of "solutions" that will bombard security teams. When considering people as the core solution we realize it is not simply the ninja security engineer that is needed, but an entire security team. A top down approach requires support from the C-Suite or high level officials. Development of policies, procedures, roles and responsibilities will provide the people with the scaffolding to make good security programs. 
-->

## Information Assurance -- Technology

* Assure the right technology is procured and deployed
* Assure adequate controls support acquisition
* Provide documented configuration guidance

<!--

We have talked about the solution bingo which shows overlapping solutions, solutions such as a service and lots of technology that leads to technology bloat. The simplest implementation that is the easiest to understand tends to be the most secure. It is important in the Defense in Depth construct to procure and deploy the correct technology. This often means that the tool may not be best in class as too many tools that are best in class will conflict with each other. What is often overlooked is the controls around acquisition of technology. One of the largest risks to the DOD is in the form of supply chain risk. It is important to note that in order to claim security during acquisition adequate controls must be established and enforced on the supply chain; in many cases these controls are the same as controls that apply to end systems. Lastly, when implementing technology it is pivotal to have documented configuration guidance. We will be learning about Secure Technical Implementation Guides (STIG) and Security Requirements Guides (SRG) which provide foundations for secure configurations. Additional documentation should be developed to adequately describe your system and allow the security team to fully understand the operational environment.

-->

## Information Assurance -- Principals

* Defense in Multiple Places
* Layered Defense
* Robustness
* Deploy PKI and Key Management
* Deploy Intrusion Detection

<!--
Defense in Depth has a number of principals that are outlined as specific focus areas. Defense in multiple places means not to put all your eggs in one security basket. When considering a castle you have defenses at not only the main gate but also the side gate and the galley entrance, no matter how small always defend every entry! Coupled closely is to layer your defenses, have a gate within a gate in our castle example. Layering defenses is the core concept around Defense in Depth where if one defense fails or is flawed another can take its place. The controls should be robust and have a defined failure state that corresponds to what would be expected, fail safe or fail open depending on the application. A key to any security would be an efficient effective method of key management. Lastly, Depth shows its age by specifying intrusion detection which as become more commonplace in both government and industry.
-->

## Information Assurance -- Operations

* Activities required to be conducted on a day to day basis
* Say what you do, Do what you say, Prove it
* Update your systems
* Protect -- Detect -- React (respond/recover)

![NIST Compliance](https://forescout-wpengine.netdna-ssl.com/wp-content/uploads/2019/07/How-to-Comply-with-the-5-Functions-of-the-Nist-Cybersecurity-Framework-300x179.png)

<!--
I have summarized the entire of operations to a simple ethos of "Say what you do, Do what you say, Prove it." In short you need to document what you do; this enables not just the security team but also an auditor to evaluate the controls you have in place on paper. Do what you say assumes that those controls you have documented are in place and configured to the specifications required. Lastly, prove it by keeping the records and enabling auditing to the level that any third party can come in and verify that the controls are not only being fulfilled but there is a documented trail to prove it. It is important to not just set it and forget but to make security a day-to-day rhythm where you do not simply continue the same process day after day and year after year but continually improve your process and controls so that the safest day you will ever have will be tomorrow. Coupled with this is the concept of continual upgrade cycles. A leading cause of breaches is due to openly vulnerable systems that simply have not been patched. Patch your systems. Lastly we end with the Protect--Detect--React; within the same framework this process is necessary in one form or another, by making it an operational cycle we add it into the toolkit that is our security program.
-->

## Defense in Depth Resources

* [National Information Assurance Partnership](https://www.niap-ccevs.org/)
* [Common Criteria Profiles](https://www.us-cert.gov/bsi/articles/best-practices/requirements-engineering/the-common-criteria)

<!--
Provided here are a number of resources that will assist in familiarity with the Defense in Depth system. 
-->

## NIST Framework

* [NIST RMF](https://csrc.nist.gov/projects/risk-management/risk-management-framework-(RMF)-Overview)
* [NIST 800-76](https://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf)

<!--
NIST has created a number of frameworks as it relates to information assurance controls. If you search a term like "NIST Framework" one will likely find a link to the NIST CSF (Cyber Security Framework) V1.1. This Framework is one specifically designed for critical infrastructure and is a very good place to start and a great suggestion to make for an organization that wants to get started in adopting a cyber security framework. It is complete and free. In your career one will come across a number of standards to help frame a set of controls. For example, the Payment Card industry has combined to create the PCI-DSS which is by most counts the most highly adopted framework in industry based on the ubiquity of payment cards being used in business. ISO 27001/27002 is the ISO interpretation on controls and is again widely used. The Center for Internet Security has 20 controls making up the CISv7 which grew out of the SANS Top 20 Controls. The one we are going to focus on in this in this class is the NIST Special Publication 800-53r4. These are the "Security and Privacy Controls for Federal Information Systems and Organizations". You will likely see and need to navigate these controls working in the government sector. We are going to use the 800-53 as the basis for the next few classes.
-->

## NIST Families

* [NIST Control Families](https://nvd.nist.gov/800-53/Rev4)
* Individual controls grouped in C-I-A on Low-Moderate-High
* For example, a super secret system that doesn't need to be up would be High-High-Low (C-High, I-High, A-High)

<!--
The controls in the 800-53 document can be separate into Low-Moderate-High impact. For example lets look at IA-5 [Authentication Management](https://nvd.nist.gov/800-53/Rev4/control/IA-5) we see that it shows the control, called the "Control Description." This will be the core of the control, in this control it is broken into 10 sub-parts (a-j). We see that for low impact systems we would use "Control Enhancements (1) and (11) which are seen below with additional supplemental guidance. In this case for a low impact system you would have IA-5(1)(a) to IA-5(1)(f) and IA-5(11) which would be an additional 7 Control Enhancements. Likewise you can notice Moderate Impact systems are (1),(2),(3) and (11) which is actually the same as High Impact Systems.

So what are the additional Control Enhancements for?

Additional Control Enhancements are ways to mitigate specific risks to a system. For example if you have a specific system that is developed and has some approved waivers for controls associated with authentication to make development more manageable (tokens or keys) control IA-5(5) may be used to mitigate this when delivery takes place. The focus of this system is to manage risk through understanding risk and providing reasonable mitigation to protect information systems and data. 

-->
 [NSA Defense in Depth]:https://cga.sfo2.digitaloceanspaces.com/cns/nsa-defense-in-depth.pdf
  [Information Assurance Technical Framework]:http://www.iatf.net
  [National Information Assurance Partnership]:https://www.niap-ccevs.org/
  [Common Criteria Profiles]:https://www.us-cert.gov/bsi/articles/best-practices/requirements-engineering/the-common-criteria
  [NIST RMF]:https://csrc.nist.gov/projects/risk-management/risk-management-framework-(RMF)-Overview
  [NIST 800-53]:https://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf
  [NIST Control Familes]:https://nvd.nist.gov/800-53/Rev4
  [Bruce Schneier Defense in Depth]:https://www.schneier.com/blog/archives/2006/02/security_in_the.html
  [Authentication Management]:https://nvd.nist.gov/800-53/Rev4/control/IA-5
  [FireEYE APT]:https://www.fireeye.com/current-threats/apt-groups.html
  
  
