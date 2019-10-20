# Capistrano::ReleaseInfo

Parses capistrano revisions.log file for deployment information

## Installation

Add this line to your application's Gemfile:

``` ruby
gem 'capistrano-release-info'
```

And then execute:

``` bash
$ bundle
```

Or install it yourself as:

``` bash
$ gem install capistrano-release-info
```

## Usage

This gem exposes two module methods available.

``` ruby
Capistrano::ReleaseInfo.current

# Deployement Hash
# {
#    :branch => "master",
#    :version => "9b7d10bab806d0f5e8b5185cf5c295c24cc95480",
#    :released_at => Sat, 19 Oct 2019 08:47:56 PDT -07:00,
#    :released_by => "ajaya"
# }
```

``` ruby
Capistrano::ReleaseInfo.releases
# An array of deployements
```

## Contributing

1. Fork it ( https://github.com/codetheoryio/release-info/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
