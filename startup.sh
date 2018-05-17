#!/bin/sh

# Init
cd /home/ubuntu
. /home/ubuntu/.bashrc

# Reset
rm -rf /home/ubuntu/nchainz-node-scripts
git clone https://github.com/egansoft/nchainz-node-scripts.git /home/ubuntu/nchainz-node-scripts

# Run
chmod +x ./nchainz-node-scripts/reloadandrun.sh
./nchainz-node-scripts/reloadandrun.sh
