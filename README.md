[![Gem Version](https://badge.fury.io/rb/lab2hub.svg)](https://badge.fury.io/rb/lab2hub)
# Lab2hub

Easily migrate your projects from GitLab to GitHub.

## Usage

```sh
gem install lab2hub
lab2hub --config
vi config.yaml
lab2hub PROJECT_NAME_ON_GITLAB
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

### References

- [GitHub API v3 Documentation](https://developer.github.com/v3/)
- [GitLab API Documentation](http://docs.gitlab.com/ce/api/README.html)
- [NARKOZ/gitlab](https://github.com/NARKOZ/gitlab)
- [piotrmurach/github](https://github.com/piotrmurach/github)

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/buo/lab2hub.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
