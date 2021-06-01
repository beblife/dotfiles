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

# Directories
alias dotfiles="cd $DOTFILES"
