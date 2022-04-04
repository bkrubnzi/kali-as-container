# Setup XWindows (optional)
1. Install XQuartz
2. run set_host_display.sh
3. Follow the instructions below
# Run the Container
1. Clone this source repo: `git clone https://github.com/bkrubnzi/kali-as-container.git`
2. Install a remote desktop client for your operating system
3. Install Docker for your operating system
4. Test that Docker is working as expected: `docker run hello-world`
# Build, Configure and Run the Container
1. Run the following command in the new directory:
   `docker-compose up`
3. Use your RDP client to connect to localhost on port 3389
