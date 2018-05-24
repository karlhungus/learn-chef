#!/bin/bash
docker pull centos:7

# - brings up a container from the centos:7 image and starts a Bash session (/bin/bash).
# - creates an interactive session to the container (-i).
# - allocates a pseudoterminal (-t).
# - mounts (-v) the current working directory on the host (for example, ~/learn-chef) as /root/chef-repo on the container.
# - port forwards network traffic (-p) to port 8100 on the host to port 80 on the container. You'll use this later to access the web server on your container from your workstation.
docker run -it -v $(pwd):/root/chef-repo -p 8100:80 centos:7 /bin/bash

