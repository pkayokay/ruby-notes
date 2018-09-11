# Environment Set Up

1. Homebrew
2. RVM
3. Postgresql - for `production`
4. `bundle install --without production`


## Postgresql
* http://postgresapp.com/
* https://eggerapps.at/postico/


## Environments
* https://devcenter.heroku.com/articles/multiple-environments

		heroku create [name-of-dev-app] --remote staging
		heroku create [name-of-prod-app] --remote production
		heroku run rails db:migrate —app [name-of-dev-app]
		heroku run rails db:migrate —app [name-of-prod-app]

		# Heroku push
		git push [environment] master:[branch]
		git push staging master:develop
		git push production master:master
		

### Github branches: 
* `develop`
* `master`

### Heroku
* `staging`
* `production`

## Bash Profile

	~/.bash_profile (terminal config and git branch/status)

	PS1='\[\033[36m\]\u\[\033[m\] \w\[\033[0;32m\]$( git branch 2> /dev/null | cut -f2 -d\* -s | sed "s/^ / [/" | sed "s/$/]/" )\[\033[0m\] \$ '
	# Terminal Color
	export CLICOLOR=1
	export LSCOLORS=Exfxcxdxbxegedabagacad

	# VS Code
	code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}
	# brew install wget will install subl

	# RVM purposes
	source ~/.profile

	# Jekyll
	# alias b="jekyll build"
	# alias s="jekyll serve --watch"

	# Ngrok
	alias sharehost=".././ngrok http"

	# Git
	alias gc="git add . && git commit -am"
	alias gpm="git push origin master"
	alias greset="git reset --hard"
	alias gclean="git clean -f -d"
	alias bash="subl ~/.bash_profile"
	alias rs="rails server"
	alias rt="rails test"
	alias r="rails"

	[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
	


