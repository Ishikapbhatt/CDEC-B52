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

/mnt — — It is used as a temprary mounting point

/opt — — It is most installed third party software.

/proc — — This provide information about currently running software

/sbin — — It Contains System admin binary executable typically used by root user

/temp — — It is used for temp used file. which may be deleted after power off

/usr — — It Contains User related file .

/var — — It contains variable data fileprovides

/srv — — srv stands for service. contains service related data

/run — — temporary file system.

/sys — — virtual file system which provide information about devices , drivers & kernal parameter.






