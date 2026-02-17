# security
ps -eZ | grep <process> # List processes with SELinux labels
sudo ausearch -m avc -ts recent # List SELinux denials

sudo cat vaar/log/secure | grep failed # List failed password checks
find ~/Documents/ -type f -mtime -<num-days> -ls # Recently modified files
sudo lynis audit system # Run Lynis scan

sudo ss -tulpn # List listening sockets and owning PID
ps -p <PID> -o pid,comm,args # Display PID, binary and command-line invocation

sudo fail2ban-client status sshd # Print fail2ban status

# tar
tar czf <name>.tar.gz <name>/ # Compress with gzip
tar cJf <name>.tar.xz <name>/ # Compress with xz
par2 create -r10 -n1 <filename> # Create par2 file with 10% redundancy
par2 verify <filename> # Verify file
find <path> -type d -exec chmod 755 {} \; # Set directories permission
find <path> -type f -exec chmod 644 {} \; # Set files permissions

# device
lsblk -f
sudo smartctl -a /dev/sdX # Print SMART attributes

sudo btrfs scrub start / # Integrity check on mounted filesystem 
sudo btrfs scrub status / # Print status
sudo btrfs scrub cancel /

OPT=nosuid,nodev,nofail,noauto,x-gvfs-show,uid=1000,gid=1000,fmask=133,dmask=022 # Standard permissions
sudo mount -o "$OPT" /dev/sdX /mnt/point # Mount
