# Capistrano::Rudy

Notify the telegram bot @RudyIsBot on deploy.

## Installation

Add this line to your application's Gemfile under the 'development' group:

```ruby
gem 'capistrano-rudy'
```

Execute:

```
bundle
```

Add this to `Capfile`:

```ruby
require 'capistrano/rudy'
```

## Usage

Add this to `deploy.rb` or to stage configuration file.

```ruby
set :rudy_token, TOKEN
```
