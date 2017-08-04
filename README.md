# simplebar-rails

simplebar-rails wraps the [SimpleBar](http://grsmto.github.io/simplebar/) library in a Rails
engine for simple use with the asset pipeline provided by Rails 3.1 and higher.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'simplebar-rails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simplebar-rails

## Usage

Add the following directive to your `application.js`:

```
//= require simplebar
```

Add the following directive to your `application.css`:

```
*= require simplebar
```

## Contributing

Bug reports and pull requests regarding Simplebar itself should go to https://github.com/Grsmto/simplebar.
If you find an issue with how this gem works, report it here: https://github.com/thutterer/simplebar-rails.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
