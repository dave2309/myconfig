#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# export LANG="fr_FR.UTF-8"
# export LANGUAGE="fr_FR.UTF-8"
# export LC_CTYPE="fr_FR.UTF-8"
# export LC_COLLATE="C"

alias ls='ls --color=auto'

[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases

PS1='[\u@\h \W]\$ '

export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

export CHOST="x86_64-pc-linux-gnu"
#export CFLAGS="-march=corei7-avx -mtune=corei7-avx -O3 -pipe -mmmx -msee4.2 -mfpmath=sse"
export CFLAGS="-march=corei7-avx -mtune=corei7-avx -O2 -pipe"
export CXXFLAGS="$CFLAGS"
export BROWSER="/usr/bin/firefox"
#export BROWSER="/usr/bin/chromium"
export TERM="rxvt-256color"
export GREP_COLOR="1;33"
export PYTHONDOCS=/usr/share/doc/python/html/
export EDITOR=vim
export VISUAL=vim
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

# Command Prompt Stuff
PROMPT_COMMAND=''
PS1="\n\[\e[35m\](\[\e[34m\]\u@\h\[\e[35m\])-(\[\e[34m\]\j\[\e[35m\])-(\[\e[34m\]\@ \d\[\e[35m\])\n\[\e[35m\](\[\[\e[32m\]\w\[\e[35m\])-(\[\e[32m\]\$(/bin/ls -1 | /usr/bin/wc -l | /bin/sed 's: ::g') files, \$(/bin/ls -lah | /usr/bin/grep -m 1 total | /bin/sed 's/total //')b\[\e[35m\])\n\[\e[37m\]$ "
#PS1=" » "
#PROMPT_COMMAND='printf "\n\[\e[35m\](\[\e[34m\]\u@\h\[\e[35m\])-(\[\e[34m\]\j\[\e[35m\])-(\[\e[34m\]\@ \d\[\e[35m\])\n\[\e[35m\](\[\[\e[32m\]\w\[\e[35m\])-(\[\e[32m\]\$(/bin/ls -1 | /usr/bin/wc -l | /bin/sed "s: ::g") files, \$(/bin/ls -lah | /usr/bin/grep -m 1 total | /bin/sed "s/total //")b\[\e[35m\])\n\[\e[37m\]"'

#trap 'echo -ne "\e[0m"' DEBUG

export PATH=~/bin:$PATH

man() {
	env \
		LESS_TERMCAP_mb=$(printf "\e[1;31m") \
		LESS_TERMCAP_md=$(printf "\e[1;31m") \
		LESS_TERMCAP_me=$(printf "\e[0m") \
		LESS_TERMCAP_se=$(printf "\e[0m") \
		LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
		LESS_TERMCAP_ue=$(printf "\e[0m") \
		LESS_TERMCAP_us=$(printf "\e[1;32m") \
			man "$@"
}

export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'

