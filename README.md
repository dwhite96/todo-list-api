# Todo List Rails API
A simple todo list backend app that serves JSON data. Current functionality includes:

* CRUD operations for a todo item with attributes for title, order, and completion (boolean).
* RSpec test suite.
* That's it! That's all the functionality for now. There may be more features added in the future.


## Ruby Version
This API was written and tested with Ruby 2.3.0

## System Dependencies
* Rails 5.0.0.rc1
* Puma for app server
* Recommend using ActiveModel::Serializer instead of jbuilder. Just add to Gemfile:

```ruby
gem 'active_model_serializers', '~> 0.10.0'
```

See Gemfile for other dependencies.

## Getting Started
### Configuration

This API uses PostgreSQL databases for the development, test, and production environments. See http://edgeguides.rubyonrails.org/configuring.html#configuring-a-database for configuring a different database.

Database creation and initialization

```ruby
rake db:create db:migrate
```

### Use

Common (RESTful) endpoints to use from your frontend application:

See a list of todos:
GET ```/todos```

See one todo:
GET ```/todos/:id```

Add a todo:
POST ```/todos```

## How to run the test suite

```ruby
bundle exec rspec spec/
```

## Deployment instructions
This has not been tested yet. Will test in the future. Recommend using Heroku or Amazon Web Services (AWS).
