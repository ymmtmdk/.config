# homebrew
#/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install starship mise neovim fish fzf karabiner-elements google-chrome brave-browser iterm2 git-credential-manager

# vscode
# code --install-extension asvetliakov.vscode-neovim
# code --install-extension vscodevim.vim
# code --install-extension ms-ceintl.vscode-language-pack-ja
# code --install-extension rooveterinaryinc.roo-cline github.copilot github.copilot-chat
# code --install-extension enkia.tokyo-night
# code --install-extension vscodevim.vim
# code --install-extension vim
# On a Mac, the h, j, k and l movement keys may not repeat when held, to fix this execute the following command
#defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

### open ./RobotoMonoNerdFontMono-Regular.ttf # and install it
### open iterm2 > settings > general > settings > check External settings > /Users/ymmtmdk/.config/iterm2

# touch id for sudo
# sed -e 's/^#auth/auth/' /etc/pam.d/sudo_local.template | sudo tee /etc/pam.d/sudo_local

# drag
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool true

# KeyRepeat
defaults write -g KeyRepeat -int 2
defaults write -g InitialKeyRepeat -int 15
