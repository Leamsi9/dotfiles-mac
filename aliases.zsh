# Shortcuts
alias cssh="pbcopy < $HOME/.ssh/id_ed25519.pub"
alias reloadshell="source $HOME/.zshrc"
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias ll="/opt/homebrew/opt/coreutils/libexec/gnubin/ls -AhlFo --color --group-directories-first"
alias pst='open -a /Applications/PhpStorm.app "`pwd`"'
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"


# Directories
alias dotfiles="cd $DOTFILES"
alias prog="cd $HOME/Documents/Programming/Repos"
alias repos="cd $HOME/Documents/Programming/Repos"


# Laravel
alias a="php artisan"
alias fresh="php artisan migrate:fresh --seed"
alias tinker="php artisan tinker"
alias seed="php artisan db:seed"
alias serve="php artisan serve"

# PHP
alias cfresh="rm -rf vendor/ composer.lock && composer i"
alias composer="php -d memory_limit=-1 /opt/homebrew/bin/composer"

# JS
alias nfresh="rm -rf node_modules/ package-lock.json && npm install"
alias watch="npm run watch"

eval $(thefuck --alias)

alias sudo='sudo ' # make aliases available in sudo
alias fals='alias | grep'
alias fff='fuck' #corrects command with rule from previous output (e.g doing apt-get on missing command or adding sudo)

#Navigation
alias tool='cd ~/Documents/Tools'
alias ent='cd ~/Documents/Bookinglive/mysite'
alias conn='cd ~/Documents/Bookinglive/connect'
alias scrp='cd ~/Documents/Bookinglive/connect/scripts'
alias wbh='cd ~/Documents/Bookinglive/webhooks'
alias book='cd ~/Documents/Bookinglive'
alias docs='cd ~/Documents/'
alias vela='cd ~/Documents/velascodev'
alias theme="idea ~/.oh-my-zsh/custom/themes/ivtheme.zsh-theme"
alias plug='cd ~/.oh-my-zsh/custom/plugins'


## config ##


alias path="idea sudo /etc/paths"
alias apti="sudo apt install"
alias aptu="sudo apt-get --purge remove"
alias profile="idea ~/.zsh_profile"

## zsh ##
alias zc="idea ~/.zshrc"
alias sz="source ~/.zshrc"
## oh-my-zsh ##
alias omy="idea ~/.oh-my-zsh/oh-my-zsh.sh"
function omyplug() {
    PLUGIN_PATH="$HOME/.oh-my-zsh/plugins/"
    for plugin in $plugins; do
        echo "\n\nPlugin: $plugin"; grep -r "^function \w*" $PLUGIN_PATH$plugin | awk '{print $2}' | sed 's/()//'| tr '\n' ', '; grep -r "^alias" $PLUGIN_PATH$plugin | awk '{print $2}' | sed 's/=.*//' |  tr '\n' ', '
    done
}

## use a long listing format ##

alias ls='ls -aFh'
alias lS='ls -1FSsh'

## clear the screen of your clutter ##

alias c="clear"

alias rmf='rm -rf'

## list directory and file sizes
alias size="du -hs ./* | sort -h" #current directory
alias size2="du -hcd 2 | sort -h" #current directory and subdirectory

# make dir and move into it
mkdir () {
    command mkdir -p "$@" && cd "$@"
}
# cd into a dir then pwd and ls. No argument provided, use $HOME
cdl() { if [ $# -eq 0 ]; then cd "$HOME" && pwd && ls; else cd "$1" && pwd && ls; fi; }

alias cp='cp -v'
alias mv='mv -v'
alias fdd='find . -type d -name'
alias fdf='find . -type f -name'

#find string
alias grep='grep --color'
#find string within files
alias grepf='grep -R -n -H -C 5 --exclude-dir={.git,.svn,CVS}'
#command history
alias h='history'
#search for word in command history
alias fdh='fc -El 0 | grep'

#displays currently running processes
alias proc='ps -f'


# GIT (move to git config)

alias gs="git status"

alias ga="git add"

alias gac="git commit -am"

alias gc="git commit -m"

alias gch="git checkout"

alias gchm="git checkout master"

alias gp="git push"

alias gpl="git pull"

alias gunstage="git reset HEAD"

alias gst="git stash"

alias gsp="git stash pop"

alias glog="log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"

# PHP UNIT

alias test="vendor/bin/phpunit"

# COMPOSER

alias cc='composer clear-cache'

alias cu='composer update'

alias ci='composer install'

alias cdmp='composer dump-autoload -o'

alias cr='composer require'

#DOCKER

alias dup="docker-compose up"
alias ddwn="docker-compose down"
alias dps="docker ps"
alias dstp='docker stop $(docker ps -aq)' #stop all running containers
alias dx='docker-compose exec'  #run a bash command inside my container
alias dprn='docker system prune'

# NPM
alias npi='npm install && npm run build'
alias npb='npm run build'
alias npt='npm run test'


#CONNECT SCRIPTS
alias cna='docker exec connect_app php artisan'
alias cns='( dstp && cd  ~/Documents/Bookinglive/connect/scripts && ./build.sh && ./composer.sh dump-autoloadfals && cna route:cache && ./seed.sh && npi )'
alias npc='( cd  ~/Documents/Bookinglive/connect/ && npm run cypress )'
alias cnt='( cd  ~/Documents/Bookinglive/connect/scripts && ./tests.sh && npt && ./seed.sh && npc )'



#HEROKU

## export my .env variables to heroku config vars

alias henv="cat .env | xargs heroku config:set --app"


# LARAVEL

alias art='php artisan'

# Sail
alias sail='bash vendor/bin/sail'
alias s='sail'
alias sart='sail artisan'
alias sarm='sart migrate'
alias sup='sail up -d' #detached mode
alias sdwn='sail down -v'
alias srst='sail restart'
alias scnf='sail config'
alias scr='sail composer require'
alias sci='sail composer install'
alias scu='sail composer update'
alias scdmp='sail composer dump-autoload -o'
alias snpm='sail npm'
alias snpmr='sail npm run'
alias sphp='sail php'
alias stink='sail tinker'
alias sbld='sail build --no-cache'

# LANDO

alias l='lando'
alias lds='l start'
alias ldst='l stop'
alias lrs='l restart'
alias lrb='l rebuild --yes'
alias linit='l init'
alias linfo='l info'
alias llist='l list'
alias ldb='l db-import'
alias ldst='l destroy -y'

alias lart='l artisan'
alias lartm='lart migrate'

alias lcr='l composer require'
alias lcc='l composer clear-cache'
alias lcu='l composer update'
alias lci='l composer install'
alias lcdmp='l composer dump-autoload -o'

##PHPUnit
# test docker container
alias ltest='l phpunit'

# alias ltst='docker exec -it webhooksclient_appserver_1 ./app/vendor/bin/phpunit'

##

## Weather
alias weather='ansiweather -l'

