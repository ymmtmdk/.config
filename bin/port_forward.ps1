$HOST_IPV4="192.168.1.9" # 適宜指定してください
$WSL2_IPV4=bash ~/.config/bin/get_ipv4.bash # WSL2のIPアドレスを取得
echo $WSL2_IPV4
netsh interface portproxy delete v4tov4 listenaddress=$HOST_IPV4 listenport=22
netsh interface portproxy delete v4tov4 listenaddress=$HOST_IPV4 listenport=2222
netsh interface portproxy delete v4tov4 listenaddress=$HOST_IPV4 listenport=7777
netsh interface portproxy delete v4tov4 listenaddress=$HOST_IPV4 listenport=7778
netsh interface portproxy delete v4tov4 listenaddress=$HOST_IPV4 listenport=7779
netsh interface portproxy add v4tov4 listenaddress=$HOST_IPV4 listenport=22 connectaddress=$WSL2_IPV4 connectport=22
netsh interface portproxy add v4tov4 listenaddress=$HOST_IPV4 listenport=2222 connectaddress=$WSL2_IPV4 connectport=22
netsh interface portproxy add v4tov4 listenaddress=$HOST_IPV4 listenport=7777 connectaddress=$WSL2_IPV4 connectport=7777
netsh interface portproxy add v4tov4 listenaddress=$HOST_IPV4 listenport=7778 connectaddress=$WSL2_IPV4 connectport=7778
netsh interface portproxy add v4tov4 listenaddress=$HOST_IPV4 listenport=7779 connectaddress=$WSL2_IPV4 connectport=7779
netsh.exe interface portproxy show v4tov4

