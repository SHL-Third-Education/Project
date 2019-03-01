#!/bin/bash

gcc fifo_can_serv_final.c -o remote_controller -lpthread

cd ocv
g++ camera_recorder.cpp -o cam_record $(pkg-config opencv --libs)
cd ..

cp -r project_* /usr/share/matrix-gui-2.0/apps/
chmod -R 777 bin
cp bin/* /usr/bin/

mv /usr/share/wl18xx/hostapd.conf /usr/share/wl18xx/hostapd.conf.bak
mv /usr/share/wl18xx/wpa_supplicant.conf /usr/share/wl18xx/wpa_supplicant.conf.bak

cp wl18xx_config/* /usr/share/wl18xx/

chmod 777 auto_wifi.sh
chmod 777 ap_start.pl

cp icon/* /usr/share/matrix-gui-2.0/apps/images/

echo "Finish to Prepare DSP Setting"
