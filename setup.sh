echo "Setup v2ray VPN..."
wget https://github.com/v2ray/v2ray-core/releases/download/v4.28.2/v2ray-linux-64.zip
mkdir v2ray-linux-64
mv v2ray-linux-64.zip ./v2ray-linux-64
cd v2ray-linux-64
unzip v2ray-linux-64.zip
cp ./systemd/system/v2ray.service /usr/lib/systemd/system
cp v2ray v2ctl geoip.dat geosite.dat /usr/local/bin 
mkdir /usr/local/etc/v2ray
mv vpoint_vmess_freedom.json /usr/local/etc/v2ray/config.json
# vi /usr/local/etc/v2ray/config.json
sed -i 's/10086/16616/g' /usr/local/etc/v2ray/config.json
sed -i 's/e3e35cd38666/e3e35cd38666/g' /usr/local/etc/v2ray/config.json
systemctl start v2ray


