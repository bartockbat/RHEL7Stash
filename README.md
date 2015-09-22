# RHEL7Stash

This is a Dockerfile to demonstrate Atlassian Stash.

Note: This Dockerfile is for a registered RHEL7 (Red Hat Enterprise Linux 7 Server) with a RHEL7 flavour of Docker installed. Also, you would need to have 
entitlements for RHEL

It will not build correctly otherwise.

1. Get this repo: git clone https://github.com/bartockbat/RHEL7Stash.git

2. Build the Docker container: docker build -t atlassian/rhel7-stash .

3. Launch the container: docker run -d -p 7990:7990 -p 8006:8006 atlassian/rhel7-stash

4. Once the container is running, browse to the URL in your browser http://<host_or_IP_address>:7990 and follow the instructions 
