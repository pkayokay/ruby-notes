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


~/.bash_profile (terminal config and git branch/status)
	
	
	export PS1="\[\033[36m\][PK]\[\033[m\] \w\[\033[m\] \[\033[32m\]\$git_branch\[\033[m\]\$git_dirty\[\033[m\]$ "; clear
	export CLICOLOR=1 export LSCOLORS=ExFxBxDxCxegedabagacad alias ls="ls -GFh"
	

	export GITAWAREPROMPT=~/.bash/git-aware-prompt
	source "${GITAWAREPROMPT}/main.sh"

