# Shell History
export HISTCONTROL=erasedups
export HISTSIZE=10000
shopt -s histappend

# Standard Editor aendern
export EDITOR=vim

# Aliase anlegen:
alias w='wget'
alias dir='ls -Gal'
alias la='ls -Gal'
alias netstat_osx='sudo lsof -i -P'
alias top_cpu='top -o cpu'
alias rmdsstore='find . -name *.DS_Store -type f -exec rm {} \;'
password(){ cat /dev/urandom | env LC_CTYPE=C tr -dc a-zA-Z0-9_- | head -c $1; echo; }

# Show Manpages as PDF in Preview:
man2pdf() { man $1 -t | open -f -a Preview; };

# DELUXE-USR-LOCAL-BIN-INSERT
# (do not remove this comment)
echo $PATH | grep -q -s "/usr/local/bin"
if [ $? -eq 1 ] ; then
    PATH=$PATH:/usr/local/bin
    export PATH
fi

# DELUXE-USR-LOCAL-SBIN-INSERT
# (do not remove this comment)
echo $PATH | grep -q -s "/usr/local/sbin"
if [ $? -eq 1 ] ; then
    PATH=$PATH:/usr/local/sbin
    export PATH
fi

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_31.jdk/Contents/Home
export PATH=$PATH:/Library/Java/JavaVirtualMachines/jdk1.8.0_31.jdk/Contents/Home/bin

# Brew Command tab-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
	. $(brew --prefix)/etc/bash_completion
fi
export HOMEBREW_GITHUB_API_TOKEN=[FILL_IN_HOMEBREW_PERSONAAL_API_KEY]
HOMEBREW_NO_ANALYTICS=1

# Set LC_CTYPE
export LC_ALL=de_DE.UTF-8
export LANG=de_DE.UTF-8
export LANGUAGE=de_DE.UTF-8
