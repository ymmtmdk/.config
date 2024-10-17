$WSL2_IPV4=bash ~/.config/bin/get_ipv4.bash # WSL2のIPアドレスを取得
$HOST_IPV4="192.168.1.9" # 適宜指定してください
$PORT=22 # SSHのポート
# netsh interface portproxy delete v4tov4 listenport=$PORT # 古い設定を削除
netsh interface portproxy add v4tov4 listenaddress=$HOST_IPV4 listenport=$PORT connectaddress=$WSL2_IPV4 connectport=$PORT # ホストIP:PORTへアクセスがあったら、WSL2_IP:PORTに転送します。
netsh.exe interface portproxy show v4tov4
