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
