# sshdの有効化
sudo systemctl enable ssh
# SSHホスト鍵の生成
sudo ssh-keygen -A
# パスワード認証の有効化（任意）
sudo sed -i -e 's/^PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
# sshdの起動
sudo systemctl start ssh
