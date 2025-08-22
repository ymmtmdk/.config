# homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install starship mise neovim fish peco karabiner-elements google-chrome iterm2 visual-studio-code git-credential-manager

# vscode
code --install-extension asvetliakov.vscode-neovim
# On a Mac, the h, j, k and l movement keys may not repeat when held, to fix this execute the following command
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
# code --install-extension vscodevim.vim
code --install-extension GitHub.copilot


