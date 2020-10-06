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
