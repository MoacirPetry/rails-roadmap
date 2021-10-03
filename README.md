[![Maintainability](https://api.codeclimate.com/v1/badges/a086dbb2d864792fc1c0/maintainability)](https://codeclimate.com/github/MoacirPetry/rails-roadmap/maintainability) [![Test Coverage](https://api.codeclimate.com/v1/badges/a086dbb2d864792fc1c0/test_coverage)](https://codeclimate.com/github/MoacirPetry/rails-roadmap/test_coverage) [![Build Status](https://app.travis-ci.com/MoacirPetry/rails-roadmap.svg?branch=main)](https://app.travis-ci.com/MoacirPetry/rails-roadmap)   <a href="https://www.ruby-lang.org/pt/">
    <img alt="Ruby" src="https://img.shields.io/badge/Ruby-2.6.7-brightgreen" target="_blank">
  </a>   <a href="https://rubyonrails.org/">
    <img alt="Ruby on Rails" src="https://img.shields.io/badge/Rails-5.2.6-brightgreen" target="_blank">
  </a>

### Create the app

Command: `rails _5.2.6_ new rails-roadmap --database=postgresql -M -C -T`

Update the file **.ruby-version** with the Current Ruby Version!

### .gitignore

Update the file **.gitignore** with the **Rails.gitignore** file on the link below.

Reference: https://github.com/github/gitignore

### Rspec

<div>
<img src="https://seeklogo.com/images/R/rspec-logo-DA1EE19A18-seeklogo.com.png" width="40"/>
</div>

Reference: https://github.com/rspec/rspec-rails

`rails generate rspec:install`

Inside the file **.rspec** put this:

```txt
--require spec_helper
--color
--format documentation
```

Add the generators in **config/application.rb**

```ruby
config.generators do |g|
  g.test_framework :rspec,
    view_specs: true,
    controller_specs: true,
    helper_specs: true,
    routing_specs: true
end
```

### Commitizen

Reference: https://github.com/commitizen/cz-cli

1 - `npm install commitizen -g`

2 - `commitizen init cz-conventional-changelog --save-dev --save-exact`

### Bootstrap

<div>
<img src="https://seeklogo.com/images/B/bootstrap-logo-3C30FB2A16-seeklogo.com.png" width="40"/>
</div>

Reference: https://github.com/twbs/bootstrap-rubygem

Rename the file **app/assets/stylesheets/application.css** to **app/assets/stylesheets/application.scss** and put this content inside:

```scss
// Custom bootstrap variables must be set or imported *before* bootstrap.
@import "bootstrap";
```

### Simplecov

Add in **Gemfile**

Reference: https://github.com/simplecov-ruby/simplecov

`gem 'simplecov', '~> 0.21.2', require: false`

Add in **spec/rails_helper.rb**

```ruby
require 'simplecov'
SimpleCov.start 'rails' do
  add_filter '/app/jobs/'
  add_filter '/app/helpers/'
  add_filter '/app/models/'
end
```

### Codeclimate

<div>
<img src="https://seeklogo.com/images/C/code-climate-logo-5E0A1CED56-seeklogo.com.png"/>
</div>

Go on the https://codeclimate.com/dashboard

Click in Add a Repository, find the repository and Add the Repo.

Click in Repo Setting, go to Extra => Badges, select the Maintainability Badge and the Test Coverage Badge with the Markdown, click on the Copy button and paste at README.md file.

>🚨 Note: It is not necessary to install gem or other things!


### Travis CI

<div>
<img src="https://seeklogo.com/images/T/travis-ci-logo-736FC36EC9-seeklogo.com.png" width="60"/>
</div>

Go on the https://www.travis-ci.com/

Find in the Active repositories the repo and click on it.

If you have the build passed, click on **build passing** green button and select the format **Markdown**, copy and paste here in the README file.

>🚨 Note: It is not necessary to install gem or other things!

### Sentry

<div>
<img src="https://seeklogo.com/images/S/sentry-logo-36928B74C1-seeklogo.com.png" width="60"/>
</div>

Go on the https://sentry.io/

In Projects, click on Create Project, select Rails and give a name for this Project.

After that, it will be displayed an information to put in the **Gemfile** this:

```ruby
gem 'sentry-ruby'
gem 'sentry-rails'
```

Create this file **config/initializers/sentry.rb** and put the content informed on Sentry.

### Faker

### Solutions

**Travis CI** got errors sometimes if the **Gemfile.lock** is not with the **linux PLATFORMS**, so run this command:

`bundle lock --add-platform x86_64-linux`

