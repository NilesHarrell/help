---
title: "Class 00"
subtitle: "Setup stuff and things"
author: "Constantine Macris"
date: "{{ date }}"
titlepage: true
titlepage-color: "2E3B86"
titlepage-text-color: "FFFFFF"
titlepage-rule-color: "FFFFFF"
titlepage-rule-height: 2
book: true
classoption: oneside
code-block-font-size: \scriptsize
description: |
    Lets start our journey
---

# Class 00 -- Introduction

## Learning Outcomes

* Understand course and expectations
* Become familiar with class structure
* Gain exposure to the Windows Subsystem for Linux
* Be able to contribute to projects on GitHub
* Gain exposure to command line Git

## Definitions

* CNS - Computer and Network Security 
* WSL - Windows Subsystem for Linux 

## Syllabus 

* Syllabus found at the CNS Site : [cns.hacking.fans] (Does not work for me)
* Review and come to class with questions!
* [Intro Video] on YouTube

<!--

Welcome to Computer Network Security (CNS)! I hope this semseter will be a rewarding and challenging experience. By no means is this journey going to be easy but I think it is do-able given the correct mindset and motivation. I expect that most students will feel somewhat uncomfortable during the class as new topics come fast and outside learning is essential, with that I hope to be your guide and with your classmates make up a support system that will help you learn and make the topics attainable while setting you up for success. 

## Testimonials

* Last year's unedited student testimonials are included in the handout/web
* Salient points:
  * Keep up on reading -- There is a lot to cover 
  * Try to play around -- The class tests your ability to learn new technologies quickly
  * Ask for help -- Read, Ask Friends, Ask Instructor, Ask Community
  * Give it all you got 

<!--

"Awesome class! It's a lot of material, but there is a lot of help. Almost all the learning is hands-on as well."

"Overall, the learning curve for this class was incredibly steep. I think that there was a lot of expectations that I did not reach because it would have required a lot of additional time spent to just experiment and self-learn. I wish that I could have done more of that, but at the U.S. Coast Guard Academy it is sometimes difficult to spend free time doing extra work because you have so little time to leave base and you want to take advantage of that. However, that being said, I really enjoyed this class, and I think I learned more in this class than any other class I have EVER taken. It also increased my confidence levels in trying out different things, and I think I learned so much that I could actually use in the real world (Unlike a lot of my other EE classes)."

"It is a lot of material, and can be overwhelming. If you want to get a grasp of what you are learning, reading and following the textbook is a requirement. At the same time, if you are truly lost, ask the instructor. Mr. Macris always answered my questions, even if I asked the same one over and over again."

"Read the book it probably would've helped a lot (even though there is a lot of reading for an EE class)"

"This class was a lot of fun. I wasn't really sure whether to take it because it was one of my electives as a 1/c spring semester, and I literally could have taken anything. I choose this class cause I thought I would learn a lot. I learned a lot and I got a lot of exposure to the cyber security world. I had a lot of fun, and Mr. Macris is a great teacher, and I hope he stays at CGA because he could help a lot of people."
-->

## Doing well in CNS

* Come to class and participate
* Consume as much material as possible 
* Optional content will be marked **suggested**
* Learn by helping
* Learn by asking

## Skillport / Skillsoft Access 

* Your will need access to SkillPort on the CG Portal to get books needed for this class
* The books used on the SkillPort are listed in the Syllabus.
* Make sure all your certificates are updated and if you have access issues call IS Support

<!--
(Revised January 2020) 
 
“SkillSoft is a leading commercial provider of on-demand training and e-learning solutions for global enterprises, government and education agencies and small to medium-sized businesses. SkillSort resources are provided through a contract with DHS to the U.S. Coast Guard. Access to the e-learning and training resources are available through the SkillPort link on CG Portal Training and Education link.”   
Source: [Skillport]

1) Log into any computer with a CAC Reader
2) Put your CAC in the Reader
3) Browse to [CG Portal]
4) Read and Agree to the Terms by clicking "OK"
5) Click on "Sign in with Smart Card" 
6) Check the “Issues” field… it needs to read “DOD EMAIL…”. If it does not, choose “More choices” and Select the "DOD EMAIL…" Certificate and click "OK" 
7) Enter your CAC PIN and click OK
8) Click on "Training & Education" on the top navigation bar
9) Click on "Skillport" in the first column under the first photo on the left
10) Click on “ENTER” on the op right of the window above "Ask Us"
11) You now have access to all of the Content in Skillport / Skillsoft, also called Books 24x7. If you plan on always accessing with a CAC-enabled computer, you can stop here.
12) To find a book or other free resources, simply search for it in the upper right hand corner in the “Search Content” box
-->

## Windows -- Linux O My

* Windows 10 brought with it the Linux Subsystem for Windows ([WSL])
* WSL is a compatilbity layer between Windows and Linux Binaries
* Instructions on installing the WSL are somewhat straightforward: [Install WSL]
* The WSL and WSL2 work slighly differently but since it is not a focus for this class you can read up in the [Ultimate Guide]
* After following these guides, you can verify your WSL installation and version number by running the following command from a Windows terminal: `wsl -l -v`.

<!--
We will be using various different operating systems for different tasks. One thing that will make some parts of class easier is setting up the Linux Subsystem for Windows (WSL) on your Cadet Machine. This will enable you to have a Linux machine on your desktop without the hassle or overhead of a virtual machine. We will also use Virutal Machines (VMs) but the WSL will be a good place to start for most of the tasks we look to accomplish with Linux like working with git, using SSH to access remote systems and learning a bit about how to work in a *nix environment.

That being said lets take a look at setting up the Linux subsystem in Windows 10 and pretty much what it is. In its original form the WSL (WSL1) was a driver and app that translated Linux commands to the Windows Kernel. With WSL2 that changed a little more by adding a Linux Kernel and moving the files from native in the Windows File System to a seperate virtual file system.  

As a native VM in WSL2 the use may be slightly different but having a convienient supported Linux terminal is always useful.

With WSL you will have issues trying to get native control of devices like a Wifi or ethernet adapter since you are not nativly on the system. This may change with WSL2 but don't plan on running NMAP or other items that require native hardware. 
-->

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

## Homework -- NON GRADED

* Review Syllabus at [cns.hacking.fans]
* Obtain access to resources from [SkillPort]
* Setup and [Install WSL]
* Setup an account on GitHub
* Get familar with GitHub via this [Hello World] Tutorial
* Dig deeper into a GitHub Topic of your choice at [GitHub Guides]
* Discuss interesting things you learned in the [GitHub Guides] on Chat #class_discussion channel
* Setup your workflow 

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
