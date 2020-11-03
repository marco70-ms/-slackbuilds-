Without compression

To backup without compression:

$ partclone.ext4 -c -s /dev/sda1 -o ~/image_sda1.pcl

To restore it:

$ partclone.ext4 -r -s ~/image_sda1.pcl -o /dev/sda1

With compression

To backup with compression:

$ partclone.ext4 -c -s /dev/sda1 | gzip -c > ~/image_sda1.pcl.gz

$ partclone.btrfs -c -s /dev/sda1 | gzip -c5 > ~/image_sda1.pcl.gz

Note: For maximum compression use gzip -c9

To restore it:

zcat ~/image_sda1.pcl.gz | partclone.ext4 -r -o /dev/sda1
