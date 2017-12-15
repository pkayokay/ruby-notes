# Environment Set Up

1. Homebrew
2. Rbenv
3. Postgresql - `gem install pg`
4. `rails new app-name --database=postgresql` 


## Postgresql
* http://postgresapp.com/
* https://eggerapps.at/postico/

### Github branches: 
* `develop`
* `master`

### Heroku
* `dev`
* `prod`

## Heroku Environments
* https://devcenter.heroku.com/articles/multiple-environments

	heroku create app-dev --remote dev
	heroku create app-prod --remote prod
	heroic run rails db:migrate —app app-prod

	git push [environment] [branch you want to push]
	git push dev develop:master
	git push prod master:master
	

## Bash Profile

~/.bash_profile (terminal config and git branch/status)
	
	PS1='\[\033[36m\]\u\[\033[m\] \w\[\033[0;32m\]$( git branch 2> /dev/null | cut -f2 -d\* -s | sed "s/^ / [/" | sed "s/$/]/" )\[\033[0m\] \$ '

	# Tell grep to highlight matches
	export GREP_OPTIONS='--color=auto'

	# Tell ls to be colourful
	export CLICOLOR=1
	export LSCOLORS=Exfxcxdxbxegedabagacad
	export PATH="$HOME/.rbenv/bin:$PATH"
	eval "$(rbenv init -)"
	


