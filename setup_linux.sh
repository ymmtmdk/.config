# homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo >> ~/.bashrc
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.bashrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

sudo apt-get install build-essential
brew install gcc starship ruby python neovim fish peco

# $ sudo vim /etc/inputrc
# # set bell-style none
# ↓ ↓ ↓
# set bell-style none

# WINDOWS/<username>\.wslconfig に以下を追記するだけです。
# .wslconfig
#[wsl2]
# dnsTunneling=true

# /etc/wsl.conf
# [network]
# generateResolvConf=false

# # edit /etc/resolv.conf

