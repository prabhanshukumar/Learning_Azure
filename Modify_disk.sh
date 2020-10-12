#!/bin/bash

# Unmount the disk /dev/sdb1.
sudo umount /dev/sdb1

# Resize partition 1 to be 128GB.
# Read from standard input provide the options we want.
sudo parted /dev/sdb <<EOF
resizepart
1
128GB
quit
EOF

# The partition tool automatically remounts the drive. 
# Unmount it again so we can format it.
sudo umount /dev/sdb1

# Verify partition consistency.
sudo e2fsck -f -p /dev/sdb1

# Resize the filesystem.
sudo resize2fs /dev/sdb1

# Mount the drive (/dev/sdc1) back to the mount point (/uploads).
sudo mount /dev/sdb1 /uploads
