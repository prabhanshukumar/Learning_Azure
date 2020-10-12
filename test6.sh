# The partition tool automatically remounts the drive. 
# Unmount it again so we can format it.
sudo umount /dev/sdb1

# Verify partition consistency.
sudo e2fsck -f -p /dev/sdb1

# Resize the filesystem.
sudo resize2fs /dev/sdb1

# Mount the drive (/dev/sdb1) back to the mount point (/newuploads).
sudo mount /dev/sdb1 /newupload
