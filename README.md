# Wareki

Wareki - Japanese Calendar

http://en.wikipedia.org/wiki/Japanese_era_name
http://en.wikipedia.org/wiki/List_of_Japanese_era_names

## Installation

Add this line to your application's Gemfile:

    gem 'wareki'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install wareki

## Usage

    require 'wareki'

    # m means Meiji era
    Wareki::Date.parse("m01.01.03") # => 1868-01-27

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
