# VERY IMPORTANT! After each kernel update or dkms rebuild the modules must be signed again with the script
# ~/.ssl/sign-all-modules.sh

# Place all files in ~/.ssl folder
mkdir -p ~/.ssl
cd ~/.ssl

# Generate custom keys with openssl
openssl req -new -x509 -newkey rsa:2048 -keyout MOK.priv -outform DER -out MOK.der -nodes  -subj "/CN=Owner/"

# Set more restrictive permisions as these are private keys
chmod 600 MOK.*
 
# Add the sign-all-modules script to the .ssl folder
cat <<EOT > sign-all-modules.sh
#!/bin/bash
sudo -v
echo "Signing the following modules"
for filename in /lib/modules/\$(uname -r)/updates/dkms/*.ko; do
    sudo /usr/src/linux-headers-\$(uname -r)/scripts/sign-file sha256 ~/.ssl/MOK.priv ~/.ssl/MOK.der \$filename
    echo "\$filename"
done
EOT

chmod +x ~/.ssl/sign-all-modules.sh

#Run the script
~/.ssl/sign-all-modules.sh

#Add the key to the trusted keys database
sudo apt-get install mokutil
sudo mokutil --import ~/.ssl/MOK.der

cd ~
#Reboot and in the boot screen select add/import key 
