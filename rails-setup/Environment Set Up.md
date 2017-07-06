# Environment Set Up
## Ruby and RoR
### Regular Terminal
1. Homebrew
2. RVM(on regular terminal)
http://stjhimy.com/posts/10-five-quick-steps-to-set-up-rvm-with-rails-2-and-rails3
https://rvm.io/gemsets/listing 
3. Use gem sets. Each gem set allows the create of different sets, ex. You can use ruby v 2.0.0 with rails 5.0.0 on a gem set called set1. You can also create other pairs and switch between gem set.

### Refer to this with permission issues
https://stackoverflow.com/questions/34227854/error-while-executing-gem-errnoeacces-permission-denied-rb-sysopen

Live-server nodes npm

#POSTGRES
* Install BIGSQL https://www.bigsql.org/postgresql/installers.jsp
* Install by "brew install postgresql"
* "gem install pg"

### [Web Dev]
1. Ruby and RoR version set (every new project will start with the new version)
* Home-brew
* [rbenv](https://github.com/rbenv/rbenv)
* [rbenv update](https://github.com/rkh/rbenv-update)
### Vagrant 
* https://github.com/FirehoseProject/firehose-vagrant/blob/master/README.md


## Sketch 
* sketch dynamic button plug in
## Sublime text 
* Package control: Emmet and space gray theme(below)
* Sass
* Sass Build
* jQuery
* JavaScript Complete
* CleanCSS
* HTMLBeautify
* Browser Refresh
* Bracket guard
* Bracket highlighter


  "tab_size": 2,  
  "translate_tabs_to_spaces": true  

Boxy Theme

Theme - spacegray

	"color_scheme": "Packages/Theme - Spacegray/base16-eighties.dark.tmTheme",
	"font_size": 16,
	"ignored_packages":
	[
		"Vintage"
	],
	"tab_size": 2,
	"theme": "Spacegray Eighties.sublime-theme",
	"translate_tabs_to_spaces": true



~/.bash_profile 
	
	eval $(/usr/libexec/path_helper -s)
	export PS1="\[\033[36m\][PK]\[\033[m\] \w\[\033[m\] \[\033[32m\]\$git_branch\[\033[m\]\$git_dirty\[\033[m\] $ "; clear
	export CLICOLOR=1 export LSCOLORS=ExFxBxDxCxegedabagacad alias ls="ls -GFh"
	export PATH="$HOME/.rbenv/bin:$PATH"
	eval "$(rbenv init -)"

	export GITAWAREPROMPT=~/.bash/git-aware-prompt
	source "${GITAWAREPROMPT}/main.sh"
	
### Programs

* Simplenote
* Chrome
* Sublime
* PG Commander
* Sketch
* Microsoft Office


