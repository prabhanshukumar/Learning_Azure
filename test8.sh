# Create the /uploads directory, which we'll use as our mount point.
sudo mkdir /newuploads

# Mount the drive (/dev/sdb1) back to the mount point (/newuploads).
sudo mount /dev/sdb1 /newuploads
