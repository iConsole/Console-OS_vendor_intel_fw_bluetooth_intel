#!/system/bin/sh
echo "Entering NVM Partition"
if [ -e /nvm_fs_partition/bluetooth/bddata ]
then
    echo "File Present in NVM Partition"
    chown bluetooth.bluetooth /nvm_fs_partition/bluetooth/bddata
    chmod 0664 /nvm_fs_partition/bluetooth/bddata
else
    echo "File Not Present in NVM Partition"
    cp /system/etc/bluetooth/bddata /nvm_fs_partition/bluetooth/bddata
    chown bluetooth.bluetooth /nvm_fs_partition/bluetooth/bddata
    chmod 0664 /nvm_fs_partition/bluetooth/bddata
fi
