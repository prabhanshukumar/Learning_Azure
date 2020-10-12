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
