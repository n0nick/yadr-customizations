#zstyle ':omz:module:prompt' theme 'minimal'
#autoload -Uz promptinit
#promptinit
#prompt minimal

# define your own aliases or override those provided by YADR.
# alias ls='ls -lAhFG'
alias hosts='sudo vim /private/etc/hosts'

# Automatically cd to frequently used directories http://robots.thoughtbot.com/post/10849086566/cding-to-frequently-used-directories-in-zsh
setopt auto_cd
cdpath=($HOME/dev)

# Fancy globbing http://linuxshellaccount.blogspot.com/2008/07/fancy-globbing-with-zsh-on-linux-and.html
setopt extendedglob

# Set up fasd tab completion
eval "$(fasd --init auto)"

# Some fasd aliases
alias j="fasd_cd -d" # 'j'ump makes more sense than 'z'
alias o='a -e open'

# Vi/vim stickiness
alias vi=vim

# t Task manager
alias t="~/.t --task-dir ~/tasks --list tasks"
alias tg='~/.t --task-dir $(git rev-parse --show-toplevel 2>/dev/null || echo ".") --list TODO'

# Tell git to use new vim
export GIT_EDITOR=$(brew ls macvim | grep Contents/MacOS/Vim)

# Help C++ find the new X11 libs
export CPPFLAGS=-I/opt/X11/include
