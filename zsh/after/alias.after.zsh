# Some fasd aliases
alias j="fasd_cd -d" # 'j'ump makes more sense than 'z'
alias o='a -e open'

# Vi/vim stickiness
alias vi=vim

# t Task manager
alias t="~/.t --task-dir ~/tasks --list tasks"
alias tg='~/.t --task-dir $(git rev-parse --show-toplevel 2>/dev/null || echo ".") --list TODO'

# Some (more) git aliases
alias gg="git grep"
alias grm="git rm"
alias gmv="git mv"
alias gcl="git clone"
alias gcb="git checkout -b"
alias gbr="git branch -r"
alias gbd="git branch -D"
alias gpst="git push --tags"
alias gcom="git checkout master"
alias gap="git add -p"
alias gcia="git commit --amend"

# Some powder aliases
alias pd="powder"
alias pdr="powder restart"
alias pdu="powder up"
alias pdd="powder down"
alias pdo="powder open"
alias pdl="powder link"

# Gist is jist
alias gist="jist"

# Edit this file
alias aliases="vim ~/dev/personal/yadr-customizations/zsh/after/alias.after.zsh"
