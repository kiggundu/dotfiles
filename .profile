# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi


## Abraham additions

#Aliases
alias bex="bundle exec"
alias mapsvpn="sshuttle --dns -r vpn 10.20.0.0/13"
alias pex="python -m"
alias audiofy_file="festival --tts"

# ------------------------------------
# Docker alias and function
# ------------------------------------
alias sd="sudo docker"
# Get latest container ID
alias dl="sudo docker ps -l -q"
# Get container process
alias dps="sudo docker ps"
# Get process included stop container
alias dpa="sudo docker ps -a"
# Get images
alias di="sudo docker images"
# Get container IP
alias dip="sudo docker inspect --format '{{ .NetworkSettings.IPAddress }}'"
# Run deamonized container, e.g., $dkd base /bin/echo hello
alias drd="sudo docker run -d -P"
# Run interactive container, e.g., $dki base /bin/bash
alias dki="sudo docker run -i -t -P"
# Execute interactive container, e.g., $dex base /bin/bash
alias dex="sudo docker exec -i -t"
# Stop all containers
dstop() { sudo docker stop $(sudo docker ps -a -q); }
# Remove all containers
drm() { sudo docker rm $(sudo docker ps -a -q); }
# Stop and Remove all containers
alias drmf='sudo docker stop $(sudo docker ps -a -q) && sudo docker rm $(sudo docker ps -a -q)'
# Remove all images
dri() { sudo docker rmi $(sudo docker images -q); }
# Remove all <none> images
drin() { sudo docker rmi -f $(sudo docker images --filter "dangling=true" -q); }
# Dockerfile build, e.g., $dbu tcnksm/test 
dbu() { sudo docker build -t=$1 .; }
# Show all alias related docker
dalias() { alias | grep 'docker' | sed "s/^\([^=]*\)=\(.*\)/\1 => \2/"| sed "s/['|\']//g" | sort; }

#Some keyboard shortcuts 
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/command "'/home/god/tools/speak_from_clipboard.sh'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/binding "'<Primary><Shift><Alt>s'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/name "'Speak text in the clipboard'"


#Abe added intel c compileer and dev tools to ath
export PATH="$PATH:/home/god/intel/sw_dev_tools/bin"

export PATH="$PATH:/Android/platform-tools:/Android/tools:/Android/bin"
export ANDROID_HOME="/Android"

#setup Kaldi
export KALDI_ROOT="$HOME/workspace/automated-voice-recognition/kaldi/kaldi"
export FSTROOT="$KALDI_ROOT/tools/openfst/"

#ensure opam, pyenv paths are available
eval `opam config env`

export LC_ALL=en_US.UTF-8

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

#Ruby stuff
eval "$(rbenv init -)"

#JEnv JVM management
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#setup pyenv
export PATH="/home/god/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

#set up perl
source ~/perl5/perlbrew/etc/bashrc

#custom zsh bindings
bindkey -v

#qmake stuff
export PATH="/usr/local/opt/qt/bin:$PATH"

#Go configuration
eval "$(goenv init -)"
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

#Required after openssl install otherwise mysql build will not be able to find the libraries
#failing with mysql2.bundle library not found
export LIBRARY_PATH=$LIBRARY_PATH:/usr/local/opt/openssl/lib/

#mvn stuff
export M2_HOME=/$HOME/.mvn/apache-maven-3.6.3
export PATH=$PATH:$M2_HOME/bin

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/god/.sdkman"
[[ -s "/home/god/.sdkman/bin/sdkman-init.sh" ]] && source "/home/god/.sdkman/bin/sdkman-init.sh"
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
