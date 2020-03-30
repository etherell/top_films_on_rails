# README

Deployed on [Heroku](https://cryptic-tundra-13686.herokuapp.com/)  
Ruby version: 2.6.5  
To get update some file from another branch: _git restore -s master -- .\README.md_  
If you wanna do something, first set you task to list!

## Tasks

1. [x] Search form
2. [x] Popular movies at the home page
3. [x] Bootstrap for Server Side Rendering
4. [x] Link to the button Details
5. [ ] Change search page and url
6. [ ] Add link to top_rated movie (of all time)

---

1. Change _top_films_path_ to the more useful
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

- Ruby version

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...

### Starting up the Web Server

> rails server -> linux  
> ruby bin\rails server -> windows  
> rails s -> short

> rails generate controller Welcome index  
> the controller located _app/controllers/welcome_controller.rb_  
> the view _app/view/welcome/index.html.erb_

---

**Troubleshooting:**

> ! sqlite3 could not find  
> ! webpacker could not find  
> ! webpacker configuration file nor found (RuntimeError)  
> rails webpacker  
> install yarn  
> npm install yarn -g

> rails new my_pg_app -d postgresql --- to create new project with PostgreSQL database
> bundler install > after updating some gems

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

### Info about Rails

- add your page to public folder, rails automate send this page to user if they ask it
- **erb** file is a mixture of HTML and Ruby code
- generate new controller create controllers, helper, assets, views
- static file has higher priority than a route in config/routes.rb
- erb file can have Ruby file in <%= ...%>
- <%= ...%> - outputs the result as a String
- <% ... %> - does not output anything
- do not put too match program logic into the view
- partials are great in the sense of the DRY
- [To create your own generator](https://guides.rubyonrails.org/generators.html)
- A **helper** methods takes care of recurring tasks in a view
- debug - <%= debug @foo %> add to the HTML line ---
- <%console %> - show the irb console at the bottom of the page
