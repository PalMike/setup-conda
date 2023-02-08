#! /usr/bin/bash
##Variables
FILE=/notebooks/anaconda.sh
INSTALL=/root/anaconda3
##Find Anaconda and install
if [ -d "$INSTALL" ];
    then
        source /root/anaconda3/bin/activate
        yes | conda update conda
        clear
        echo ".:Anaconda was successfully updated:."
    else
        if [ -f "$FILE" ];
            then
                cd /notebooks
                bash anaconda.sh -b -p
                source /root/anaconda3/bin/activate
                yes | conda update conda
                clear
                echo ".:Anaconda was successfully installed:."
            else
                curl -o /notebooks/anaconda.sh https://repo.anaconda.com/archive/Anaconda3-2022.10-Linux-x86_64.sh
                cd /notebooks
                bash anaconda.sh -b -p
                source /root/anaconda3/bin/activate
                yes | conda update conda
                clear
                echo ".:Anaconda was successfully installed and updated"
        fi
fi
