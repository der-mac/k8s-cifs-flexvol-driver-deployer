#!/bin/sh
#
# Guided by https://github.com/kubernetes/community/blob/master/contributors/design-proposals/storage/flexvolume-deployment.md#recommended-driver-deployment-method
#

set -o errexit
set -o pipefail

VENDOR=fstab~cifs
DRIVER=cifs

driver_dir=${VENDOR}
if [ ! -d "/flexmnt/$driver_dir" ]; then
  mkdir -p "/flexmnt/$driver_dir"
fi

cp "/$DRIVER" "/flexmnt/$driver_dir/.$DRIVER"
mv -f "/flexmnt/$driver_dir/.$DRIVER" "/flexmnt/$driver_dir/$DRIVER"

while : ; do
  sleep 3600
done
