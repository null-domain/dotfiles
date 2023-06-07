# FOR THIS TO WORK PROPERLY, THE FOLLOWING LINE NEEDS TO BE ADDED TO /etc/sudoers:
# $USER ALL = NOPASSWD: /usr/sbin/grub-reboot
reboot-to-windows ()
{
    windows_title=$(grep -i windows /boot/grub/grub.cfg | cut -d "'" -f 2)
    sudo grub-reboot "$windows_title" && reboot
}
