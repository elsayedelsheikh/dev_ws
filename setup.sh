#!/bin/bash
set -e

vcs import src --input src/pacakges.repos
sudo apt-get update
rosdep update --rosdistro=rolling
rosdep install --from-paths src --ignore-src -y --rosdistro=rolling
