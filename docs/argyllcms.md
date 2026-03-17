# download
wget https://www.argyllcms.com/Argyll_V3.5.0_linux_x86_64_bin.tgz
tar -xzf Argyll_V3.5.0_linux_x86_64_bin.tgz

find Argyll_V3.5.0 -type d -exec chmod 755 {} \;
find Argyll_V3.5.0 -type f -exec chmod 644 {} \;
find Argyll_V3.5.0/bin -type f -exec chmod 744 {} \;

# installation
sudo dnf install libXScrnSaver # install x11 screensaver
sudo mv Argyll_V3.5.0/ /opt/argyll_V3.5.0/ # install argyllcms

sudo cp /opt/argyll_V3.5.0/usb/55-Argyll.rules /etc/udev/rules.d/55-Argyll.rules
sudo udevadm control --reload && sudo udevadm trigger # update udev

echo 'export PATH="$PATH:/opt/argyll_V3.5.0/bin"' >> ~/.bashrc
source ~/.bashrc

# test
dispcal -v -ql <filename> 
