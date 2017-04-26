# Domain Set Up

## Adding Custom Domain to Project Page (Static Sites)

* Add to DNS Settings on domain manager
* CNAME Record:   Host = www     Value  =  username.github.io
* URL Redirect Record Host = @  Value = http://websiteurl.com 
* Add redirect domain to http://
* Create repository with READ ME and CNAME (add url: www.[url].com)
* Clone project down first so that both master and gh-branch can have CNAME
* For Project: push, commit to master and gh-pages


## Heroku Domain Set Up
* [Link](https://www.namecheap.com/support/knowledgebase/article.aspx/9737/2208/how-to-point-a-domain-to-the-heroku-app)