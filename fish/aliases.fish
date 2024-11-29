alias e='nvim'
alias r='ruby'
alias py='python3'

if which hub > /dev/null
  alias g='hub'
else
  alias g='git'
end

alias ll='ls -lAh'
alias df='df -m'

if test (uname) = Darwin
  #
end
if test (uname) = Linux
  alias open='wsl-open'
end

# alias bi="bundle install"
# alias bu='bundle update'
# alias be='bundle exec'

# alias d='docker'
# alias docker-stop-all-ps='docker stop (docker ps -a -q)'
# alias docker-rm-all-ps='docker rm (docker ps -a -q)'
