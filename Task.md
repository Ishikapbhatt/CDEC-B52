# **Questions**

#### **Q1 Create the following users, groups, and group memberships:**

 A group named sysadmin.

 A user natasha who belongs to sysadmin as a secondary group.

 A user harry who also belongs to sysadmin as a secondary group.

 A user sarah who does not have access to an interactive shell on the system, and who is not a member of sysadmin.

 natasha, sarah and harry should all have the password of "thuctive".

#### ** Q2 Create a collaborative directory /common/admin with the following characteristics:**

 Group ownership of /common/admin is sysadmin.

 The directory should be readable, writable, and accessible to members of sysadmin, but not to any other user.

 (It is understood that root has access to all files and directories on the system.)




![image](https://github.com/user-attachments/assets/cffe7c9c-b381-411d-9d4b-04ff4f09ae88)



![image](https://github.com/user-attachments/assets/e683fe39-8dad-448c-a17a-fa17d45ddc3d)


 Files created in /common/admin automatically have group ownership set to the sysadmin

#### **Q3 Copy the file /etc/fstab to /var/tmp. Configure the permissions of/var/tmp/fstab so that:**

 The file /var/tmp/fstab is owned by the root user.

 The file /var/tmp/fstab belong to the group root.

 The file /var/tmp/fstab should not be executable by anyone.

 The user natasha is able to read and write /var/tmp/fstab.

 The user harry can neither write nor read /var/tmp/fstab.


#### Q4 You are a system administrator, and your task is to schedule a cron job that backs up a directory (/home/student/projects/) to another location (/home/student/backup/) every day at 2:30 AM. The backup should be done using the cp command.

What command would you add to the crontab file to achieve this?

How would you edit the crontab for the current user to add this job?


#### Q5 You need to set up a cron job that clears the system log file (/var/log/myapp.log) every Sunday at midnight. Instead of deleting the file, you should rename it with a timestamp and create a new empty log file.

Tasks:
Write the cron job command to achieve this.

Explain what each part of the cron job does.


#### Q6 Custom Script Execution
You wrote a script (/home/student/cleanup.sh) that removes temporary files older than 7 days from /tmp. You want to schedule this script to run every Monday, Wednesday, and Friday at 3:15 AM.

Tasks:
What would the crontab entry look like?

How can you ensure the script runs with the correct permissions?


#### Q7 Prevent Duplicate Execution
You have a script (/home/student/longtask.sh) that sometimes takes a long time to complete. If a new instance starts before the previous one finishes, it can cause problems. Modify the cron job to prevent duplicate executions using a lock file.

Tasks:
Modify the cron job to ensure only one instance runs at a time.


#### Q8 Configure a job for user natasha that runs daily at 23:14 local time and execute "Hiya"

