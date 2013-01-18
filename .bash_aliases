#apt-get
alias agi='sudo apt-get install'
alias agr='sudo apt-get remove'
alias agp='sudo apt-get purge'

# Bash commands
alias s='sudo'
# List only dirs
alias lsd="ls -alF | grep /$"
alias sr='sudo rm -r'

# Rails commands

# Gems
alias gu='gem uninstall'
alias gi='gem install'
alias c='clear'

# Uninstall all gems in a set
alias gemrm='gem list | cut -d" " -f1 | xargs gem uninstall -aIx'

# rails 3.0
alias rn='rails new'
alias rr="rake routes"
alias rs='rails server'
alias rg='rails generate'
alias rgs='rails generate scaffold'
alias rc='rails console'
alias rp='rails plugin'
alias rpi='rails plugin install'
alias rgm='rails g model'
alias rgc="rails g controller"
alias rgmi='rails g migration'

# rails rake common db tasks
alias dbc='rake db:create'
alias dbd='rake db:drop'
alias dbm='rake db:migrate'
alias dbr='rake db:rollback STEP=1000'
alias dbs='rake db:seed'
alias dbt='rake db:test:prepare'

# bundler primary commands
alias bi='bundle install'
alias bu='bundle update'
alias bp='bundle package'
alias be='bundle exec'
alias bconf='bundle config'

#git primary commands
alias ga='git add'
alias gaa='git add .'
alias gp='git push'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gdc='git diff --cached'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gre='git remote'
alias graa='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'
alias gta='git tag'
alias gpt='git push tags'
alias gr='git remote'
alias gcb='git checkout -b'
alias gpo='git push origin -u'
alias gme='git merge'
alias gt='git branch --track'

# Removes all files with delete status in git
function gitrm () {
for i in `git statusus | grep deleted | awk '{print $3}'`; do git rm $i; done
}

# heroku
#=== General Commands

alias hh='heroku help'                         # show this usage
alias hv='heroku version'                      # show the gem version
alias hli='heroku list'                         # list your apps

alias hi='heroku info'                         # show app info, like web url and git repo
alias ho='heroku open'                         # open the app in a web browser


# add a collaborator
function hsa () {
echo 'add collaborator email:'
read email
heroku sharing:add $email
}

# add a collaborator
function hsr () {
echo 'remove collaborator email:'
read email
heroku sharing:remove $email
}

# transfers the app ownership
function hst () {
echo 'transfer collaborator email:'
read email
sharing:transfer $email
}

alias hc='heroku console'    # start an  interactive console to the remote app

alias hrs='heroku restart' # restart app servers
alias hl='heroku logs'     # fetch recent log output for debugging

alias hmo='heroku maintenance:on'               # put the app into maintenance mode
alias hmf='heroku maintenance:off'              # take the app out of maintenance mode

alias hdpl='heroku db:pull'      # pull the app's database into a local database
alias hdps='heroku db:push'      # push a local database into the app's remote database

alias hdms='heroku rake db:migrate --remote staging'
alias hdrs='heroku rake db:rollback STEP=1000 --remote staging'
alias hdmp='heroku rake db:migrate --remote production'
alias hdrp='heroku rake db:rollback STEP=1000 --remote production'

alias had='heroku addons'                       # list installed addons
alias hai='heroku addons:info'                  # list all available addons
alias haa='heroku addons:add'  # install addon (with zero or more config vars)
alias har='heroku addons:remove'           # uninstall an addons
alias hac='heroku addons:clear'                 # uninstall all addons

alias hd='heroku destroy'                      # destroy the app permanently

#=== Plugins

alias hep='heroku plugins'                      # list installed plugins
alias hepi='heroku plugins:install'        # install the plugin from the specified git url
alias hepu='plugins:uninstall' # remove the specified plugin

# RVM
alias ru='rvm use'
alias rv='rvm ruby -v'
alias rrl='rvm ruby list'
alias rgu='rvm gemset use'
alias rgc='rvm gemset create'
alias rgd='rvm gemset delete'
alias rgl='rvm gemset list'
alias rvg='rvm gemset'

# create and use a gemset
function gcu(){
read gemset_name
rvm gemset create $gemset_name
rvm gemset use $gemset_name
}

#Vagrant
alias vb='vagrant box'
alias vd='vagrant destroy'
alias vg='vagrant gem'
alias vh='vagrant halt'
alias vi='vagrant init'
alias vp='vagrant package'
alias vpo='vagrant provision'
alias vr='vagrant reload'
alias vre='vagrant resume'
alias vssh='vagrant ssh'
alias vsc='vagrant ssh config'
alias vs='vagrant status'
alias vsu='vagrant suspend'
alias vu='vagrant up'

# Guard for virtual machine
alias bg='bundle exec guard -p -l 10'
