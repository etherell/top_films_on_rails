# README

Deployed on [Heroku](https://cryptic-tundra-13686.herokuapp.com/)  
Ruby version: 2.6.5  
If you wanna do something, first set you task to list!

## Tasks

1. [x] Search form
2. [x] Popular movies at the home page
3. [x] Bootstrap for Server Side Rendering
4. [x] Link to the button Details
5. [ ] Change search page and url

---

1. Add link to top_rated movie (of all time)
1. Change *top_films_path* to the more useful
1. Deploy to heroku
1. Chage Database from sqlite3 to PostgreSQL
1. Shorten movie descriptions to 200 characters
1. Shorten the image

---

### First Install

If you're clonning this repo to install all Rails gems localy type:  

> bundle install

### Tools to work with project

> <https://github.com/tulios/json-viewer>  
> <https://developers.themoviedb.org/3/movies>  
> <https://github.com/DavidAnson/vscode-markdownlint>  

---

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

### Starting up the Web Server

> rails server    -> linux  
> ruby bin\rails server -> windows  
> rails s     -> short  

> rails generate controller Welcome index  
> the controller located *app/controllers/welcome_controller.rb*  
> the view *app/view/welcome/index.html.erb*  

---

**Troubleshooting:**

> ! sqlite3 could not find  
> ! webpacker could not find  
> ! webpacker configuration file nor found (RuntimeError)  
> rails webpacker  
> install yarn  
> npm install yarn -g  

>  rails new my_pg_app -d postgresql --- to create new project with PostgreSQL database
> bundler install > after updating some gems  
> git restore -s  postgres -- .\README.md  

### Install Bundler on Mac

> sudo gem install bundler  
> brew install gcc

### Update Ruby on Mac

> rvm install ruby@2.6.5  
> rvm install ruby-2.6.5  
> rvm use 2.6.5 --default  

**Install Heroku:**
> install heroku from web site for windows  
> heroku login  
> heroku create  
> git push heroku master  
> rename **gem 'sqlite3'** to **gem 'pg'**  
> run: bundler install  
> bundle exec rails webpacker:install  

---

### Create useful git messages

The type is contained within the title and can be one of these types:

> feat: a new feature  
> fix: a bug fix  
> docs: changes to documentation  
> style: formatting, missing semi colons, etc; no code change  
> refactor: refactoring production code  
> test: adding tests, refactoring test; no production code change  
> chore: updating build tasks, package manager configs, etc; no production code change
