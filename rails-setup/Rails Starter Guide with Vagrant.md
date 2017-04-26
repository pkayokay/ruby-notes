# Rails Starter Guide with Vagrant
#### First install https://github.com/FirehoseProject/firehose-vagrant
1. Set up app
2. Set up pipeline
3. Prep for Heroku
4. Bootstrap Gem


## Set up app and test server
* `rails new [appname] --database=postgresql`
* Edit database.yml for postgresql use (check file on directory)
* `rake db:create:all`
* `rails server`

## Set up pipeline
* Set up Github repository and use SSH
* `git init .`
* `git add --all`
* `git commit -am "Initial commit"`
* `git remote add origin git@github.com:pkayokay/[appname].git`
* `git push -u origin master`

## Prep for Heroku

* `gem 'rails_12factor', group: :production`
* `config.assets.compile = true` (app/config/environments/production.rb)
* `heroku create appname`
* `git push heroku master` (after pushing to git master)

## Styling

* [Bootstrap](https://github.com/twbs/bootstrap-sass#a-ruby-on-rails)
* Add `gem 'sprockets'`

---


## Commands to know
* `rails generate controller [controllername]`
*  `rails generate model [modelname]` (edit migration file for data columns)
* `rake db:migrate`
* `rake db:rollback`
* `rails console`
* For heroku, simple add "`heroku run ...`"
* `bundle install`
* `bundle update`



## Things to remember
* Routes.rb
* "`get 'pagename' , to: 'controllername#pagename'`" to add an controllername/pagename _static_ page 
* Associations
* Validations
* Migrations (Pushing to production before migrating)
* Data on development vs. production
* Restart if things don't work

