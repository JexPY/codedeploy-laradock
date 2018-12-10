
#!/bin/bash

# Exit on error
# set -o errexit -o pipefail

# Update apt
apt update -y

apt autoremove

apt clean