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
  
  # Class 05 -- STIG/SCAP and Standards
  ## References

* [SCAP Eye Bleeding PPT from 2000's]
* [DISA STIG/SRG -- CAC and Public]
* [Open SCAP]
* [STIG Viewer]
* [CCI Reference]
* [CCI Specification]
* [Validated SCAP Tools]
* [Control to CCI mapping]
* [SCAP Acronyms]
* [SCAP Word Doc]

## Definitions

* CCI  -- Control Correlation Identifier
* DISA -- Defense Information Systems Agency
* STIG -- Security Technical Implementation Guide
* SRG  -- Security Requirements Guide
* SCAP -- Security Content Automation Protocol

## Introduction

* The Defense Information Systems Agency (DISA) publishes Security Technical Implementation Guides (STIGs) and Security Requirements Guides (SRGs)
* STIGs are specific controls used to configure software in a secure manner, a standard
* Security Requirements Guides (SRG) are more broad and give an overview of what a how to secure a class of items

<!--
Welcome to the world of security controls. When we ask, What makes a secure system? The answer in the DOD realm is "STIG it". A STIG is a set of specific controls that are used to make a system more secure, a security baseline. STIGs are specific controls for a specific produce and a specific version. General guidelines are known as SRGs and usually will be written for more general applications like "A Firewall" and has some detail outlining what a firewall should or shouldn't have configured but not how to accomplish that objective. A specific firewall may have a STIG associated with it but in the absence of a STIG an SGR can be adapted for different types of systems like network devices or firewalls. For example in the STIG/SRG files provided there is a STIG for the VMware NSX Distributed Firewall but an SRG for any firewall. That SRG could apply to the VMware NSX distributed Firewall but if the STIG is avaliable you should stick with that!
-->

## Control Correlation Identifier (CCI)

* Serve as a:
  * Standard identifier
  * Description for actionable statements
* Bridge gap between policy documents and specific controls

The the following [Control to CCI mapping] to assist in understanding the progression

<!--

CCIs provide the ability to link policy documents and requirements, like the NIST 800-53 which we will talk about later, to actionable controls like STIGs. The CCI enables an overarching description of the "Control" that can then be applied to various applications which then become Vulns. CCIs tend to lack to details needed for a specific system but enable the SCAP to develop specific controls that can be later used and measured against. If you think about how one would **Correlate** a STIG control accross Operating systems, for example Windows10 to CentOS7, the CCI is how you would do it!

-->

## Security Requirements Guides

* General Guidance for broad categories
* Provides a methodology for a type of technology
* Tend to be vendor agnostic

<!--
As with all things in the government SRGs are derived from a higher level guidance document. That document is the Control Correlation Identifiers (CCIs). The difference is that the SRG provies the control in the lens of the application it is working towards securing. Again take the Firewall we spoke about earlier. The CCI will inform all systems what to do, the SRG will put it in the lens of what to do for a Firewall and the STIG will be the specific settings for a specific piece of hardware. They are used to bridge the gap between CCIs and STIGs where STIGs are more specific and vendor/platform specific. 
-->

## Security Technical Implementation Guide

* STIGs provide the specific process to enable an organization to configure a system.
* Fed from CCIs and SRGs, the STIG is a vendor specific document outlining controls to be implemented
* STIGs are generally viewed and manipulated either using spreadsheets or a program called the **STIG Viewer**
* STIG controls will be OS or software specific and usually provide specific instructions on how to fix and measure the finding

<!--
The STIGs provide a detailed controls on how to secure a system. The STIG controls are written in XML and can be viewed in a browser or some type of viewing tool like the STIG Viewer. The controls are broken into three Categories, Critical (1), Moderate (2), and Low (3). Generally, a "Fully STIGed" will have all the controls implemented but in a functional production environment, it is difficult or impossible to get all the controls in place and have systems still have an acceptable level of useability. The most secure computer is one that is never used, never turned on and stored in a 10 foot thick concrete box. That system is not very useful. Throughout this course we will be focusing on understanding controls and correlation those controls to the risk that it exposes a system to. As a general rule, all CAT 1 controls should be fulfilled, high risk CAT 2 controls should be addressed and POAM items should be made of the balance of CAT 2 controls and as many CAT 3 controls as possible should be implemented with mitigation and acceptance of risk for those that can not be implemented. Using a tool like the STIG Viewer you will get to make comments and assess controls. These tools are similar to those you will expect to see in the fleet, if not the exact same. The important items to remember is where the controls were obtained and endeavoring to understand the risk associated with the vulnerability the control is addressing. 
-->

## SCAP Content

* The Secure Content Automation Protocol enables us not to manually assess and validate STIGS
* Includes various components
* Common terminology/dictionary(CVE,CPE,CCE)
* Measure of badness (CVSS)
* Common language to work on (OVAL, OCIL)

<!--

As with the STIG which is an XML list of specific controls that can be applied to a system, the Secure Content Automation Protocol is an automated process for scanning against standards. Not all STIG and controls are supported because you can only automate so many of the items. The remainder needs to be manually assessed, as we did in Lab 2. The benefit is that the time required to make the assessment is greatly reduced through automation. Please take a moment to reivew the SCAP document provided by NIST [SCAP Word Doc].

-->

## SCAP Compliance Checker (SCC tool)

* SCAP is an automated method of *auto-magically* testing the security controls for various pieces of software or operating systems
* THe SCAP Compliance Checker is only on the NIPR Cyber Exchange
* The SCC supports various types of input and produces STIG Viewer Outputs
* The current version is 1.2 with 1.3 being developed and a 2.0 version posted
* The SCAP Compliance Checker (SCC) is a tool made by Naval Information Warfare Center and can be used for various operating systems

<!--

The SCAP content can be used to automate checking these standards. As with STIG Viewer the SCC tool is a good example of a program made by the US Government and used by the US Government. It will enable you to load SCAP content and run the automated tests against that content. The output can then become the basis for your STIG Viewer Checklist, we will see this during the full hardening lab (Lab 2). There are various tools that can accept the SCAP content but the SCC tool will be the one we use for assessment of Microsoft Windows.

-->

## SCAP Scanner (Others)

* The SCC SCAP tool is not the only "approved version"
* [Validated SCAP Tools] range from OpenSCAP to NESSUS
* For the purpose of the course we will be using and learning about the SCC and OpenSCAP tool centered around Windows 10 and CENTos 7

<!--
There are a number of additional tools that are used for assessment of SCAP content. You willl see in the Validated SCAP Tools above all the industry tools avalible to you to use in the fleet/. 
-->

## Putting it all together

* Lets Track down IA-5(1)(d) -- [Page F-95 of NIST 800-53]
* From the above linked matrix [Control to CCI mapping] we notice that we are left with a few CCI not specific to an operating system.
* Enter the CCIs into the STIG Viewer Program to get specific controls

<!--
There are so many controls and references it is difficult to get a handle on what is what. What we can do now is walk through a controls and identify a few ways we can find CCIs as well as specific Vuln ID numbers for a our IA-5 vulns. We will look specifically at the IA-5 (1) (d) control -- "Enforces password minimum and maximum lifetime restrictions of [Assignment: organization-defined numbers for lifetime minimum, lifetime maximum];".

First, what does [Assignment: organization-defined numbers for lifetime minimum, lifetime maximum] mean?

The control is designed to be flexible depending on the information system rules. It is expected that depending on the risk posture an information system owner will decide what an acceptable minimum password length as well as maximum password length should be. Many times we don't know what good values would be but luckily the STIG has some value identified as well as a method to configure it. In this case we would open the spreadsheet document: [Control to CCI mapping] and use the filter tool to filter on the "IA-5 (1) (d)" (note that the format on the spreadsheet includes spaces where the NIST PDF does not). That will give us about 8 controls:

| Item | CCI        | /cci_items/cci_item/definition                                                             | creator | index        | title                     |
|------|------------|--------------------------------------------------------------------------------------------|---------|--------------|---------------------------|
| 794  | CCI-001616 | The organization defines minimum password lifetime restrictions.                           | NIST    | IA-5 (1) (d) | NIST SP 800-53 Revision 4 |
| 795  | CCI-001617 | The organization defines maximum password lifetime restrictions.                           | NIST    | IA-5 (1) (d) | NIST SP 800-53            |
| 795  | CCI-001617 | The organization defines maximum password lifetime restrictions.                           | NIST    | IA-5 (1) (d) | NIST SP 800-53 Revision 4 |
| 796  | CCI-001618 | The organization defines the number of generations for which password reuse is prohibited. | NIST    | IA-5 (1) (d) | NIST SP 800-53            |
| 826  | CCI-000198 | The information system enforces minimum password lifetime restrictions.                    | NIST    | IA-5 (1) (d) | NIST SP 800-53            |
| 826  | CCI-000198 | The information system enforces minimum password lifetime restrictions.                    | NIST    | IA-5 (1) (d) | NIST SP 800-53 Revision 4 |
| 827  | CCI-000199 | The information system enforces maximum password lifetime restrictions.                    | NIST    | IA-5 (1) (d) | NIST SP 800-53            |
| 827  | CCI-000199 | The information system enforces maximum password lifetime restrictions.                    | NIST    | IA-5 (1) (d) | NIST SP 800-53 Revision 4 |

You can notice the spreadsheet gives us a variety of inputs from various publications. Some are rev 4 others are not, the controls are almost identical. Lets just look at the following CCIs:

| CCI        | /cci_items/cci_item/definition                                          | title                     |
|------------|-------------------------------------------------------------------------|---------------------------|
| CCI-001616 | The organization defines minimum password lifetime restrictions.        | NIST SP 800-53 Revision 4 |
| CCI-001617 | The organization defines maximum password lifetime restrictions.        | NIST SP 800-53 Revision 4 |
| CCI-000198 | The information system enforces minimum password lifetime restrictions. | NIST SP 800-53 Revision 4 |
| CCI-000199 | The information system enforces maximum password lifetime restrictions. | NIST SP 800-53 Revision 4 |

We see there are four tasks broken into two groups:
1) Define Password lifetimes (Max and Min)
2) Enforce Password lifetimes (Max and Min)

We also have 4 CCI numbers associated: CCI-001616, CCI-001617, CCI-000198, CCI-000199

Next we will utilize a tool we used in lab called "STIG Viewer". You can open the program up and filter on some of these CCIs. We have previously loaded in the Windows 10 STIG and by using the "Filter Panel" in the bottom left of the windows we can filter for CCI in the control set. Here I enter each CCI as a filter and search by "Any" under "Must Match". By doing this we end up with **THREE** controls for the Windows 10 STIG.

* V-63371 -- Accounts must be configured to require password expiration.
* V-63419 -- The maximum password age must be configured to 60 days or less.
* V-63421 -- The minimum password age must be configured to at least 1 day.

We we also notice that these controls are technical controls that do not cover CCI-001617 and CCI-001616. How would we fulfill these controls?

What other information does the tool give you?

Why would this specific control be important?

-->
[SCAP Eye Bleeding PPT from 2000's]:https://nvd.nist.gov/scap/docs/SCAP-02112007-IAWS.ppt
[DISA STIG/SRG -- CAC and Public]:https://iase.disa.mil/stigs/
[Open SCAP]:https://www.open-scap.org/
[STIG Viewer]:https://public.cyber.mil/stigs/srg-stig-tools/
[CCI Reference]:https://public.cyber.mil/stigs/cci/
[CCI Specification]:https://dl.dod.cyber.mil/wp-content/uploads/stigs/zip/u_draft_cci_specification_v2r0.2.zip
[Validated SCAP Tools]:https://csrc.nist.gov/Projects/scap-validation-program/Validated-Products-and-Modules
[Control to CCI mapping]:https://csrc.nist.gov/csrc/media/projects/forum/documents/stig-mapping-to-nist-800-53.xlsx
[SCAP Acronyms]:https://www.open-scap.org/resources/acronyms/
[SCAP Word Doc]:https://nvd.nist.gov/scap/docs/SCAP.doc
[Page F-95 of NIST 800-53]:https://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-53r4.pdf

# Class 06 MITRE Att&ck 

## Introduction

* Understanding adversary actions helps understand defense
* Moving from high level threat actions to tactics requires various models
* ATT&CK by MITRE is very much in the "Operational Level"

<!--

We have spent time so far looking at some of the tools we are going to use in class, some of the standards we are going to use to defend against attackers and we briefly talked about attackers last class when we looked at Defense in Depth. With that now we are going to dive a little deeper into some of those attacker TTP (Tactivs Techniques and Procedures) by touching on the MITRE ATT&CK Matrix and Navigator. This is a tool that enables us to tie high level attack models to actionable measurable indicators (be it an Indicator of Compromise or behavioral indicator).

-->
## Definitions

* TTP -- Tactics Techniques and Procedures
* IOC -- Indicator of Compromise 

## References

* [ATT&CK Whitepaper]
* [Lockheed Martin Developed the Cyber Kill Chain]
* [David Bianco's Pyramid of Pain]
* [Pyramid of Pain]
* [ATT&CK V6]
* [Navigator V2]
* [MITRE Workshop Videos]
* [MITRE Workshop Slide Deck]

## High Level

![Lockheed Martin Developed the Cyber Kill Chain]

<!--

The idea that we use models to help us understand what is happening in the world is common. Lockheed Martin developed the Cyber Kill Chain in order to help customers understand how one can break the chain and stop a cyber attack. As with most root cause analysis one can look back and piece together all the things that went wrong before a catastrophic event occurred. Suggested reading if you are interested includes [Root Cause Analysis for Beginners]. It is not a focus of this class but puts the Cyber Kill Chain into perspective, consider it purely optional. 

That being said, there is a series of events that typically occur for an attacker to successfully exploit a system. Many times the phases are combined but as a rule most of these items need to occur to execute a successful attack. The Lockheed Martin Cyber Kill Chain is an example of a High Level Threat model. In our case we need to understand understand that it is a high level model that feeds the MITRE ATT&CK matrix.

-->

## What is MITRE

* A large (8425 employee) not-for-profit 
* Manages federally funded R&D centers for Federal Gov
* Organized into 7 Centers

<!--

MITRE is an American not-for-profit organization that obtains grants from the US Government to operate 7 research and development centers. One of those centers are focused on Cyber Security and for a long time MITRE has been working with security vendors, researchers, and security engineers to make a system that would enable us to understand attackers so we could better defend against them. This is starting to mature now and we are going to use it as a way to translate and combine a lot of cyber threat information into actionable indicators in our network.

-->


## Pyramid of Pain

So why change?

![Pyramid of Pain]
[David Bianco's Pyramid of Pain]

<!--

The idea behind the ATT&CK matrix is that it is tracking things that are hard for adversaries to change. It is said that in old houses one step is made higher than the others and the home owner finds it second nature climbing the stairs daily. It is only when an intruder is in the home that the intruder is not accustomed to the one higher step and may trip alerting the owner. That may be an old Yankee myth but it illustrates how some things we do daily are so ingrained in who we are it is difficult to even notice we do them. In the cyber world these are Tactics Techniques and Procedures. For a more tech example lets take my `.bash_history`. If one was to look at my bash history they would find it filled with specific commands that I use every day to accomplish my goals. Those commands are not exactly what we are focusing on but more how we use them, take these two snippets of code doign the same thing:

Example A
```bash
cd /
ls
cd /var/
ls
cd www
ls
cd html
ls
sudo scp root@123.456.789:/var/www/html/file.html
```

Example B
```bash
ls /var/www/html
sudo curl -o /var/www/html/ http://123.456.789/file.html
```

We notice in both examples a file is being downloaded from a remote source and placed in the /var/www/html/ directory. You can also notice and they both use similar commands. How they accomplish that goal is very different. The top example shows someone poking about and walking through the directory. Example B shows someone who knows where they want to look, listing files and then pulling down the file they need using Curl.

If you see similar commands across systems you can start to learn how that person uses the system and thus start to see subtle finder prints in their work. The above example is exaggerated but think about how you could distinguish between these two individuals from a few lines of bash history.

You will find it is difficult to un-learn how to do things, you normally default to what you are most comfortable with!

-->

## What is ATT&CK

* A method to organize TTPs into categories
* Helps track adversary actions
* Assists in identifying similarities

<!--

Check out the **suggested** [ATT&CK Whitepaper] about the design philosophy. We will be diving into how the ATT&CK matrix is put together for homework/lab this week. The aim of the tool is to lay out common tactics that attackers use in a rough order of how they use them and then list the techniques (and sub-techniques) for those tactics below. By doing this it helps provide a map of how adversaries accomplish their goals. 

-->

## Phases of ATT&CK

* Broken into Tactics (12)
* Under teach tactic are various Techniques
* Inside the Techniques are Procedures (Actual APT observed actions)

[ATT&CK Whitepaper]:https://www.mitre.org/sites/default/files/publications/pr-18-0944-11-mitre-attack-design-and-philosophy.pdf
[Lockheed Martin Developed the Cyber Kill Chain]:https://www.lockheedmartin.com/content/dam/lockheed-martin/rms/photo/cyber/THE-CYBER-KILL-CHAIN-body.png.pc-adaptive.480.high.png
[David Bianco's Pyramid of Pain]:https://detect-respond.blogspot.com/2013/03/the-pyramid-of-pain.html
[Pyramid of Pain]:http://4.bp.blogspot.com/-EDLbyYipz_E/UtnWN7fdGcI/AAAAAAAANno/b4UX5wjNdh0/s1600/Pyramid+of+Pain+v2.png
[ATT&CK V6]:https://attack.mitre.org/versions/v6/
[Navigator V2]:https://mitre-attack.github.io/attack-navigator/v2/enterprise/
[MITRE Workshop Videos]:https://attack.mitre.org/resources/training/cti/
[MITRE Workshop Slide Deck]:https://attack.mitre.org/docs/training-cti/CTI%20Workshop%20Full%20Slides.pdf
[Root Cause Analysis for Beginners]:https://ldh.la.gov/assets/medicaid/hss/docs/NH/RootCauseForBeginners.pdf

# Class 07 Windows Hardening

## Introduction

* Operating system and application hardening is the first and last line of defense
* Consider the OSI Model when looking at holistic hardening of a system

* Consider both desktops, servers and appliances when hardening systems

<!--
Host hardening is what can be considered the first and last line of defense. As one can imagine end users represent the biggest risk to security on any network. Like we spoke about in Defense in Depth the approach should be layered accross the OSI model. When working with the endpoint you need to consider security at every level. From the desktop you consider the vectors that a user will be able to enable/access. For example, a user can only click a link that gets to them from someone else, how do people communicate, how would they get that link? Consider email, web browser, chat. How would an advesary get on your network, where does your internal network cabeling run? Is your data center locked? What will stop malicious activity, do you have AV/AM? Will the operating system keep enough logs to piece togehter what happened? Do you have auditing turned on?

As we have learned with the different standards we were introduced to there are best pratices that we should attempt to follow in this process. We need to consider each use case for machines and limit the system operation to that specicific usecase. A server should be limited in its operation to the services it offers. When additional services are coming from that system it should alert administrators. 
-->

## Learning Outcome

* Describe for Windows (Desktop and Server), the steps necessary for hardening the OS with respect to DISA standards (OSH1)
* Describe for Windows Applications (Chrome, Adobe Reader), the necessary steps for hardening applications with respect for DISA standards
* Understand additional OS and Application hardening tools and standards
* Securely configure Windows (Desktop and Server), remove or shutdown unnecessary components and services, close unnecessary ports and ensure that all patches and updates are applied (OSH2)

<!--

-->

## References

* [Windows 10 Hardening Blog](https://www.microsoft.com/security/blog/2019/04/11/introducing-the-security-configuration-framework-a-prioritized-guide-to-hardening-windows-10/)
* [Microsoft Security Compliance Toolkit](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-security-baselines)
* [Networks Hardening Checklist](https://www.netwrix.com/windows_server_hardening_checklist.html)
* [US Government Configuration Baseline](https://csrc.nist.gov/Projects/United-States-Government-Configuration-Baseline)

<!--

-->

## Definitions

* MBSA -- Microsoft Baseline Security Analyzer
* SCT  -- Microsoft Security Compliance Toolkit

<!--

-->

## Operating System Hardening

* A host is any machine on a network that is given an IP and communicates
* Host Hardening includes Hardware, Operating System and Software (think OSI model)
* A host can also reference the base machine that virtualization sits on or the specific machine (desktop)
* Technically virtual machines have and IP and can communicate on the network however they are normally seperated from "Hosts" by referencing them as "VMs"

<!--
For the purpose of this course we are talking about hardening the operating system, it can be assumed this also can extend to the applications as well as hardware (BIOS etc.) Many times it is important to remember the items in the technology stack. You may also hear OS hardening referred to ask host hardening where the host is implied to be the computer you are working on. The host is the discrete hardware unit. In the case of Hypervisor hosts, the host is the physical machine that make up the datacenter. The Virtual Machines (VMs) sit on top of the hosts thus the VMs have Operating Systems that can be hardened as well as the software specific to interacting with the Hybervisor (usually called "VM Tools"). Normal hardening procedures can be applied to the VM and there are usually hardening standards for the Hybervisor Host (the physical machine).
-->

## Media Verification

* When downloading media it is important to verify the integrity of the file and servers it is coming from
* In Windows this is accomplished by downloading from official Microsoft Servers
* Another common way to verify media is to check the hash of the file

<!--
One of the most important parts of installing an OS is making sure that the system you installing is the intended compiled version the company, in this case Microsoft, intended. This is the **Integrity** of the file. Has the file be modified without the end user knowing. One way to tell this is to check the SSL Certificate on the website. The other way to verify integrity is to use the __file hash__. This method will use a one way cryptographic algorithem to verify that the file is exactly the same and that 

-->

## Windows Media Verfication

![Download](https://cga.sfo2.digitaloceanspaces.com/cns/images/Screenshot%20from%202019-12-31%2011-24-19.png)
<!--
This photo show the download page from the "Microsoft Volume License Service." This is one of the methods one would obtain a version of Windows from. Note that you can get the license key here as well as select various parameters for your installer. The "Info" button will bring up the next screen that gives more info about the file you are going to download.

-->

## Windows Media Verfication SHA hash

![Windows](https://cga.sfo2.digitaloceanspaces.com/cns/images/Screenshot%20from%202019-12-31%2011-45-17.png)

<!--
This image shows you the "Info" screen on the download you selected. Note that the SHA256 Code is posted. As you can imagine you can try to see if this is a valid file using a service like [VirusTotal](https://www.virustotal.com/gui/home/search). This is usually reserved for application data like the calculator shown in class:
```powershell
Get-FileHash C:\Windows\notepad.exe -Algorithm SHA256
```
With the hash you can verify the file is the authentic one. By posting the hash anyone can verify authenticity.

Below is the text version of the hash from the photo:

SHA256: AAE4047F95708C471B52494674EDFAC59D6F2FC5E22112C81E8737D24ECC9B52
File name: en_windows_10_business_editions_version_1809_updated_dec_2019_x64_dvd_2c521206.iso

You can check the file on either Windows or Linux:
## Linux (Terminal)
[How To](https://help.ubuntu.com/community/HowToSHA256SUM)
```bash
sha256sum <<filename>>
```
## Windows (Powershell)
[How To](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/get-filehash?view=powershell-7)
`Get-FileHash <<C:\filepath\filename>> -Algorithm SHA256 | Format-List`
-->

## Microsoft Baseling Security Analyzer

* The MBSA is an example of a tool provided by the OS vendor to assist in configuring a secure system.
* System is useful for measuring patch compliance level for offline machines
* Mostly has been replaced with the Microsoft Security Compliance Toolkit

<!--
The Microsoft Baseline Security Analyzer is a tool made by Microsoft to assist in compliance checking based on patch level. The most basic aspect of OS hardening is to manage patches. In the event that you do not have access to Microsoft Update Servers or Microsoft System Center Configuation Manager (SCCM) servers this tool can give patch level management and an idea of the vulnerabilities the system has based on patch level. There are other methods to obtain this information like powershell scripts, but this tool is useful to have in your toolbox. When a system is offline it is not as easy to make sure what level of patching you are at. 
-->

## Microsoft Security Compliance Toolkit/Manager

* A set of tools for enterprise administrators
* Allows full security configuration baseline lifecycle
* Download--Analyze--Test--Edit--Store

<!--
The Microsoft Security Compliance Toolkit and Manager is a suite of tools and reports avalible for current versions of Windows 10 and Windows Server (1909). The system enables you to, like the STIG and SCAP tools, to load baseline settings for various OS versions and services. These settings range from password complexitiy to update settings. With the hundreds of tailored settings you have the ability to create custom baselines that can be used in place or in conjunction with other tools and baselines. 
* [Microsoft Secirty Compliance Manager](https://www.microsoft.com/en-us/download/details.aspx?id=53353)
* [Microsoft Security Compliance Toolkit](https://www.microsoft.com/en-us/download/details.aspx?id=55319)

As mentioned it is very useful to be familiar with this product for the purpose of developing and deploying custom control sets. 
-->

## Ports Protocols and Services

* Limiting the functionality of the system enables reduction in attack vectors
* If a service is not running it can not be explited
* Use `netstat` to display active TCP conncations, ports on which the computer is listening as well as other useful network info

<!--
It is important to understand what services a computer has running. By limiting these programs you can more easily defend a system. This is a core concept in hardening a system. Expore the [netstat](https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/netstat) as a way to determine this information. Put together a `netstat` command to display your computer stats!
-->

## Active Directory

* A directory service that keeps track of all the information in a network (Users, Computers, Printers, Security Principals)
* The main Active Directory service is the Domain Services (AD DS), which stores directory info and manages interactions of users with the domain.
* Most if not all Government Systems are based on Active Directory

# Class 08 -- Linux Hardening

## Introduction

* Similar to Microsoft Windows Hardening there are standards and tools for hardening *nix systems (Linux, Unix etc)
* You will notice differences in this process since, by its nature, Linux lends itself to automation
* Most Linux systems tend to be used for development or hosting of services so the desktop use-case is minimal

<!--
The SCAP content can be used to automate checking these standards but how can we actually mange compliance at scale. For Windows the approach would be to use Active Directory and Group Policy to push a standard policy to all systems. The downside to this is that one would need to usually import or build that group policy in the system and as described in **Lab 1** this ends up being a very manual process. This
-->
## References

* [OpenSCAP Tutorial](https://blog.learningtree.com/practical-steps-toward-compliance-openscap/)
* [Ansible Hardening](https://github.com/openstack/ansible-hardening)
* [Ansible Compliance](https://www.ansible.com/resources/webinars-training/security-and-compliance-automation-with-ansible)
* [Microsegmentation](https://www.darkreading.com/edge/theedge/a-beginners-guide-to-microsegmentation/b/d-id/1335849)
* [Zero Trust Networks](https://cloud.google.com/beyondcorp/#researchPapers)

## Definitions

* SHA -- [Secure Hashing Algorithems](https://en.wikipedia.org/wiki/Secure_Hash_Algorithms)
* ISO -- [Disk Image in archive format](https://en.wikipedia.org/wiki/ISO_image)
* SSL -- [Old vernacular for Secure Socket Layer now Transport Layer Security](https://en.wikipedia.org/wiki/Transport_Layer_Security)
* DMZ -- [Demilitarized Zone on Network](https://en.wikipedia.org/wiki/DMZ_(computing))
* SSH -- [Secure Shell](https://en.wikipedia.org/wiki/Secure_Shell)

## File Integrity of Install Media

* Similar to the method for Windows
* [Download page and hash are usually found together](https://access.redhat.com/downloads/content/479/ver=/rhel---8/8.1/x86_64/product-software)
* Make sure to check you are at the correct site (Check the SSL Cert)
* Works for software as well as install ISOs

<!--
![Redhat Download Page](https://cga.sfo2.digitaloceanspaces.com/cns/images/Screenshot%20from%202020-01-15%2010-38-30.png)

When downloading media we remember how important it is to check the integrity of the file and server it is coming from. Take a moment to check an SSL/TLS Cert from a page you are downloading. Modern browsers have made is very easy to identify when something is not correct, using the cert you can track back the trust tree to the issuer of the cert and decide how much you trust them. Recall cert authorities can not always (and maybe should never) be trusted. A great reference for this is the [DigiNotar hack](https://threatpost.com/final-report-diginotar-hack-shows-total-compromise-ca-servers-103112/77170/) in 2011. Lets take a moment to check the hash on the RedHat image with the ISO checksum below (also called a digest): 

SHA-256 Checksum: 643e706cf7db9e93e706637af92d80eb58377dd0c64ac1e9ce6a72700aa04c2a

In order to test this checksum you need to use the following command:

### Linux (Terminal)
[How To](https://help.ubuntu.com/community/HowToSHA256SUM)
`sha256sum <<filename>>`

### Windows (Powershell)
[How To](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/get-filehash?view=powershell-7)
`Get-FileHash <<C:\filepath\filename>> -Algorithm SHA256 | Format-List`

-->

## The Principle of Least Privilege

* The concept that anyone should only have the minimum level of privilege need to do job
* Why do nice cars have valet keys?
* This concept applied to individuals and servers

<!--
The idea of least privilege is a very simple one. One does not get more privileges then needed to do the function they are required to do. The issue with this is that most business are not capable of identifying the specific workflow that an employee needs to accomplish in a given year let alone day to day. For example, one would assume that an individual working in the finance department would need access to the web application for reporting daily returns. This user would simply need a web browser capable of accessing one website. This is very easy to lock down. Now we take into account that this individual needs email to communicate with peers and stakeholders. If this individual gets input from others they will most likely provide it via email, possibly as attachments. Other individual from an external partner will then create a spreadsheet to tabulate all the data needed for the reporting. To make life easier this spreadsheet has some macros that enable the spreadsheet to auto-magically make adjustments to the number and format pretty graphs.

As you can see we have gone from a simple system that is easy to lock down to a complex vendor locked system that enables one of the primary vectors for compromise in Microsoft Office Macros. For that reason security is as much a leadership effort as it is a technical effort. Leadership needs to have vision enough to rebuild the way individuals think of business to model it around the idea that information systems need to be only as functional as absolutely needed, no more. In life you usually get to choose two of three options:

Fast -- Good -- Cheap

You can't get all three. By being leadership you may have the opportunity to impart change in an organization where you can streamline process to keep the tool chain to a minimum. Simple things are always easier to defend. The fewer items in a tool chain the more time and effort you can spend securing each part, and proportionally, the less it will cost.
-->

## Keep it simple

* Seems to be limited to the *nix community
* The less you understand the more difficult to protect
* If you don't know, you will give more than you should

<!--
Using the example above you can imagine how much easier it would be if the finance role was limited to simple input into a web browser. The moment we added email and attachments and proprietary technology "standards" we started adding complexity. Complexity is the enemy of security. Sadly we have come to expect functionally and the way we have created this functionality is with tools that are rarely the best at anything but can do just about anything, enter the office suite of software. Behind this movement we have then needed to make workflows around it, like email attachments and file shares and jump drives. All these things open doors to an attacker to take advantage of the most vulnerable part of your information system, your user. Think of your user like a newborn baby, they need to be protected and don't always understand what is best for them. They also very often know exactly what they want and know the best way to get it when they want it. The war with complexity will continue, living simply is one way to move forward and setting expectations to that end. 

* simplicity always will be more secure than complexity
* complexity is difficult to secure
* proprietary stacks allow convenience but limit control working in complexity

-->

## Compartmentalize

* Don't put your eggs in one basket
* Segment systems where possible

<!--
Take a moment to look back to **Lab 1** where you added two users to your system. You have one user cred and one admin cred. Between the two creds you can imagine what each one is for. One for day to day tasks like email and web browsing. The other for administering systems. As can be imagined, it is not good to use one for the other. It is even better to segment the systems you use for administration. By having separate credentials and separate systems and networks that you can administer from you expand the principal of lease privilege beyond simple workstation configuration to the entire network. Should you be able to manage volumes on your storage server with your normal desktop? Should you be able to log into your virtualization environment from your cell phone? Separate out these tasks and make sure you have added logical and physical controls. This is the idea behind putting your web-servers in a DMZ of your network. 

You can continue the idea of compartmentalization to network [microsegmentation](https://www.darkreading.com/edge/theedge/a-beginners-guide-to-microsegmentation/b/d-id/1335849) and ending with the idea of ["Zero Trust Networks"](https://cloud.google.com/beyondcorp/#researchPapers)
-->

## Authentication

* How strong are passwords?
![Passwords](https://cga.sfo2.digitaloceanspaces.com/cns/images/image.png)

<!--
The idea behind placing restrictions on password length is to increase the number of guesses a brute force attacker may have to make. As you add to the minimum password length, you dramatically increase the potential combinations and make a brute force attack more difficult. For instance, let’s assume that you only have passwords that are made up of lowercase letters in the alphabet. Here are the total number of password combinations for a few different password lengths:

* 4 characters: 456,976 combinations 
* 5 characters: 11.8 million combinations 
* 6 characters: 308.9 million combinations 
* 7 characters: 8 billion combinations 
* 8 characters: 200 billion combinations combinations 
* 12 characters: 95 quadrillion combinations 

As you can see, even increasing the minimum password length by one character dramatically increases the number of combinations. Based on this list, you might think that even a 6-character password might be good enough. But a brute force attacker who can do a million guesses per second could crack a 6-character password in 5 minutes or an 8-character password in 2.5 days—but it would take them 3,026 years to go through all of the combinations of a 12-character password. This, by the way, is why attackers are far more likely to use a

Password Complexity Another approach to make brute force attacks more difficult is imposing password complexity restrictions. This means that instead of just allowing any 8-character password, for instance, you require that the password contains both letters and at least one number, or a mixture of uppercase and lowercase letters or even basic punctuation. By requiring extra classes of characters in a password, you increase the total number of combinations for a particular length of password. Let’s take the common 8-character password as an example. Here are the number of total password combinations for 8-character passwords with different password complexity requirements:

* All lowercase—26 characters: 200 billion combinations 
* Lowercase and uppercase—52 characters: 53 trillion combinations 
* Lowercase, uppercase, and numbers—62 characters: 218 trillion 
* Lowercase, uppercase, numbers, and symbols—96 characters: 7.2 quadrillion
-->

## Password Rotation

* Does it work?

## Password Rotation

* Attackers are Fast
* Rotated Passwords are guessable
* Foster bad habits

<!--

-->

## Meet the passphrase

* How do you have high password entropy but still remember it?

## Lets get down to hardening

* We are going to explore automated hardening of CentOS
* We will be using Ansible Hardening

<!--
Lets get CentOS going with Vagrant, install Ansible and Git, clone the repo Ansible Hardening and put together a baseline config:

Start in Powershell

```powershell
mkdir class2
cd class2
vagrant init geerlingguy/centos7
vagrant up
```

Next lets ssh into the server still from vagrant in the powershell. This is a way to remote into a Linux Server from the command line, to the command line.

```powershell
vagrant ssh
```

The first thing we need to do is setup a key-pair to login to ourselves... yep we are running this locally

```bash
ssh-keygen
```

You will need to hit enter a few times, don't bother entering a password for the key. Next we will copy key to our trusted hosts file:

```bash
ssh-copy-id vagrant@localhost
```

You will need to accept that you are adding this computer your VM, to the accepted hosts to login to.

Now being in bash we will start installing the necessary software onto the system and clone the repository:

```bash
sudo yum install ansible git
git clone https://github.com/openstack/ansible-hardening.git
echo -e "---\n- name: Harden CentOS\n  hosts: all\n  become: yes\n  ignore_errors: yes\n  vars:\n    stig_version: rhel7\n  roles:\n    - role: ansible-hardening" > playbook.yml
echo -e "[local]\nlocalhost" > inventory
```

At this point we are ready to run the hardening automation but what are we running?  Lets take a look at all the parameters we can change, they can be found in the repo at [/defaults/main.yml](https://github.com/openstack/ansible-hardening/blob/master/defaults/main.yml):
```yaml
---
# Copyright 2015, Rackspace US, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

## STIG version selection
# The RHEL 7 STIG content first appeared in the Ocata release and is compatible
# with the following operating systems:
#
#  * CentOS 7
#  * Debian Jessie
#  * Fedora 27
#  * openSUSE Leap 42.x
#  * SUSE Linux Enterprise 12
#  * Ubuntu 16.04 Xenial LTS
#
# Valid options: rhel7
stig_version: rhel7

## APT Cache Options
# This variable is used across multiple OpenStack-Ansible roles to handle the
# apt cache updates as efficiently as possible.
cache_timeout: 600

# Set the package install state for distribution packages
# Options are 'present' and 'latest'
security_package_state: present

## EPEL
# Set the following variable to `no` to prevent the EPEL repository from being
# installed by the role. This may prevent certain packages from installing,
# such as ClamAV.
security_epel_install_repository: yes
#
# Some deployers install a customized EPEL package that redirects servers to
# their internal EPEL mirrors. Provide the name of the EPEL repository package
# (epel-release by default on CentOS) or a URL to an EPEL release RPM file.
security_epel_release_package: epel-release

###############################################################################
#  ____  _   _ _____ _       _____   ____ _____ ___ ____
# |  _ \| | | | ____| |     |___  | / ___|_   _|_ _/ ___|
# | |_) | |_| |  _| | |        / /  \___ \ | |  | | |  _
# |  _ <|  _  | |___| |___    / /    ___) || |  | | |_| |
# |_| \_\_| |_|_____|_____|  /_/    |____/ |_| |___\____|
#
# The following options are specific to the RHEL 7 STIG. For details on each
# option, refer to the ansible-hardening documentation:
#
#   https://docs.openstack.org/ansible-hardening/latest/domains.html
#
###############################################################################

## Accounts (accounts)
# Set minimum password lifetime to 1 day for interactive accounts.
security_set_minimum_password_lifetime: no                   # V-71927
security_set_maximum_password_lifetime: no                   # V-71931

## AIDE (aide)
# Initialize the AIDE database immediately (may take time).
security_rhel7_initialize_aide: no                           # V-71973

# The default Ubuntu configuration for AIDE will cause it to wander into some
# terrible places on the system, such as /var/lib/lxc and images in /opt.
# The following three default exclusions are highly recommended for AIDE to
# work properly, but additional exclusions can be added to this list if needed.
security_aide_exclude_dirs:
  - /openstack
  - /opt
  - /run
  - /var

## Audit daemon (auditd)
# Send audit records to a different system using audisp.
# security_audisp_remote_server: '10.0.21.1'                  # V-72083
# Encrypt audit records when they are transmitted over the network.
# security_audisp_enable_krb5: yes                            # V-72085
# Set the auditd failure flag. WARNING: READ DOCUMENTATION BEFORE CHANGING!
security_rhel7_audit_failure_flag: 1                         # V-72081
# Set the action to take when the disk is full or network events cannot be sent.
security_rhel7_auditd_disk_full_action: syslog               # V-72087
security_rhel7_auditd_network_failure_action: syslog         # V-72087
# Size of remaining disk space (in MB) that triggers alerts.
security_rhel7_auditd_space_left: "{{ (ansible_mounts | selectattr('mount', 'equalto', '/') | map(attribute='size_total') | first * 0.25 / 1024 / 1024) | int }}" # V-72089
# Action to take when the space_left threshold is reached.
security_rhel7_auditd_space_left_action: email               # V-72091
# Send auditd email alerts to this user.
security_rhel7_auditd_action_mail_acct: root                 # V-72093
# Add audit rules for commands/syscalls.
security_rhel7_audit_chsh: yes                               # V-72167
security_rhel7_audit_chage: yes                              # V-72155
security_rhel7_audit_chcon: yes                              # V-72139
security_rhel7_audit_chmod: no                               # V-72105
security_rhel7_audit_chown: no                               # V-72097
security_rhel7_audit_creat: yes                              # V-72123
security_rhel7_audit_crontab: yes                            # V-72183
security_rhel7_audit_delete_module: yes                      # V-72189
security_rhel7_audit_fchmod: no                              # V-72107
security_rhel7_audit_fchmodat: no                            # V-72109
security_rhel7_audit_fchown: no                              # V-72099
security_rhel7_audit_fchownat: no                            # V-72103
security_rhel7_audit_fremovexattr: no                        # V-72119
security_rhel7_audit_fsetxattr: no                           # V-72113
security_rhel7_audit_ftruncate: yes                          # V-72133
security_rhel7_audit_init_module: yes                        # V-72187
security_rhel7_audit_gpasswd: yes                            # V-72153
security_rhel7_audit_lchown: no                              # V-72101
security_rhel7_audit_lremovexattr: no                        # V-72121
security_rhel7_audit_lsetxattr: no                           # V-72115
security_rhel7_audit_mount: yes                              # V-72171
security_rhel7_audit_newgrp: yes                             # V-72165
security_rhel7_audit_open: yes                               # V-72125
security_rhel7_audit_openat: yes                             # V-72127
security_rhel7_audit_open_by_handle_at: yes                  # V-72129
security_rhel7_audit_pam_timestamp_check: yes                # V-72185
security_rhel7_audit_passwd: yes                             # V-72149
security_rhel7_audit_postdrop: yes                           # V-72175
security_rhel7_audit_postqueue: yes                          # V-72177
security_rhel7_audit_removexattr: no                         # V-72117
security_rhel7_audit_rename: yes                             # V-72199
security_rhel7_audit_renameat: yes                           # V-72201
security_rhel7_audit_restorecon: yes                         # V-72141
security_rhel7_audit_rmdir: yes                              # V-72203
security_rhel7_audit_semanage: yes                           # V-72135
security_rhel7_audit_setsebool: yes                          # V-72137
security_rhel7_audit_setxattr: no                            # V-72111
security_rhel7_audit_ssh_keysign: yes                        # V-72179
security_rhel7_audit_su: yes                                 # V-72159
security_rhel7_audit_sudo: yes                               # V-72161
security_rhel7_audit_sudoedit: yes                           # V-72169
security_rhel7_audit_truncate: yes                           # V-72131
security_rhel7_audit_umount: yes                             # V-72173
security_rhel7_audit_unix_chkpwd: yes                        # V-72151
security_rhel7_audit_unlink: yes                             # V-72205
security_rhel7_audit_unlinkat: yes                           # V-72207
security_rhel7_audit_userhelper: yes                         # V-72157
# Add audit rules for other events.
security_rhel7_audit_account_access: yes                     # V-72143
security_rhel7_audit_sudo_config_changes: yes                # V-72163
security_rhel7_audit_insmod: yes                             # V-72191
security_rhel7_audit_rmmod: yes                              # V-72193
security_rhel7_audit_modprobe: yes                           # V-72195
security_rhel7_audit_account_actions: yes                    # V-72197

## Authentication (auth)
# Check if sudoers has the NOPASSWD rule enabled
security_sudoers_nopasswd_check_enable: yes

# Disallow logins from accounts with blank/null passwords via PAM.
security_disallow_blank_password_login: yes                  # V-71937
# Apply password quality rules.
# NOTE: The security_pwquality_apply_rules variable is a "master switch".
# Set the 'security_pwquality_apply_rules' variable to 'yes' to apply all of
# the password quality rules. Each rule can be disabled with a value of 'no'.
security_pwquality_apply_rules: no
security_pwquality_require_uppercase: yes                    # V-71903
security_pwquality_require_lowercase: yes                    # V-71905
security_pwquality_require_numeric: yes                      # V-71907
security_pwquality_require_special: yes                      # V-71909
security_pwquality_require_characters_changed: yes           # V-71911
security_pwquality_require_character_classes_changed: yes    # V-71913
security_pwquality_limit_repeated_characters: yes            # V-71915
security_pwquality_limit_repeated_character_classes: yes     # V-71917
security_pwquality_require_minimum_password_length: no       # V-71935
# Use pwquality when passwords are changed or established.
security_enable_pwquality_password_set: no                   # V-73159
# Ensure passwords are stored using SHA512.
security_password_encrypt_method: SHA512                     # V-71921
# Ensure user/group admin utilities only store encrypted passwords.
security_libuser_crypt_style_sha512: yes                     # V-71923
# Set a minimum/maximum lifetime limit for user passwords.
# security_password_min_lifetime_days: 1                      # V-71925
# security_password_max_lifetime_days: 60                     # V-71929
# Set a delay (in seconds) between failed login attempts.
security_shadow_utils_fail_delay: 4                          # V-71951
# Set a umask for all authenticated users.
# security_shadow_utils_umask: '077'                         # V-71995
# Create home directories for new users by default.
security_shadow_utils_create_home: yes                       # V-72013
# How many old user password to remember to prevent password re-use.
# security_password_remember_password: 5                      # V-71933
# Disable user accounts if the password expires.
security_disable_account_if_password_expires: no             # V-71941
# Lock user accounts with excessive login failures. See documentation.
security_pam_faillock_enable: no                             # V-71945 / V-71943 / RHEL-07-010373
security_pam_faillock_interval: 900
security_pam_faillock_attempts: 3
security_pam_faillock_deny_root: yes                         # RHEL-07-010373
security_pam_faillock_unlock_time: 604800                    # V-71943
# Limit the number of concurrent connections per account.
# security_rhel7_concurrent_session_limit: 10                 # V-72217
# Remove .shosts and shosts.equiv files.
security_rhel7_remove_shosts_files: no                       # V-72277

## File permissions (file_perms)
# Reset file permissions and ownership for files installed via RPM packages.
security_reset_perm_ownership: no                            # V-71849
# Search for files/directories owned by invalid users or groups.
security_search_for_invalid_owner: no                        # V-72007
security_search_for_invalid_group_owner: no                  # V-72009
# Set user/group owners on each home directory and set mode to 0750.
security_set_home_directory_permissions_and_owners: no       # V-72017 / V-72019 / V-72021
# Find all world-writable directories and display them.
security_find_world_writable_dirs: no                        # V-72047

## Graphical interfaces (graphical)
# Disable automatic gdm logins
security_disable_gdm_automatic_login: yes                    # V-71953
# Disable timed gdm logins for guests
security_disable_gdm_timed_login: yes                        # V-71955
# Enable session locking for graphical logins.
security_lock_session: no                                    # V-71891
# Set a timer (in seconds) when an inactive session is locked.
security_lock_session_inactive_delay: 900                    # V-71893
# Prevent users from modifying session lock settings.
security_lock_session_override_user: yes                     # RHEL-07-010071
# Lock a session (start screensaver) when a session is inactive.
security_lock_session_when_inactive: yes                     # V-71893
# Time after screensaver starts when user login is required.
security_lock_session_screensaver_lock_delay: 5              # V-71901
# Enable a login banner and set the text for the banner.
security_enable_graphical_login_message: yes                 # V-71859
security_enable_graphical_login_message_text: >
    You are accessing a secured system and your actions will be logged along
    with identifying information. Disconnect immediately if you are not an
    authorized user of this system.
## Linux Security Module (lsm)
# Enable SELinux on Red Hat/CentOS and AppArmor on Ubuntu.
security_rhel7_enable_linux_security_module: yes             # V-71989 / V-71991

## Miscellaneous (misc)
# Disable the autofs service.
security_rhel7_disable_autofs: yes                           # V-71985
# Enable virus scanning with clamav
security_enable_virus_scanner: no                            # V-72213
# Run the virus scanner update during the deployment (if scanner is deployed)
security_run_virus_scanner_update: yes
# Disable ctrl-alt-delete key sequence on the console.
security_rhel7_disable_ctrl_alt_delete: yes                  # V-71993
# Install and enable firewalld for iptables management.
security_enable_firewalld: no                                # V-72273
# Rate limit TCP connections to 25/min and burstable to 100.
security_enable_firewalld_rate_limit: no                     # V-72271
security_enable_firewalld_rate_limit_per_minute: 25
security_enable_firewalld_rate_limit_burst: 100
# Update the grub configuration.
security_enable_grub_update: yes
# Require authentication in GRUB to boot into single-user or maintenance modes.
security_require_grub_authentication: no                     # V-71961 / V-71963
# The default password for grub authentication is 'secrete'.
security_grub_password_hash: grub.pbkdf2.sha512.10000.7B21785BEAFEE3AC71459D8210E3FB42EC0F5011C24A2DF31A8127D43A0BB4F1563549DF443791BE8EDA3AE4E4D4E04DB78D4CA35320E4C646CF38320CBE16EC.4B46176AAB1405D97BADB696377C29DE3B3266188D9C3D2E57F3AE851815CCBC16A275B0DBF6F79D738DAD8F598BEE64C73AE35F19A28C5D1E7C7D96FF8A739B
# Set session timeout.
security_rhel7_session_timeout: 600                          # V-72223
# Enable chrony for NTP time synchronization.
security_rhel7_enable_chrony: yes                            # V-72269
# Use the following NTP servers.
security_ntp_servers:
  - 0.pool.ntp.org
  - 1.pool.ntp.org
  - 2.pool.ntp.org
  - 3.pool.ntp.org
# NTP server options.
security_ntp_server_options: iburst
# Configure Chrony to synchronize the hardware clock
security_ntp_sync_rtc: false
# Chrony limits access to clients that are on certain subnets.  Adjust the
# following subnets here to limit client access to chrony servers.
security_allowed_ntp_subnets:
  - 10/8
  - 192.168/16
  - 172.16/12
# Listen for NTP requests only on local interfaces.
security_ntp_bind_local_interfaces_only: yes
# Restrict mail relaying.
security_rhel7_restrict_mail_relaying: yes                   # V-72297
# Deploy a login banner.                                     # V-72225 / V-71863
security_login_banner_text: |
  ------------------------------------------------------------------------------
  * WARNING                                                                    *
  * You are accessing a secured system and your actions will be logged along   *
  * with identifying information. Disconnect immediately if you are not an     *
  * authorized user of this system.                                            *
  ------------------------------------------------------------------------------
## Packages (packages)
# Remove packages from the system as required by the STIG. Set any of these
# to 'no' to skip their removal.
security_rhel7_remove_rsh_server: yes                        # V-71967
security_rhel7_remove_telnet_server: yes                     # V-72077
security_rhel7_remove_tftp_server: yes                       # V-72301
security_rhel7_remove_xorg: yes                              # V-72307
security_rhel7_remove_ypserv: yes                            # V-71969
# Automatically remove dependencies when removing packages.
security_package_clean_on_remove: no                         # V-71987
# Automatically update packages.
security_rhel7_automatic_package_updates: no                 # V-71999
# Install packages for multi-factor authentication.
security_install_multifactor_auth_packages: yes              # V-72417
security_check_package_checksums: no                         # V-71855

## RPM (rpm)
# Enable GPG checks for packages and repository data.
security_enable_gpgcheck_packages: yes                       # V-71977
security_enable_gpgcheck_packages_local: yes                 # V-71979
security_enable_gpgcheck_repo: no                            # V-71981

## ssh server (sshd)
# Ensure sshd is running and enabled at boot time.
security_enable_sshd: yes                                    # V-72235
# Disallow logins from users with empty/null passwords.
security_sshd_disallow_empty_password: yes                   # V-71939 / RHEL-07-010440
# Disallow users from overriding the ssh environment variables.
security_sshd_disallow_environment_override: yes             # V-71957
# Disallow host based authentication.
security_sshd_disallow_host_based_auth: yes                  # V-71959
# Set a list of allowed ssh ciphers.
security_sshd_cipher_list: 'aes128-ctr,aes192-ctr,aes256-ctr' # V-72221
# Specify a text file to be displayed as the banner/MOTD for all sessions.
security_sshd_banner_file: /etc/motd                         # V-71861 / V-72225
# Set the interval for max session length and the number of intervals to allow.
security_sshd_client_alive_interval: 600                     # V-72237
security_sshd_client_alive_count_max: 0                      # V-72241
# Print the last login for a user when they log in over ssh.
security_sshd_print_last_log: yes                            # V-72245
# Permit direct root logins ('yes', 'no', 'without-password', 'prohibit-password', 'forced-commands-only')
security_sshd_permit_root_login: no                          # V-72247
# Disallow authentication using known hosts authentication.
security_sshd_disallow_known_hosts_auth: yes                 # V-72249 / V-72239
# Disallow rhosts authentication.
security_sshd_disallow_rhosts_auth: yes                      # V-72243
# Enable X11 forwarding.
security_sshd_enable_x11_forwarding: yes                     # V-72303
# Set the allowed ssh protocols.
security_sshd_protocol: 2                                    # V-72251
# Set the list of allowed Message Authentication Codes (MACs) for ssh.
security_sshd_allowed_macs: 'hmac-sha2-256,hmac-sha2-512'    # V-72253
# Disallow Generic Security Service Application Program Interface (GSSAPI) auth.
security_sshd_disallow_gssapi: yes                           # V-72259
# Disallow compression or delay after login.
security_sshd_compression: 'delayed'                         # V-72267
# Require privilege separation at every opportunity.
security_sshd_enable_privilege_separation: yes               # V-72265
# Require strict mode checking of home directory configuration files.
security_sshd_enable_strict_modes: yes                       # V-72263
# Disallow Kerberos authentication.
security_sshd_disable_kerberos_auth: yes                     # V-72261

## Kernel settings (kernel)
# Disallow forwarding IPv4/IPv6 source routed packets on all interfaces
# immediately and by default on new interfaces.
security_disallow_source_routed_packet_forward_ipv4: yes     # V-72283 / V-72285
security_disallow_source_routed_packet_forward_ipv6: yes     # V-72319
# Disallow responses to IPv4 ICMP echoes sent to broadcast address.
security_disallow_echoes_broadcast_address: yes              # V-72287
# Disallow IPV4 ICMP redirects on all interfaces immediately and by default on
# new interfaces.
security_disallow_icmp_redirects: yes                        # V-73175 / V-72289 / V-72291 / V-72293
# Disallow IP forwarding.
security_disallow_ip_forwarding: no                          # V-72309
# Disable USB storage support.
security_rhel7_disable_usb_storage: yes                      # V-71983
# Disable kdump.
security_disable_kdump: yes                                  # V-72057
# Disable Datagram Congestion Control Protocol (DCCP).
security_rhel7_disable_dccp: yes                             # V-77821
# Enable Address Space Layout Randomization (ASLR).
security_enable_aslr: yes                                    # V-77825

###############################################################################
#   ____            _        _ _
#  / ___|___  _ __ | |_ _ __(_) |__
# | |   / _ \| '_ \| __| '__| | '_ \
# | |__| (_) | | | | |_| |  | | |_) |
#  \____\___/|_| |_|\__|_|  |_|_.__/
#
#
# The following configurations apply to tasks that are contributed by
# ansible-hardening developers and may not be part of a hardening standard
# or compliance program. For more information on the 'contrib' tasks, review
# the documentation:
#
#   https://docs.openstack.org/ansible-hardening/latest/contrib.html
#
###############################################################################

# To enable the contrib tasks, set this variable to 'yes'.
security_contrib_enabled: no

# Disable IPv6.
# DANGER: This option causes IPv6 networking to be disabled for the ENTIRE
# DANGER: SYSTEM. This will cause downtime for any services that depend on
# DANGER: IPv6 network connectivity.
security_contrib_disable_ipv6: no                            # C-00001
```

As you can imagine there are LOTS of controls you can implement. You can also notice that there are the vuln ID numbers we saw in the STIG! We will just take the baseline settings and run them with the following:

```bash
ansible-playbook -i inventory playbook.yml
```
Lets watch it go!

-->

# Class 09 -- Firewall Configuration and Hardening

## Introduction

<!--

We are nearing the end of our STIG journey and moving from into the next module on networking. With that we have a rather light class discussing the STIG guidance and tooling around what we consider to be appliacnes and other devices. As you can imagine the endpoint is only one aspect of an entire environment. One could assume that when you purchased a network device it would come ready to configure and put into service. That is not the case. Like an operating system a firewall, IDS, or mobile device can have security baseline configuations applied to it like operating systems and applications. For that reason we are going to briefly talk about the types of things you can STIG that are not desktops or servers. 

-->

## References

* [Firewall SRG]
* [GNS3]
* [eve-ng]

## Firewall is what

* Firewall could be any device with 2 NICs that traffic passes through
* Normally filter ports, protocol and services
* So much more to come on firewalls!

## Firewall SRG

* [Firewall SRG] provides general guidance on configuring FW
* Specific Network Products also have STIGs 

## Vendor Specific

* Palo Alto
* Cisco
* Big IP
* Juniper

## More than just just firewalls

* Switches
* Routers
* Mobile 

## Test model

* [GNS3] and [eve-ng] is a network modeling program
* Build your network and test connectivity and security
* Build configurations for device and export them to production
[Firewall SRG]:https://dl.dod.cyber.mil/wp-content/uploads/stigs/zip/U_Firewall_V1R5_SRG.zip
[GNS3]:https://www.gns3.com/
[eve-ng]:https://www.eve-ng.net/
