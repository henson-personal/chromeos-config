# This file is sourced by bash for login shells.  The following line
# runs your .bashrc and is recommended by the bash info pages.
[[ -f ~/.bashrc ]] && . ~/.bashrc

# Path to node.js binaries
export PATH=~/Downloads/node/bin:$PATH

# Enable execution on the filesystem
echo Remounting filesystem..
sudo mount -i -o remount,`mount | pcregrep -o1 "/home/chronos/user type ecryptfs \((.*?)\)" | sed s/noexec/exec/g` /home/chronos/user

