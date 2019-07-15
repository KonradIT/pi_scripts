# Run as sudo!

pacman -S avahi nss-mdns
cp /etc/nsswitch.conf /etc/nsswitch.conf.bak
sed -i "s/hosts:*/hosts: files mdns_minimal [NOTFOUND=return] dns myhostname/g" /etc/nsswitch.conf

# Safe keeping

systemctl start avahi-daemon
systemctl enable avahi-daemon

echo "All done."

exit 1
