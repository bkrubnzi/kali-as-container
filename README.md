# Installing the Basics
1. Install a remote desktop client for your operating system
2. Install Docker for your operating system
3. Test that Docker is working as expected: `docker run hello-world`
4. Clone this source repo: `git clone https://github.com/bkrubnzi/kali-as-container.git`
# Build, Configure and Run the Container
1. Run the following command in the new directory:
   `docker-compose up`
2. In another terminal window, run the following command:
   `docker exec -it kali-linux-default /bin/bash`
   This will drop you into a root shell of your new docker container
3. Run the following commands:
	a. `passwd`
	b. `service xrdp start`
	c. `netstat -antp tcp`
   You should see that xrdp is now running on port 3389
4. Use your RDP client to connect to localhost on port 3389

