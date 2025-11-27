set -gx HOMEBREW_PREFIX "/usr/local";
set -gx HOMEBREW_CELLAR "/usr/local/Cellar";
set -gx HOMEBREW_REPOSITORY "/usr/local/Homebrew";

set --local os (command uname -s | string lower)

! set -q PATH; and set PATH ''; 
set -gx PATH "/usr/local/bin" "/usr/local/sbin" "/usr/local/opt/ruby/bin" "$HOME/bin" "$HOME/.config/bin" "$HOME/.config/bin/$os" "$HOME/.local/bin" $PATH;
! set -q MANPATH; and set MANPATH '';
set -gx MANPATH "/usr/local/share/man" $MANPATH;
! set -q INFOPATH; and set INFOPATH '';
set -gx INFOPATH "/usr/local/share/info" $INFOPATH;

set -gx CFLAGS "$CFLAGS -I/usr/local/include"
set -gx CXXFLAGS "$CXXFLAGS -I/usr/local/include"

set -gx VCPKG_ROOT "$HOME/vcpkg"

# set -gx JAVA_HOME (/usr/libexec/java_home)

if status is-interactive
  # if not set -q VSCODE_INJECTION
    source ~/.config/fish/i_config.fish
  # end
end

