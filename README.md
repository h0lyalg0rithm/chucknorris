# Chucknorris

[![Gem Version](https://badge.fury.io/rb/chucknorris.svg)][gem]
[![Build Status](http://img.shields.io/travis/sferik/twitter.svg)][travis]

[gem]: https://rubygems.org/gems/chucknorris
[travis]: https://travis-ci.org/h0lyalg0rithm/chucknorris

A Ruby gem which displays random chuck norris jokes

## Installation
    gem install chucknorris


## Usage Examples
To get a random joke
 
```
require 'chucknorris'
```

Print out a random joke

```
ChuckNorris.random
```
To get a collection of jokes you have to initialize an object

```
@chuck = ChuckNorris.new
@chuck.jokes
@chuck.personal("John","Doe")
```


## Supported Ruby Versions

This library aims to support and is [tested against][travis] the following Ruby
versions:

* Ruby 2.0.0
* Ruby 2.1.0

If something doesn't work on one of these versions, it's a bug.

This library may inadvertently work (or seem to work) on other Ruby versions,
however support will only be provided for the versions listed above.


## Copyright
Copyright (c) 2014 Suraj Shirvankar
See [LICENSE][] for details.

[license]: LICENSE.md