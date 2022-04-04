# Run the Container
1. Install a remote desktop client for your operating system
2. Install Docker for your operating system
3. Install an XWindows manager for your operating system (optional)
4. Test that Docker is working as expected: `docker run hello-world`
# Build, Configure and Run the Container
1. Run the following commands in the new directory:
  - `source ./set_host_display.sh`
  - `docker-compose up`
2. Use your RDP client to connect to localhost on port 3389
**Note:** Please note that your configuration may vary - for now, remove any references to XWindows or displays from your copy of the repo.  Contributions welcome from Windows developers!
