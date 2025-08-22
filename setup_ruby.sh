# aptで依存関係をインストールする
sudo apt update
sudo apt install build-essential rustc libssl-dev libyaml-dev zlib1g-dev libgmp-dev

# Miseバージョンマネージャをインストールする
brew install mise
echo 'eval "$(~/.local/bin/mise activate)"' >> ~/.bashrc
source ~/.bashrc

# MiseでRubyをグローバルにインストールする
mise use -g ruby
