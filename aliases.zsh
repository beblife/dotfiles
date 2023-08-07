# Shortcuts
alias copyssh="pbcopy < $HOME/.ssh/id_rsa.pub"
alias c="clear"
alias showFiles="defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app"
alias hideFiles="defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app"

# Deployer
alias dep="vendor/bin/dep"

# PHPUnit
alias phpunit="vendor/bin/phpunit"

# Laravel
alias art="php artisan"
alias serve="php artisan serve"

# Git
alias nah="git clean -df && git reset --hard"
clb() {
    git fetch --all --prune && git branch -r | awk '{print $1}' | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk '{print $1}' | xargs git branch -D
}

# Directories
alias dotfiles="cd $DOTFILES"
