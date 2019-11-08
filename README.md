# Ghasedak mass SMS service ruby gem 

Just a ruby gem for [ghasedak](http://ghasedak.io) mass SMS service.

## How to use 

### Installing the gem 

```gem install ghasedak``` 

### Using a Gemfile 

```
source 'https://rubygems.org' 

gem 'ghasedak' 
``` 

## Sending SMS 

First of all, you'll need to go to [ghasedak.io](http://ghasedak.io) and sign up and get an API key. Then, you'll need a **bash** environment variable called `ghasedak_key` defined (or if not, no problem, just pass your API key directly to the class). Then, make an instanse of `GhasedakApi` like this : 

```ruby 

require 'ghasedak' 

q = GhasedakApi.new(api_key, linenumber) # Both of these, have default values. api_key is being read from ghasedak_key environment variable and line number is set to 10008566 which is ghasedak's default number. 
``` 
