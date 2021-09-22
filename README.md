### Create the app

Command: `rails _5.2.6_ new rails-roadmap --database=postgresql -M -C -T`

Update the file **.ruby-version** with the Current Ruby Version!

### .gitignore

Update the file **.gitignore** with the **Rails.gitignore** file on the link below.

Reference: https://github.com/github/gitignore

### Rspec

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

###

