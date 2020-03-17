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


export PATH="$PATH:/Android/platform-tools:/Android/tools:/Android/bin"
export ANDROID_HOME="/Android"

#ensure opam, pyenv paths are available
eval `opam config env`

#PyEnv stuff
#export PYENV_ROOT="$HOME/.pyenv"
#export PATH="$PYENV_ROOT/bin:$PATH" 
export LC_ALL=en_US.UTF-8

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

#Ruby stuff
eval "$(rbenv init -)"

#JEnv JVM management
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/god/.sdkman"
[[ -s "/home/god/.sdkman/bin/sdkman-init.sh" ]] && source "/home/god/.sdkman/bin/sdkman-init.sh"
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
