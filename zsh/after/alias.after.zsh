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
alias gpst="git push --tags"

# Some powder aliases
alias pd="powder"
alias pdr="powder restart"
alias pdu="powder up"
alias pdd="powder down"
alias pdo="powder open"
alias pdl="powder link"
