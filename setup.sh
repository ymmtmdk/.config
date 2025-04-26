# homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install starship mise neovim fish peco karabiner-elements google-chrome iterm2 visual-studio-code git-credential-manager

# vscode
# code --install-extension asvetliakov.vscode-neovim
# code --install-extension vscodevim.vim
code --install-extension ms-ceintl.vscode-language-pack-ja
code --install-extension rooveterinaryinc.roo-cline github.copilot github.copilot-chat
code --install-extension enkia.tokyo-night
# code --install-extension vscodevim.vim
# code --install-extension vim

# On a Mac, the h, j, k and l movement keys may not repeat when held, to fix this execute the following command
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false


