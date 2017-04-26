# Rails using postgres

https://gorails.com/setup/osx/10.12-sierra

	•	RVM
	•	Postgres through Homebrew
	•	Run “gem install pg” to interact with Postgres from Ruby code.

Setting up Postgres
	•	rails new myapp —database=postgresql
	•	Edit database.yml

	•	“rails db:setup”
	•	“rails db:migrate”
	•	“rails s”


Older...
https://www.digitalocean.com/community/tutorials/how-to-setup-ruby-on-rails-with-postgres

	
	development:
	adapter: postgresql
	encoding: unicode
	database: myapp_development
	pool: 5
	username: postgres
	password: password
	
	test:
	adapter: postgresql
	encoding: unicode
	database: myapp_test
	pool: 5
	username: postgres
	password: password
	
	production:
	adapter: postgresql
	encoding: unicode
	database: myapp_production
	pool: 5
	username: postgres
	password: password
