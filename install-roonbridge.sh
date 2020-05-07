#!/bin/busybox ash

. /etc/init.d/tc-functions
. /var/www/cgi-bin/pcp-functions

useBusybox
TARGET=`cat /etc/sysconfig/backup_device`


sudo -u tc tce-load -wi pcp-ffmpeg.tcz
cd /opt
wget http://download.roonlabs.com/updates/stable/RoonBridge_linuxarmv7hf.tar.bz2
tar xf RoonBridge_linuxarmv7hf.tar.bz2
rm -f /opt/RoonBridge_linuxarmv7hf.tar.bz2

mkdir -p /.RoonBridge/Settings
echo AskAlways > /.RoonBridge/Settings/update_mode
mkdir /.RAATServer

pcp_write_var_to_config USER_COMMAND_1 "%2fopt%2fRoonBridge%2fstart.sh"

sed -i '/.RoonBridge/d' /opt/.filetool.lst
sed -i '/.RAATServer/d' /opt/.filetool.lst
echo '.RoonBridge' >>/opt/.filetool.lst
echo '.RAATServer' >>/opt/.filetool.lst

filetool.sh -b

