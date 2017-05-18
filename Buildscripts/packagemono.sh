#!/bin/bash
echo "--------------------------------------"
echo "Creating the CloudBedLam Mono ELF     "
echo "--------------------------------------"
cd $BUILD_SOURCESDIRECTORY
cd CloudBedlam/bin/Debug
echo "CloudBedLam Bin-Debug Path:"
pwd
ls
echo "--------------------------------------"
echo " Building Mono Elf                    "
echo "--------------------------------------"
mkbundle -o CloudBedlam  CloudBedlam.exe --deps -L /usr/lib/mono/4.5/

echo "Over and out."
