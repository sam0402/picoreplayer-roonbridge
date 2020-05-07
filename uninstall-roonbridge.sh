#!/bin/busybox ash

. /etc/init.d/tc-functions
. /var/www/cgi-bin/pcp-functions

useBusybox
TARGET=`cat /etc/sysconfig/backup_device`

pcp_write_var_to_config USER_COMMAND_1 ""

sed -i '/.RoonBridge/d' /opt/.filetool.lst
sed -i '/.RAATServer/d' /opt/.filetool.lst

rm -rf /.RoonBridge
rm -rf /.RAATServer
rm -rf /opt/RoonBridge
filetool.sh -b


