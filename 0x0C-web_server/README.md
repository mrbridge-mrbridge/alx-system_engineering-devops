### 0x0C. Web server
	OJ Richard

### General Objectives
* What is the main role of a web server
* What is a child process
* Why web servers usually have a parent process and child processes
* What are the main HTTP requests
* What DNS stands for
* What is DNS main role

<img src="https://s3.amazonaws.com/intranet-projects-files/holbertonschool-sysadmin_devops/266/8Gu52Qv.png" alt="web server" />

### Tasks
### 0. Transfer a file to your server
* Write a Bash script that transfers a file from our client to a server:

	* Requirements:

* Accepts 4 parameters
* The path to the file to be transferred
* The IP of the server we want to transfer the file to
* The username scp connects with
* The path to the SSH private key that scp uses
* Display Usage: 0-transfer_file PATH_TO_FILE IP USERNAME PATH_TO_SSH_KEY if less than 3 parameters passed
* scp must transfer the file to the user home directory ~/
* Strict host key checking must be disabled when using scp
