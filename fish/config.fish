if test -x /opt/homebrew/bin/brew
    eval (/opt/homebrew/bin/brew shellenv)
else if test -x /usr/local/bin/brew
    eval (/usr/local/bin/brew shellenv)
end

set --local os (command uname -s | string lower)
set --local arch (command uname -m)

set -gx JAVA_HOME "/Applications/Android Studio.app/Contents/jbr/Contents/Home"
set -gx ANDROID_HOME $HOME/Library/Android/sdk

# Setup PATH
set -gx PATH "$HOME/bin" "$HOME/.config/bin" "$HOME/.config/bin/$os" "$HOME/.config/bin/$os/$arch" "$HOME/.local/bin" $PATH

if set -q HOMEBREW_PREFIX
    set -gx PATH "$HOMEBREW_PREFIX/share/android-commandlinetools/cmdline-tools/latest/bin" $PATH
    set -gx CFLAGS "$CFLAGS -I$HOMEBREW_PREFIX/include"
    set -gx CXXFLAGS "$CXXFLAGS -I$HOMEBREW_PREFIX/include"
else if test "$os" = "darwin"
    # Fallback for Darwin if brew is not found in standard locations
    set -gx PATH "/usr/local/share/android-commandlinetools/cmdline-tools/latest/bin" $PATH
    set -gx CFLAGS "$CFLAGS -I/usr/local/include"
    set -gx CXXFLAGS "$CXXFLAGS -I/usr/local/include"
end

set -gx PATH $ANDROID_HOME/platform-tools $ANDROID_HOME/emulator $JAVA_HOME/bin $PATH

set -gx VCPKG_ROOT "$HOME/vcpkg"

# set -gx JAVA_HOME (/usr/libexec/java_home)

# ====== Antigravity Launcher Config ======
set -gx PATH $HOME/.local/bin $PATH
# ====== End of Antigravity Launcher Config ======

# source ~/.safe-chain/scripts/init-fish.fish # Safe-chain Fish initialization script

if status is-interactive
  # if not set -q VSCODE_INJECTION
    source ~/.config/fish/i_config.fish
  # end
end


