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

# off spotlight
# sudo mdutil -a -i off

# drag
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool true

# KeyRepeat
defaults write -g KeyRepeat -int 2
defaults write -g InitialKeyRepeat -int 15

# cap lock for jp/en
defaults write -g TISRomanSwitchState -int 1

# disable smart quote
defaults write -g NSAutomaticDashSubstitutionEnabled -int 0
defaults write -g NSAutomaticQuoteSubstitutionEnabled -int 0

# set IME prop
defaults write com.apple.inputmethod.Kotoeri JIMPrefCharacterForSlashKey -int 0
defaults write com.apple.inputmethod.Kotoeri JIMPrefCharacterForYenKey -int 1
defaults write com.apple.inputmethod.Kotoeri JIMPrefFullWidthNumeralCharactersKey -int 0
defaults write com.apple.inputmethod.Kotoeri JIMPrefPunctuationTypeKey -int 0
defaults write com.apple.DuetExpertCenter.AppPredictionExpert "ATXUpdatePredictionsLoggerCountsDictionary-ActionPredictions" \
-dict "TRIGGER_TYPE_APPLAUNCH" -int 5 \
      "TRIGGER_TYPE_CTS" -int 5 \
      "TRIGGER_TYPE_TOTAL" -int 10

mise use -g rust
mise use -g python
mise use -g node

# for ruby
brew install openssl@3 readline libyaml gmp autoconf
mise use -g ruby
