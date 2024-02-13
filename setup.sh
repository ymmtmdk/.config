# homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install starship ruby neovim fish peco karabiner-elements google-chrome brave-browser iterm2 visual-studio-code git-credential-manager

# vscode
code --install-extension asvetliakov.vscode-neovim
# On a Mac, the h, j, k and l movement keys may not repeat when held, to fix this execute the following command
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
# code --install-extension vscodevim.vim
code --install-extension GitHub.copilot

# fisher
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher

fisher install ymmtmdk/autocdz ymmtmdk/peco_select_history_with_c jorgebucaran/nvm.fishe
nvm install latest
fish -c 'set --universal nvm_default_version latest'

