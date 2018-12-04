
#!/bin/bash

# Exit on error
set -o errexit -o pipefail

# Update yum
apt update -y

apt autoremove

apt clean