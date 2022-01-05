### 0x0B. SSH
	OJ Richard

<img src='https://www.hostinger.com/tutorials/wp-content/uploads/sites/2/2017/07/symmetric-encryption-ssh-tutorial.webp' alt='' />

### General Objectives
* What is a server
* Where servers usually live
* What is SSH
* How to create an SSH RSA key pair
* How to connect to a remote host using an SSH RSA key pair
* The advantage of using #!/usr/bin/env bash instead of /bin/bash

### Your Servers
```
Name		Username	IP		State
1131-web-01	ubuntu		34.73.135.187	running
```

### Tasks
### 0. Use a private key
* Write a Bash script that uses ssh to connect to your server using the private key ~/.ssh/school with the user ubuntu.

	* Requirements:

* Only use ssh single-character flags
* You cannot use -l
* You do not need to handle the case of a private key protected by a passphrase

### 1. Create an SSH key pair
* Write a Bash script that creates an RSA key pair.

	* Requirements:

* Name of the created private key must be school
* Number of bits in the created key to be created 4096
* The created key must be protected by the passphrase betty

### 2. Client configuration file
* Your machine has an SSH configuration file for the local SSH client, let’s configure it to our needs so that you can connect to a server without typing a password. Share your SSH client configuration in your answer file.

	* Requirements:

* Your SSH client configuration must be configured to use the private key ~/.ssh/school
* Your SSH client configuration must be configured to refuse to authenticate using a password

### 3. Let me in!
* Now that you have successfully connected to your server, we would also like to join the party.

Add the SSH public key below to your server so that we can connect using the ubuntu user.
```
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDNdtrNGtTXe5Tp1EJQop8mOSAuRGLjJ6DW4PqX4wId/Kawz35ESampIqHSOTJmbQ8UlxdJuk0gAXKk3Ncle4safGYqM/VeDK3LN5iAJxf4kcaxNtS3eVxWBE5iF3FbIjOqwxw5Lf5sRa5yXxA8HfWidhbIG5TqKL922hPgsCGABIrXRlfZYeC0FEuPWdr6smOElSVvIXthRWp9cr685KdCI+COxlj1RdVsvIo+zunmLACF9PYdjB2s96Fn0ocD3c5SGLvDOFCyvDojSAOyE70ebIElnskKsDTGwfT4P6jh9OBzTyQEIS2jOaE5RQq4IB4DsMhvbjDSQrP0MdCLgwkN
```

### 4. Client configuration file (w/ Puppet)
* Let’s practice using Puppet to make changes to our configuration file. Just as in the previous configuration file task, we’d like you to set up your client SSH configuration file so that you can connect to a server without typing a password.

	* Requirements:

* Your SSH client configuration must be configured to use the private key ~/.ssh/school
* Your SSH client configuration must be configured to refuse to authenticate using a password
