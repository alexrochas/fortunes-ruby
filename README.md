# Fortunes-ruby 
> Debian fortune package in Ruby 

[![Build Status](https://travis-ci.org/alexrochas/fortunes-ruby.svg?branch=master)](https://travis-ci.org/alexrochas/fortunes-ruby)  [![Coverage Status](https://coveralls.io/repos/github/alexrochas/fortunes-ruby/badge.svg?branch=master)](https://coveralls.io/github/alexrochas/fortunes-ruby?branch=master)

Just made a port from Debian fortunes package and create an API with Sinatra.

## Installation

Linux:

```sh
bundle install
```

## Usage example

After start server with
```bash
ruby fortunes.rb
```
Make requests to **http://127.0.0.1:4567/fortunes** and you will be served with fortune cookie messages like:
```
When you try to make an impression, the chances are that is the
impression you will make.
```

## Release History

* 0.0.1
    * Work in progress, just add 'cookie' messages

## Meta

Alex Rocha - [about.me](http://about.me/alex.rochas)
