# Environment Set Up
## Ruby and RoR
### Regular Terminal
1. Homebrew
2. Rbenv

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

