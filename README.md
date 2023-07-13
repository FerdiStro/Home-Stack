# Home-Stack
Docker and Kubernetes Stack for Local in each File


## Vpn-To home Network

Curl-Script from [GitHub](https://github.com/angristan/openvpn-install)
<br>
### Install Script and add Permissions: <br>
`curl -O https://raw.githubusercontent.com/angristan/openvpn-install/master/openvpn-install.sh chmod +x openvpn-install.sh` <br>
### Run: 
`./openpn-install.sh`<br>
### Start the VPN <br>
Drop your `.ovpn-File` in the Folder and edit the `start-vpn.sh` File if your config didn't name like `vpnhome.ovpn` <br> <br>
Execute  `./start-vpn.sh`<br>

