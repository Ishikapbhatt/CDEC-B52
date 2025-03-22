# Introduction to Devops

** Software development and IT operations are separated by a set of procedures called DevOps. It focuses on encouraging cooperation and communication between the operations and development teams in order to improve the effectiveness and caliber of software delivery. To simplify the software development lifecycle, DevOps automates workflows, infrastructure, and ongoing application performance monitoring. This strategy calls for considerable cultural and corporate changes in addition to technological ones.
**

![image](https://github.com/user-attachments/assets/6d98f692-52ec-4c40-8155-5e136defe07f)

# Difference between - Windows vs Unix vs Linux

**Windows:**

Proprietary software, owned by Microsoft. 

Primarily for personal computers. 

User-friendly interface with wide software compatibility.

Can be less secure compared to Linux due to wider user base. 

**Unix:**

Older, established operating system. 

Originally developed by Bell Labs. 

Powerful and stable, often used for servers and high-performance computing. 

Requires more technical knowledge to use. 

**Linux:**

Open-source operating system based on Unix principles. 

Highly customizable and flexible. 

Large community support and various distributions (like Ubuntu). 

Considered more secure than Windows due to open-source nature. 

# Difference between - Windows vs Unix vs Linux

**Windows:**

Proprietary software, owned by Microsoft. 

Primarily for personal computers. 

User-friendly interface with wide software compatibility.

Can be less secure compared to Linux due to wider user base. 

**Unix:**

Older, established operating system. 

Originally developed by Bell Labs. 

Powerful and stable, often used for servers and high-performance computing. 

Requires more technical knowledge to use. 

**Linux:**

Open-source operating system based on Unix principles. 

Highly customizable and flexible. 

Large community support and various distributions (like Ubuntu). 

Considered more secure than Windows due to open-source nature. 
# Features of Linux

**1. Open Source**

Linux is open-source software, which means its source code is freely available to the public. This allows users to modify and distribute the code.

**2. Multi-user Capability**

Multiple users can use Linux simultaneously without interfering with each other. Each user can have their own permissions and settings.

**3. Multitasking**

Linux supports multitasking, meaning it can execute multiple processes or tasks at the same time. This is especially important in server environments.

**4. Security**

Linux is known for its strong security features. It includes built-in security mechanisms such as file permissions, user roles, SELinux, and AppArmor.
Linux is less prone to viruses and malware compared to other operating systems, but regular security updates are crucial.

**5. Stability and Reliability**

Linux is extremely stable and reliable, often running for months or even years without needing a reboot. This makes it ideal for servers and critical systems.

**6. Customizability**

Linux can be customized to meet the specific needs of a user or an organization. You can modify everything from the kernel to the desktop environment.
There are many different Linux distributions (e.g., Ubuntu, CentOS, Fedora) that cater to various needs and preferences.

**7. File System Support**

Linux supports various file systems, including ext3, ext4, Btrfs, XFS, and more. This gives users flexibility in managing their storage and performance.

**8. Command Line Interface (CLI) and Graphical User Interface (GUI)**

While Linux offers a powerful command line interface for advanced users and automation, it also supports graphical user interfaces (GUIs) such as GNOME, KDE, and others for ease of use.

**9. Package Management**

Linux uses package managers (like APT for Debian-based distributions and YUM/DNF for Red Hat-based distributions) to manage software installation and updates. This simplifies software management and ensures that applications are up-to-date.

**10. Networking Support**

Linux is known for its robust networking capabilities. It supports a wide range of networking protocols (TCP/IP, FTP, SSH, etc.) and tools for managing network connections.
**11. Performance**

Linux is highly optimized for performance and can run on a variety of hardware, including older or low-resource systems. It efficiently utilizes system resources.

**12. Community Support**

Linux has a large and active community that provides support, documentation, and solutions to common problems. There are various online forums, mailing lists, and websites dedicated to Linux.

**13. Compatibility**

Linux supports a wide range of hardware, from servers to desktops, and is compatible with many applications, both open-source and proprietary.

**14. Virtualization**

Linux has strong support for virtualization technologies like KVM, VirtualBox, and Docker, allowing users to run virtual machines or containers.

**15. Shell Scripting and Automation**

Linux offers powerful shell scripting capabilities, enabling users to automate tasks, create scripts for system administration, and perform batch processing.

**16. Access to Development Tools**

Linux provides an extensive set of development tools, such as compilers (e.g., GCC), version control (e.g., Git), and text editors (e.g., Vim, Emacs), making it popular for developers.

**17. Lightweight**

Many Linux distributions are lightweight and can run on older or less powerful hardware, offering a faster experience compared to other operating systems.

**18. Free Software Ecosystem**

A lot of free and open-source software (FOSS) is available for Linux, including tools for productivity, development, graphics, multimedia, and more.

# Introduction to Linux

Linux is an open-source, Unix-like operating system (OS) that was created by Linus Torvalds in 1991. It has since evolved into one of the most widely used operating systems globally, powering everything from personal computers to servers, mobile devices, and embedded systems. Unlike proprietary operating systems like Windows or macOS, Linux is free to use, and its source code is publicly available for anyone to view, modify, and distribute.

# Architecture of Linux

![image](https://github.com/user-attachments/assets/2abe785b-af26-4d75-82a1-86ac9174243b)

The architecture of Linux is composed of several layers, each playing a specific role in managing system resources and providing various services to users and applications. These layers interact with each other to deliver a complete operating system experience. The key components of the Linux architecture are:

**1. Hardware Layer**

This is the physical layer, consisting of all the hardware components of the computer, including the CPU, memory, hard disk, network interface, and other devices like printers, monitors, etc. The hardware layer provides the resources that the operating system needs to function.

**2. Kernel**

The kernel is the core part of the Linux operating system, and it interacts directly with the hardware. The kernel's primary responsibility is to manage system resources and ensure that programs and users can access hardware resources efficiently and securely.

**3. Shell**

The shell is a command-line interface (CLI) that allows users to interact with the operating system. It serves as a mediator between the user and the kernel. When a user types commands, the shell interprets these commands and passes them to the kernel for execution. Popular shells in Linux include Bash (Bourne Again Shell), Zsh, and Fish.

**4. System Utilities**

System utilities are the set of user-level programs and services that provide basic functionality to the system. They are the essential tools and utilities required for system maintenance and operation. These include programs for file management (e.g., cp, mv, rm), text processing (e.g., sed, awk, grep), network management (e.g., ping, ifconfig), and system monitoring (e.g., ps, top).

# Types of Shell

**1. Bash (Bourne Again Shell)**

Default Shell: Bash is the most widely used shell in Linux and is the default in most distributions, including Ubuntu, CentOS, and Debian.

**Features:**

Command history and command completion.

Scripting support (Bash scripts).

Job control (background processes, foreground processes).

Extensive built-in commands.

User-friendly features like command line editing and wildcard expansion.

**Use Case:** It is commonly used for interactive command execution and writing shell scripts for automation.

**2. Zsh (Z Shell)**

Description: Zsh is an extended version of Bash with additional features and improvements.

**Features:**

Advanced autocompletion: Provides more intelligent and customizable autocompletion.

Syntax highlighting: Zsh can highlight commands, options, and arguments to improve readability.

Glob patterns: Allows advanced pattern matching and file selection.

Customizability: Highly configurable with themes and plugins (e.g., Oh My Zsh).

Better scripting capabilities: Supports more powerful scripting features than Bash.

Use Case: Ideal for users who want a more feature-rich and customizable shell experience. It is often used by developers who need enhanced autocompletion and functionality.

**3. Fish (Friendly Interactive Shell)**

Description: Fish is known for its user-friendliness and intuitive syntax.

**Features:**

Autosuggestions: Fish provides suggestions based on your command history.

Tab-completion: Fish offers smart and powerful tab completion.

Scripting with simple syntax: Fish scripting syntax is designed to be more intuitive and less error-prone.

No configuration files needed: Fish doesn’t require manual configuration files for interactive use.

**Use Case:** Perfect for users looking for a modern and user-friendly interactive shell with minimal setup.

**4. Tcsh (TENEX C Shell)**

Description: Tcsh is an enhanced version of the C shell (csh), which was originally designed to resemble the C programming language.

**Features:**

C-like syntax: It uses a syntax similar to C programming, making it easier for programmers familiar with C.

Job control: Supports managing background and foreground processes.

Command-line editing: Allows users to edit commands in the terminal.

Alias and history features: Supports creating aliases for commands and history-based command execution.

**Use Case:** Best suited for users familiar with C-like syntax or who need a shell that supports scripting with C-style structures.

**5. Ksh (Korn Shell)**

Description: The Korn Shell is a Unix shell developed by David Korn, designed to be compatible with the Bourne shell (sh) while providing advanced features.

**Features:**

Script compatibility: Ksh is backward compatible with the Bourne shell, so scripts written for sh work in Ksh.

Job control: Supports background and foreground process management.

Array variables: Supports arrays and other advanced scripting features.

Command history and autocompletion: Similar to Bash and Zsh, Ksh has history and completion features.

**Use Case:** Often used in professional environments, particularly on Unix systems, due to its scripting power and backward compatibility with the Bourne shell.

**6. Dash (Debian Almquist Shell)**

Description: Dash is a lightweight, fast shell designed for scripting and is the default system shell on Debian-based systems (including Ubuntu).

**Features:**

Fast execution: Dash is optimized for speed and low resource usage.

POSIX-compliant: Dash strictly adheres to the POSIX shell standard, making it more compatible with other systems.

Minimal: It lacks the interactive features of other shells like Bash or Zsh, making it better suited for scripting.

**Use Case:** Mainly used as the default shell for running system scripts and other non-interactive tasks where performance and minimalism are priorities.

**7. Sh (Bourne Shell)**

Description: The Bourne shell, sh, is one of the oldest and most widely used shells in Unix-like systems.

**Features:**

Basic scripting capabilities: The Bourne shell provides essential shell features but lacks many modern interactive features found in newer shells.

Portability: It is often used as the default shell for system scripts due to its simplicity and portability.

Minimal features: sh lacks features like advanced tab completion or command history, which are available in other shells like Bash.

Use Case: Primarily used in system scripts and environments where minimalism and portability are key.

**8. Csh (C Shell)**

Description: The C shell is another Unix shell, and it is designed to resemble the C programming language in its syntax.

**Features:**

C-like syntax: It uses a syntax similar to the C programming language, making it easier for developers familiar with C.

Command history: Supports recalling previous commands.

Job control: Includes basic job control for managing background and foreground processes.

**Use Case:** Used by users who are familiar with C-like syntax and need a simple shell for interactive use.

# Linux Prompt

The Linux command line is a text interface to your computer. Often referred to as the shell, terminal, console, prompt or various other names, it can give the appearance of being complex and confusing to use.

![image](https://github.com/user-attachments/assets/53a9e62a-b992-4c3b-add1-bf7f435cb050)

root  username

LocalHost  m/c name-IP / hostname

~  current working directory

#  represent root user

$  represent localuser



Blue colour  Folder

Black colour  File

Green Colour  Script with execution permission

# Linux 19 File Sysytem 

![image](https://github.com/user-attachments/assets/5cbcff8c-0564-47fd-8364-93adc5aed1e6)

/root — It is the top level directory in linux hierarchy. All other Directory are subdirectory.

/bin — It Contains essential binary executable. basically used for basic system functionality. They are used to change the system booting and functionality.

/boot — This contains file needed for system boot process. such as kernal and boot loader.

/dev — — It Contains device files & provides interface for interaction

/etc — — This contains configuration file.

/home — — User Created Data

/lib — — It contains shared liabraries

/lib64 — — It contains shared libraries

/media — — It is used as a mounting point for removable area. such as USB drives

/mnt — — It is used as a permanent mounting point

/opt — — It is most installed third party software.

/proc — — This provide information about currently running software

/sbin — — It Contains System admin binary executable typically used by root user

/temp — — It is used for temp used file. which may be deleted after power off

/usr — — It Contains User related file .

/var — — It contains variable data fileprovides

/srv — — srv stands for service. contains service related data

/run — — temporary file system.

/sys — — virtual file system which provide information about devices , drivers & kernal parameter.

# Understanding the Linux Command Prompt

The command prompt is a text-based interface where you type commands that the system interprets and executes. It’s where you interact with the shell (typically Bash on many Linux systems), which acts as a command interpreter.

![image](https://github.com/user-attachments/assets/f3d4929b-5764-47d5-99fa-e3dce7537296)

#### **1. Username (user)**
**Purpose:** Displays the username of the person currently logged into the system.

**Example:** If the command prompt is john@hostname:~$, the user logged in is john.

**Significance:** This tells you which user's environment you're working in. If you're the root user, the prompt will change to root@hostname:~#, and the # symbol indicates administrative privileges.

#### **2. Hostname (hostname)**
**Purpose:** Shows the hostname of the machine, which is the name assigned to the system on the network.

**Example:** In user@hostname:~$, hostname could be something like server1, laptop-xyz, etc.

**Significance:** The hostname helps you identify which system you're currently logged into, especially when managing multiple machines or working in a networked environment.

#### **3.  Current Directory (~)**
**Purpose:** Represents the current directory you're in.

**Example:** ~/ represents the home directory of the user, while something like /etc/ represents a system folder.

**Tilde (~):** This is shorthand for the home directory of the current user. For example, /home/user/ is equivalent to ~/ in the prompt.
**Absolute Path:** The full path to the directory you're in, such as /usr/local/bin/.
**Significance:** This shows where you are in the directory structure. If you want to know your full directory path, you can use the pwd (print working directory) command.

#### **4. Prompt Symbol ($ or #)**
**Purpose:** Indicates the type of user account you are using.

$: This symbol means you're logged in as a normal user.
#: If the prompt ends with a #, you are logged in as the root user, which has administrative privileges.
**Example:**

**Regular user:** user@hostname:~$

**Root user:** root@hostname:~#

**Significance:** The symbol shows whether you have administrative privileges, as the root user can perform more critical system

# Introduction to Linux Basic Commands:

#### Basic Commands:

**#pwd** – present working directory

**#clear** – to clear screen  (ctrl+l)

**#exit** – exit from any running utility (Ctrl+d)

**#logout** – logout from any login user

**#history** – display all previously run commands

**#history -c** – to clear all history

**#hostname** – display system/hostname

**#ifconfig** – display IP address of address

**#lsblk** – list block 

**#df –hT** – disk free human readable type

**#reboot** – to restart the system

**#poweroff** – to shut down

**#shutdown**– to shut down

**#shutdown –r** – to restart 

#### SYSTEM COMMANDS:

**#uname –r** – display kernel release version

**#cat /etc/lsb-release** – to display the ubuntu

**#uname –n** – display the node name 

**#uname –o** – display the operating system

**#uname –s** – display the kernel name

**#uname –m** – display machine architecture

**#uname –p** – display the processor architecture

**#lscpu** – display the detail process information

**#cat /proc/cpuinfo** – display the detail process information

**#free** – display memory

**#free –m** – display memory information in MB

**#free –g** – display memory information in GB

**#free –h** – display memory information in human readable

**#dmicode** – display detail information of RAM, HDD, ROM, CPU, etc.

#### Help Commands:

**#man <command_name>** – display the manual page of the command

**#<command_name> --help**  - display all available options of specified command 

**#which <Command_name>** - display the executable file path of specified command 

#### Commands for Navigating the File System:
**ls(list files and directories)** : The ls command is used to list the contents of a directory. It will list down all the files and folders present in the given directory.

**pwd (print working directory)**: At any given moment of time, we will be standing in a certain directory. To get the name of the directory in which we are standing, we can use the pwd command in Linux.

**cd(change directory)** : The cd command can be used to change the working directory. Using the command, you can move from one directory to another.

#### Commands for Manipulating Files:

**touch (create new file):** The touch command can be used to create an empty new file. This command is very useful for many other purposes, but we will discuss the simplest use case of creating a new file.

**mkdir (create new directories)**: The mkdir command is used to create directories. You can use ls command to verify that the new directory is created.

**rm (delete files and directories):** The rm command can be used to delete files and directories. It is very important to note that this command permanently deletes the files and directories. It's almost impossible to recover these files and directories once you have executed rm command on them successfully. 

**cp (copy files and directories):** The cp command is used to copy files and directories from one location to another. Do note that the cp command doesn't do any change to the original files or directories. The original files or directories and their copy both co-exist after running cp command successfully.

**mv (move files and directories): **The mv command can either be used to move files or directories from one location to another or it can be used to rename files or directories. Do note that moving files and copying them are very different. When you move the files or directories, the original copy is lost.

#### Commands for Viewing Files:

**cat:** The most simplest use of cat command is to print the contents of the file on your output screen. This command is very useful and can be used for many other purposes. We will study about other use cases later.

**head: **The head command displays the first 10 lines of the file by default. We can include additional arguments to display as many lines as we want from the top.

**tail:** The tail command displays the last 10 lines of the file by default. We can include additional arguments to display as many lines as we want from the end of the file.

**more:** The more command displays the contents of a file or a command output, displaying one screen at a time in case the file is large (Eg: log files). It also allows forward navigation and limited backward navigation in the file.

**less:** The less command is an improved version of more. It displays the contents of a file or a command output, one page at a time. It allows backward navigation as well as forward navigation in the file and also has search options. We can use arrow keys for advancing backward or forward by one line. For moving forward by one page, press Space and for moving backward by one page, press b on your keyboard. You can go to the beginning and the end of a file instantly.

#### Echo Command in Linux:

The echo command is one of the simplest commands that is used in the shell. This command is equivalent to print in other programming languages.

#### Text Processing Commands:

**grep:** The grep command in its simplest form can be used to search particular words in a text file. It will display all the lines in a file that contains a particular input. The word we want to search is provided as an input to the grep command.

**sed:** The sed command in its simplest form can be used to replace a text in a file.

**sort:** The sort command can be used to sort the input provided to it as an argument. By default, it will sort in increasing order.

**Mastering Text Editing with VIM**

**Modes:**

**Normal Mode:** Default mode where you can navigate, delete, copy, paste, and perform other actions without typing the content.

**Insert Mode:** Where you actually type your content (like any other text editor).

**Visual Mode:** Used for selecting text (like highlighting in other text editors).

**Command Mode:** Used to enter commands to save, quit, search, etc.

**Basic Movement:** In Normal Mode, you can use the following keys to move the cursor around:

**h -** left

**j**- down

**k -** up

**l -** right

**Editing:**

**Press i** to switch to Insert Mode to start typing.

**Press Esc** to return to Normal Mode.

**Saving and Quitting:**

**To save:** :w

T**o quit:** :q

**To save and quit:** :wq

**To quit without saving:** :q!

![image](https://github.com/user-attachments/assets/04a657ca-b4c3-4054-aa8d-12241dfa211f)

![image](https://github.com/user-attachments/assets/ff16bcd4-b265-4652-a0ff-03cb865c511f)

![image](https://github.com/user-attachments/assets/3af0be06-a668-4dad-91de-9d260c480ab1)


**To delete the word move the cursor to the beginning of the word and use dw command in normal mode. The word under the cursor will be deleted.**

dw

**To delete more than one word in a single line use the following command.**

**To delete 2 words use the command**

d2w

**To delete the line move cursor to the beginning of the line and use d$ command in normal mode. The line under the cursor will be deleted.**

d$

**Undo and Redo:**

**As we are programmers most time we are using undo and redo .vim to provide these to both features in it. To undo press u key in normal mode**

u

**To redo use the ctrl+r key in normal mode in vim**

ctrl+r

**Search in Vim Editor**

**To search the word After the cursor uses the backslash key and then write the word and press enter.**

:/word

**Use n to move on next matching word**

:n

**Use N to move on previous matching word**

:N

**Search and Replace in Vim Editor**

**To replace the word in file use s/ command in vim like**

:s/searchword/replaceword/

**To do replace all occurrence of word use g**

:s/searchword/replaceword/g

**This command will replace the word globally.**

**To confirm before replacements of words use gc.**

:s/searchword/replaceword/gc

**To use this command in the whole file use % before the command.**

:%s/searchword/replaceword/gc

# User Management in Linux

A user is an entity, in a Linux operating system, that can manipulate files and perform several other operations. Each user is assigned an ID that is unique for each user in the operating system. In this post, we will learn about users and commands which are used to get information about the users. After installation of the operating system, the ID 0 is assigned to the root user and the IDs 1 to 999 (both inclusive) are assigned to the system users and hence the ids for local user begins from 1000 onwards. 

**Note:** In a single directory, we can create 60,000 users.

**CONFIGURATION FILES:**

**/etc/passwd:** This files stores the users general information such as user ID, Group ID, User’s home directory, login shell, comment, etc.

**Field1:** User name

**Field2:** Redirected password

**Field3:** User ID

**Field :** Group ID

**Field 5:** Comment

**Field 6:** User’s home directory

**Field 7:** User’s login shell


**/etc/passwd-:** This is the back file of the /etc/passwd

**Field1:** User name

**Field2:** Encrypted password

**Field3:** Last password change day

**Field4:** Minimum password age

**Field5:** Maximum password age

**Field6:** Warming period

**Field7:** Inactive password

**Field8**: Account Expiry

**Field9:** Future reserved



**/etc/shadow**: This files stores the User’s password information such as encrypted password, last password change day, minimum password age, maximum password age, password, inactive, account expiry, etc

**/etc/shadow-**: This is the back file of the /etc/shadow

**/etc/default/useradd:** This is default configuration file for useradd command 

**/etc/login.defs:** This is main configuration file for user administration, group administration and password policies. If this file corrupts you can not perform user administration, group administration and password policies.

**/etc/bashrc:** Global login program file

**/etc/skel:** Skeleton Directory

	  .bashrc = local login program file 
	  . bash_profile = local user’s profile program file
	  . bash_logout = local user’s logout program file

#### Important commands for managing users:

**id command** - id command can be used to find the uid and gid associated with an user. It also lists down the groups to which the user belongs to.

**useradd**: The useradd command adds a new user in Linux. We will create a new user shivam. We will also verify that the user has been created by tailing the /etc/passwd file. The uid and gid are 1000 for the newly created user. The home directory assigned to the user is /home/shivam and the login shell assigned is /bin/bash. Do note that the user home directory and login shell can be modified later on.



**passwd**:  The passwd command is used to create or modify passwords for a user. In the above examples, we have not assigned any password for users shivam or amit while creating them. !! in an account entry in shadow means the account of an user has been created, but not yet given a password.

**Syntax:**
	
 #passwd  to change self passwd

 #passwd <username>  assign password to the user

 $passwd  to change self password (local user)

 #passwd <options>  <argument>  <username>

**OPTIONS:**

**-n=** minimum password age

**-x=** maximum password age

**-w=** warning period

**-i=** inactive passwd

**-e=** immediate expiry of account

**-l=** lock password

**-u=** unlock password

**-s=** status


**usermod**: The usermod command is used to modify the attributes of an user like the home directory or the shell.

**Syntax:** #usermod <options>  <argument>  <username>

**OPTIONS:**

**-u=** user id uid

**-g=** group id gid

**-c=** comment

**-d=** home directory

**-s=** login shell

**-G=** group assign

**-e=** account expiry

**-f=** password inactive

**-N=** do not create user’s primary group

**-r=** system user

**-o=** non unique

**-p=** set password

**-l=** login shell

**-L=** lock user account

**-U=** Unlock user account


**chage** - chage command is used to change the password policies of users. Password policies such as minimum password age, maximum password age, password inactive, warning period, account expiry, etc. chage is the acronym of change age


**OPTIONS:**

**-l=** list the password policies

**-d=** last password change day

**-m=** Minimum password age

**-M=** Maximum password age

**-W=** Warning period

**-I=** Inactive password period

**-E=** Account expiry


**userdel:** The userdel command is used to remove a user on Linux. Once we remove a user, all the information related to that user will be removed.


# Group Management:

There are 2 categories of groups in the Linux operating system i.e. Primary and Secondary groups. The Primary Group is a group that is automatically generated while creating a user with a unique user ID simultaneously a group with an ID the same as the user ID is created and the user gets added to the group and becomes the first and only member of the group. This group is called the primary group. A secondary group is a group that can be created separately with the help of commands and we can then add users to it by changing the group ID of users.

**CONFIGURATION FILES:**

**/etc/group:** This file stores the groups general information such as redirected password, group ID, group members list.

**Field1:** Group name

**Field2:** Redirected password

**Field3:** Group ID

**Field4:** Group member’s list


**/etc/group-:** This is the back file of the /etc/group

**Field1:** Group name

**Field2:** Encrypted password

**Field3:** Group admin

**Field4:** Group member’s list


**/etc/gshadow:** This file stores the group's password information such as encrypted password, group admin and group members list

**/etc/gshadow-:** This is the back file of the /etc/gshadow


#### Important commands for managing groups

**groupadd:** - To add a secondary Group

**groupmod:** 

**Syntax:**  groupmod  <options>  <arguement>  <existinggroupname>

**OPTIONS:**

**-g=** group id 

**-n=** group name

**-o=** non unique (duplicate)


 **gpasswd** - gpasswd command us used to assign passwords to groups. We can also add members in the group and can create group admin. It repeats on file /etc/gshadow

**Syntax:**  	#gpasswd  <groupname>   assign password to the group
	
  		#gpasswd  <options>  <arguement>  <groupname>

**OPTIONS:**

**-a=** add user in the group

**-d=** delete user from the group

**-r=** remove group password

**-M=** add multiple users in the group but it overwrites to the existing list

**-A=**create group admin

**groupdel:** This command is used to delete group.


# File Permissions in Linux

![image](https://github.com/user-attachments/assets/c064fb2d-d5b3-47d5-86d6-cd2d19aa2baf)


![image](https://github.com/user-attachments/assets/00e90622-2b7a-4e42-9d23-4a639da94c15)


![image](https://github.com/user-attachments/assets/bbc4561d-45ce-4edf-b8a9-bea9b124251a)

![image](https://github.com/user-attachments/assets/a315b05e-acbc-4701-9d32-2e1a0a4e61c1)


![image](https://github.com/user-attachments/assets/d1c93811-288b-4264-aa79-2dd989514e30)


# What is Crontab?

Crontab (Cron Table) is a Linux utility used to schedule and automate tasks at specific times or intervals. It is commonly used for backups, log rotation, script execution, and system maintenance.

#### Crontab Syntax

**Each line in a crontab file follows this format:**

Minute  Hour  Day  Month  DayOfWeek  Command

![image](https://github.com/user-attachments/assets/1a5417b8-59ba-4ba7-97ba-f64d1fe79f3f)

#### Crontab Special Characters

![image](https://github.com/user-attachments/assets/ef72e03f-408c-4df0-9fa5-35c82049e391)

#### Common Crontab Examples

![image](https://github.com/user-attachments/assets/135ac065-aca6-45c5-95e2-b0b8372a2ae4)

#### Managing Crontab

**Edit the Crontab :**   crontab -e

**View Existing Crontab Jobs :** crontab -l

**Remove All Crontab Jobs :** crontab -r

**Edit Crontab for Another User (Admin Only) :**  sudo crontab -u username -e 










 
