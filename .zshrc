#####################################################
##		LookTJ's zshrc			    ##
##		based on:			    ##
##		ArchWiki's example		    ##
##		RiceMonster(part of it)		    ##
######################################################

# zsh options
setopt CORRECT			# command CORRECTION
setopt INC_APPEND_HISTORY SHARE_HISTORY
setopt APPEND_HISTORY

# rehash all commands
compctl -C -K cmd-comp -c
function cmd-comp {
	rehash
}

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/taylor/.zshrc'

autoload -U compinit promptinit
compinit
promptinit

# This will set the default prompt to the walters theme
# prompt walters

export PS1="[$(print '%{\e[1;33m%}%T %n%{\e[0m%}')] > "
export RPS1="[$(print '%{\e[1;36m%}%B%d%b%{\e[0m%}')]"

# Vars used on zsh
export EDITOR="vim"
export VISUAL="vim"
export BROWSER="google-chrome"

# Pretty colors
alias grep='grep --color=always'
alias ls='ls --color=auto'
eval `dircolors -b`

# key bindings
bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line
bindkey "\e[5~" beginning-of-history
bindkey "\e[6~" end-of-history
bindkey "\e[3~" delete-char
bindkey "\e[2~" quoted-insert
bindkey "\e[5C" forward-word
bindkey "\eOc" emacs-forward-word
bindkey "\e[5D" backward-word
bindkey "\eOd" emacs-backward-word
bindkey "\e\e[C" forward-word
bindkey "\e\e[D" backward-word
bindkey "^H" backward-delete-word
# for rxvt
bindkey "\e[8~" end-of-line
bindkey "\e[7~" beginning-of-line
# for non RH/Debian xterm, can't hurt for RH/DEbian xterm
bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line
# for freebsd console
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line
# completion in the middle of a line
bindkey '^i' expand-or-complete-prefix

# Aliases
alias ls='ls --color=auto -F'
alias killnow='killall -15'
# End of lines added by compinstall

if [[ `tty` = "/dev/tty1" ]]; then startx; logout; fi
