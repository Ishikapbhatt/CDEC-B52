# LINUX COMMANDS:

1. ls – Lists files and directories in the current directory.
2.ls -al – Lists all files, including hidden ones, with detailed information.
3. pwd – Prints the current working directory.
4. cd path/path/to/directory – Changes the directory to the specified
5. cd .. – Moves up one directory level.
6. rmdir empty_directory – Removes an empty directory.
7. mkdir new_directory – Creates a new directory.
8. rm -rf directory_name – Deletes a directory and its contents recursively.
9. touch file.txt – Creates a new empty file.
10. cat file.txt – Displays the contents of a file.
11. nano file.txt – Opens a file in the nano text editor.
12. tac file.txt – Displays the contents of a file in reverse order.
13. vim file.txt – Opens a file in the Vim editor.
14. vi file.txt – Opens a file in the vi editor.
15. echo "Hello, World!"– Prints text to the terminal.
16. echo "Hello" > file.txt – Writes text to a file (overwrites existing content).
17. echo "Hello" >> file.txt – Appends text to a file.

18. cp source.txt destination.txt – Copies a file.
19. cp -r source_directory destination_directory – Copies a directory recursively.
20. mv old_name.txt new_name.txt – Renames a file.
21. mv file.txt /path/to/destination/ – Moves a file to another directory.
22. rm file.txt – Deletes a file.
23. find / -name "file.txt"- Searches for a file by name starting from the root directory.
24. find . -type f -name "*.log” - Finds all logs in the current directory.
25. Locate file.txt - Finds the location of a file using a pre-built index.
26. updatedb – Updates the locate command's index.
27. grep "search_term" file.txt – Searches for a term inside a file.
28. grep -i "search_term" file.txt – Case-insensitive search.
29. grep -r "search_term" /path/to/search/ – Searches
recursively in a directory.
30. awk '{print $1}' file.txt – Prints the first column of a file.
31. awk -F: '{print $1}' /etc/passwd – Prints the first field of the
/etc/passwd file, separated by colons.
32. sed 's/old/new/g' with "new" in a file.file.txt – Replaces all occurrences of "old" with “new”
in a file.
33. sed -i 's/old/new/g' file.txt – Replaces text in a file in place.
34. sort file.txt – Sorts lines in a file.

35. sort -r file.txt – Sorts lines in reverse order.
36. uniq file.txt - Removes duplicate lines from a sorted file.
37. wc -l file.txt – Counts the number of lines in a file.
38. wc -c file.txt – Counts the number of bytes in a file.
39. wc -w file.txt – Counts the number of words in a file.
40. head -n 10 file.txt – Displays the first 10 lines of a file.
41. tail -n 10 file.txt – Displays the last 10 lines of a file.
42. tail -f file.txt – Continuously monitors a file for changes.
43. df -h – Shows disk space usage in a human-readable format.
44. du -sh directory_name – Shows the size of a directory.
45. free-m – Displays memory usage in megabytes.
46. uptime – Shows system uptime and load average.
47. who – Displays currently logged-in users.
48. whoami – Displays the current logged-in username.
49. id – Displays the user ID (UID) and group ID (GID).
50. groups username – Displays groups a user belongs to.
51. top – Displays real-time process information.
52. ps aux – Displays running processes.
53. htop – An interactive process viewer (if installed).

54. kill -9 PID – Forcefully terminates a process.
55. pkill process_name – Kills processes by name.
56. killall process_name – Kills all processes with a specific name.
57. jobs – Lists background jobs.
58. bg – Resumes a background job.
59. fg – Brings a background job to the foreground.
60. nohup command & – Runs a command in the background, ignoring hangups.
61. crontab -e – Edits the crontab file to schedule tasks.
62. crontab -l – Lists scheduled cron jobs.
63. crontab -r – Removes all scheduled cron jobs.
64. history – Displays command history.
65. !100 – Runs command number 100 from history.
66. chmod 755 file.sh – Changes file permissions.
67. chown user:group file.txt – Changes file ownership.
68. chgrp group_name file.txt – Changes file group ownership.
69. ls -l | grep "^d" – Lists only directories.
70. df -i – Shows inode usage.
71. du -a – Shows size of all files and directories.
72. tar -cvf archive.tar directory/ – Creates a tar archive.

73. tar -xvf archive.tar – Extracts a tar archive.
74. tar -czvf archive.tar.gz directory/ – Creates a compressed tar archive.
75. tar -xzvf archive.tar.gz – Extracts a compressed tar archive.
76. zip -r archive.zip directory/ – Compresses a directory into a zip file.
77. unzip archive.zip – Extracts a zip file.
78. scp file.txt.user@remote:/path/ – Securely copies a file to a remote server.
79. scp -r directory user@remote:/path/ – Securely copies a directory to a remote server.
80. rsync -av source/ destination/ – Synchronizes directories.
81. Wget URL – Downloads a file from a URL.
82. curl -0 URL – Downloads a file from a URL.
83. curl -I URL – Retrieves HTTP headers from a URL.
84. ping google.com – Checks network connectivity.
85. traceroute google.com – Traces network route to a server.
86. netstat -tulnp – Shows network connections and listening ports.
87. ss -tulnp – Displays active connections (alternative to netstat).
88. ip a – Shows IP addresses.
89. ifconfig – Displays network interfaces (deprecated).
90. hostname – Displays the system hostname.
91. uptime – Shows system uptime.

92. uname -a – Displays system information.
93. lsblk – Lists information about storage devices.
94. lscpu – Shows CPU details.
95. blkid – Shows UUIDs of partitions.
96. mount /dev/sdb1 /mnt – Mounts a device.
97. umount /mnt – Unmounts a device.
98. df -Th – Displays file system types and disk usage.
99. fdisk -l – Lists partition tables.
100. mkfs.ext4 /dev/sdb1 – Formats a partition with ext4.
101. fsck /dev/sdb1 – Checks a filesystem for errors.
102. echo $? – Displays the exit status of the last command.
103. time command – Measures command execution time.
104. date – Displays the current date and time.
105. cal – Displays a calendar.
106. env – Displays environment variables.
107. unset VAR – Unsets an environment variable.
108. export VAR=value – Sets an environment variable.
109. alias ll='ls -al'– Creates a command alias.
110. unalias ll – Removes an alias.

111. basename /path/to/file.txt – Extracts the filename from a given path.
112. dirname /path/to/file.txt – Extracts the directory path from a given file path.
113. diff file1.txt file2.txt – Compares two files line by line.
114. cmp file1.txt file2.txt – Compares two files byte by byte.
115. stat file.txt – Displays detailed information about a file.
116. file file.txt – Determines the file type.
117. cut -d':' -f1 /etc/passwd – Extracts the first field from a
colon-separated file.
118. paste file1.txt file2.txt – Merges two files line by line.
119. tee output.file.txt – Writes output to both a file and the standard
120. yes "text"– Continuously outputs "text" until interrupted.
121. watch -n 5 df -h – Runs a command every 5 seconds.
122. lsattr – Lists file attributes.
123. chattr +i file.txt – Makes a file immutable (cannot be
modified or deleted).
124. chattr -i file.txt – Removes immutability from a file.
125. Nohup command & – Runs a command in the background and
ignores hangups.
126. jobs – Lists active background jobs.
127. bg %1 – Resumes a background job.
128. fg %1 – Brings job number 1 to the foreground.

129. disown -h %1 – Removes a job from the shell’s job table.
130. xargs – Passes standard input as command arguments.
131. ls | xargs rm – Deletes all files in a directory.
132. echo "file1 file2" | xargs rm – Deletes specified files.
133. uptime -p – Shows how long the system has been running.
134. uptime -s – Shows the system start time.
135. who -b – Displays the last system boot time.
136. last reboot – Shows the system reboot history.
137. dmesg | tail – Displays the latest kernel messages.
138. dmesg | grep error – Searches the kernel logs for errors.
139. journalctl -xe – Views system logs.
140. journalctl -f – Monitors logs in real time.
141. systemctl status service_name – Checks the status of a systemd service.
142. systemctl start service_name – Starts a systemd service.
143. systemctl stop service_name – Stops a systemd service.
144. systemctl restart service_name – Restarts a systemd
Service.
145. systemctl enable service_name – Enables a service to start
on boot.
146. systemctl disable service_name – Disables a service from starting on boot.

147. systemctl list-units --type=service – Lists all active system services.
148. systemctl daemon-reload – Reloads systemd configurationFiles.
149. service service_name status – Checks the status of a SysV service.
150. service service_name start – Starts a SysV service.
151. service service_name stop – Stops a SysV service.
152. chkconfig --list – Lists services managed by SysV init.
153. chkconfig service_name on – Enables a service on boot using SysV.
154. chkconfig service_name off – Disables a service from boot
using SysV.
155. modprobe module_name – Loads a kernel module.
156. lsmod – Lists currently loaded kernel modules.
157. rmmod module_name – Removes a kernel module.
158. insmod module.ko – Inserts a module into the kernel.
159. uname -r – Displays the currently running kernel version.
160. cat /proc/version – Shows kernel version details.
161. hostnamectl – Displays and modifies the hostname.
162. nmcli device status – Shows network interfaces and their
statuses.
163. nmcli connection show – Lists saved network connections.
164. nmcli connection up eth0 – Brings up a network interface.

165. nmcli connection down eth0 – Brings down a network
Interface.
166. dhclient -r – Releases the DHCP lease.
167. dhclient eth0 – Obtains a new DHCP lease.
168. ip link set eth0 down – Brings down an interface.
169. ip link set eth0 up – Brings up an interface.
170. tcpdump -i eth0 – Captures network packets on an interface.
171. tcpdump -nn port 80 – Captures HTTP traffic.
172. tcpdump -c 10 -i eth0 – Captures 10 packets and exits.
173. iptables -L – Lists firewall rules.
174. iptables -A INPUT -p tcp --dport 22 -j ACCEPT – Allows SSH access.
175. iptables -A INPUT -p tcp --dport 80 -j DROP – Blocks HTTP access.
176. iptables -D INPUT -p tcp --dport 80 -j DROP –Removes a firewall rule.
177. firewall-cmd (Firewalld).--list-all – Lists active firewall rules
178. firewall-cmd --permanent --add-port=443/tcp – Opens port 443 permanently.
179. firewall-cmd --reload – Reloads the firewall rules.
180. ufw status – Checks UFW firewall status.
181. ufw allow 22/tcp – Allows SSH access.
182. ufw deny 80/tcp – Blocks HTTP access.

183. ufw delete allow 22/tcp – Removes an allowed rule.
184. df -T – Displays filesystem type.
185. ls -lh – Lists files with human-readable sizes.
186. du -ch – Shows total disk usage in human-readable format.
187. htop – Interactive process monitoring.
188. top -o %MEM – Sorts processes by memory usage.
189. lsof -i :80 – Lists processes using port 80.
190. strace -c ls – Traces system calls used by a command.
191. strace -e open ls – Shows file open system calls used by ls.
192. tcpdump -XX – Captures packets with hex and ASCII output.
193. watch -d -n 5 free -m – Monitors memory usage every 5 seconds.
194. iotop – Monitors disk I/O usage by processes.
195. lsusb – Lists USB devices.
196. lspci – Lists PCI devices.
197. uptime -p – Shows how long the system has been running in a human-friendly format.
198. dmidecode -t memory – Displays RAM information.
199. mpstat 1 – Displays CPU usage statistics.
200. iostat -c 2 5 – Shows CPU statistics every 2 seconds for 5 iterations.
201. vmstat 1 5 – Displays system performance statistics every second for 5 iterations.

202. sar -u 5 3 – Reports CPU usage every 5 seconds for 3 iterations.
203. sar -r 5 3 – Reports memory usage every 5 seconds for 3 iterations.
204. uptime -s – Displays system startup time.
205. iotop -o – Shows processes doing the most disk I/O.
206. dstat – Displays system resource usage dynamically.
207. mpstat -P ALL 5 – Displays CPU usage for all cores every 5 seconds.
208. nice -n 10 command – Runs a command with lower priority.
209. renice -n 10 -p PID – Changes priority of an existing process.
210. ulimit -a – Shows system resource limits.
211. ulimit -n 10240 – Changes the maximum number of open file descriptors.
212. getfacl file.txt – Displays ACL (Access Control List) permissions of a file.
213. setfacl -m u:username:rwx file.txt – Grants a user additional file permissions.
214. setfacl -x u:username file.txt – Removes ACL permissions for a user.
215. getsebool -a – Lists all SELinux booleans and their statuses.
216. setsebool -P httpd_can_network_connect on – Allows Apache to make network
connections in SELinux.
217. semanage fcontext -l – Lists default SELinux file contexts.
218. restorecon -Rv /var/www/html – Restores SELinux context for files.
219. getenforce – Displays the current SELinux mode (Enforcing/Permissive/Disabled).
220. setenforce 0 – Switches SELinux to permissive mode.

221. auditctl -l – Lists all active audit rules.
222. ausearch -m avc – Searches SELinux denial messages.
223. ausearch -m USER_LOGIN – Searches authentication logs using audit logs.
224. modinfo module_name – Displays information about a kernel module.
225. modprobe -r module_name – Unloads a kernel module.
226. ls -Z – Displays SELinux contexts of files.
227. ps -eZ – Displays SELinux contexts of processes.
228. firewall-cmd --list-services – Lists allowed services in Firewalld.
229. firewall-cmd --permanent --add-service=https – Allows HTTPS traffic permanently.
230. firewall-cmd --permanent --remove-service=https – Removes HTTPS access.
231. firewall-cmd --reload – Reloads Firewalld rules.
232. ufw enable – Enables UFW firewall.
233. ufw disable – Disables UFW firewall.
234. ufw status numbered – Displays UFW rules with numbering.
235. ufw delete 2 – Deletes UFW rule number 2.
236. iptables -P INPUT DROP – Sets default INPUT policy to DROP.
237. iptables -P FORWARD DROP – Drops forwarded packets by default.
238. iptables -P OUTPUT ACCEPT – Allows all outgoing traffic by default.
239. iptables -A INPUT -p tcp --dport 22 -j ACCEPT – Allows SSH access.

240. iptables-save > rules.v4 – Saves iptables rules to a file.
241. iptables-restore < rules.v4 – Restores iptables rules from a file.
242. lsof -p PID – Lists open files by a process.
243. lsof -i :443 – Displays processes using port 443.
244. lsof /path/to/file – Shows processes accessing a specific file.
245. strace -o trace.log -p PID – Traces system calls of a running process.
246. strace -c ls – Summarizes system calls used by a command.
247. tcpdump -i eth0 – Captures network packets on interface eth0.
248. tcpdump -nn -s0 -X -i eth0 port 80 – Captures and displays raw HTTP traffic.
249. nc -zv google.com 443 – Checks if port 443 is open on google.com.
250. nc -lvp 1234 – Starts a netcat listener on port 1234.
251. rsync -avz /src/ user@remote:/dest/ – Syncs files\ securely over SSH.
252. rsync -a --delete /src/ /dest/ – Synchronizes directories and removes extra files.
253. scp -P 2222 file.txt user@remote:/path/ – Transfers a file using a non-default SSH port.
254. ssh user@remote -p 2222 – Connects to a server using a different SSH port.
255. ssh-keygen -t rsa -b 4096 -C
"your_email@example.com" – Generates an SSH key.
256. ssh-copy-id user@remote – Copies the SSH key to a remote Host.
257. ssh-agent bash – Starts an SSH agent session.

258. eval "$(ssh-agent -s)"– Initializes the SSH agent.
259. chmod 600 ~/.ssh/id_rsa – Sets secure permissions on an SSH private key.
260. chage -l username – Displays password expiration details for aUser.
261. chage -M 90 username – Sets the password to expire every 90 Days.
262. passwd username – Changes a user's password.
263. useradd -m -s /bin/bash newuser – Creates a new user with a home directory.
264. usermod -aG sudo username – Adds a user to the sudo group.
265. deluser username – Removes a user.
266. groupadd newgroup – Creates a new group.
267. usermod -G groupname username – Adds a user to a group.
268. groupdel groupname – Deletes a group.
269. crontab -e – Opens the user's crontab for editing.
270. crontab -l – Lists scheduled cron jobs.
271. crontab -r – Removes all cron jobs for a user.
272. echo "0 2 * * * /path/to/script.sh" | crontab - –Schedules a cron job to run a script at 2 AM
daily.
273. at now + 10 minutes – Schedules a command to run in 10 Minutes.
274. at -l – Lists pending scheduled jobs.
275. systemctl list-timers – Lists active systemd timers.
276. timedatectl – Displays system time settings.

277. timedatectl set-timezone America/New_York – Changes system timezone.
278. hwclock --systohc – Synchronizes hardware clock with system clock.
279. date "+%Y-%m-%d %H:%M:%S".– Displays date and time in a specific format.
280. find /var/log -type f -mtime +30 -delete – Deletes log files older than 30 days.
281. journalctl --vacuum-time=30d – Removes journal logs older than 30 days.
282. du -ah /var/log | sort -rh | head -10 – Lists the 10 largest log files.
283. logrotate -d /etc/logrotate.conf – Tests log rotation configuration.
284. fsck -y /dev/sda1 – Checks and repairs a filesystem.
285. tune2fs -m 5 /dev/sda1 – Reserves 5% of space for root user.
286. blkid – Lists partitions and their UUIDs.
287. mount -o remount,rw / – Remounts the root filesystem as read/write.
288. mkfs.ext4 /dev/sdb1 – Formats a partition with ext4.
289. tune2fs -c 100 /dev/sda1 – Forces a filesystem check every 100 mounts.
290. swapoff -a && swapon -a – Restarts the swap space.
291. free -h – Displays RAM and swap usage in human-readable format.
292. grep -i error /var/log/syslog – Searches syslog for errors.
293. dmidecode -t memory – Displays memory module details.
294. systemctl poweroff – Shuts down the system.
295. systemctl reboot – Reboots the system.

296. shutdown -h now – Immediately shuts down the system.
297. shutdown -r +10 – Reboots the system in 10 minutes.
298. wall "System maintenance in 5 minutes"– Broadcasts a message to all users.
299. uptime – Displays system uptime and load average.
300. exit – Logs out of the shell session.
