#!/bin/bash
docker build -t tjdalsckd/ros_18.04:latest --build-arg ssh_prv_key="$(cat ~/.ssh/id_ed25519)" --build-arg ssh_pub_key="$(cat ~/.ssh/id_ed25519.pub)" .

