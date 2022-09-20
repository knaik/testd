# Encrypted content for Jekyll

Symmetrically encrypts posts.  You can securely share URLs and give out
password so only trusted visitors can read the site.  It should work
with any Jekyll theme without modification :)

**Important!!** Since passwords are stored in posts, this plugin is for
private repositories only!

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jekyll-crypto'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install jekyll-crypto

## Usage

Add a `password` attribute either to each post front matter or globally
into `_config.yml`.

```
---
layout: post
password: '12345678'
title: 'Some metadata is not encrypted yet'
description: "Don't forget to add a description since some themes use content!"
---

Content to be encrypted
```

During site build the plugin will replace the content with an encrypted
version, the decryption parameters and a Javascript snippet that asks
visitors for a password.  If the password is correct, the content is
replaced by the plain text version :)

You can prevent an article from being encrypted by setting password to
`false`.  It also accepts the string `'false'`.  So this means you can't
use "false" as a password :P

## Development

After checking out the repo, run `bin/setup` to install
dependencies. Then, run `rake test` to run the tests. You can also run
`bin/console` for an interactive prompt that will allow you to
experiment.

To install this gem onto your local machine, run `bundle exec rake
install`. To release a new version, update the version number in
`version.rb`, and then run `bundle exec rake release`, which will create
a git tag for the version, push git commits and tags, and push the
`.gem` file to [rubygems.org](https://rubygems.org).

### FAQ (It doesn't work!)

* **Nothing happens when I input the password and submit the form.**
  Chrome only exposes the CryptoSubtle API on secure locations.  You can
  try setting up your own CA for development (using
  [sutty.local](https://0xacab.org/sutty/sutty.local)) or upload your
  site to a server with HTTPS enabled.

### TODO (help wanted!)

* Encrypt front matter
* Show useful errors?

## Contributing

Bug reports and pull requests are welcome on 0xacab at
<https://0xacab.org/sutty/jekyll/jekyll-crypto>. This project is
intended to be a friendly and welcoming space for collaboration, and
contributors are expected to adhere to the [code of
conduct](https://sutty.nl/en/code-of-conduct/).

This project took ~9 hours to get to a working proof of concept.  If you
appreciate our work, you can donate
[Bitcoin](bitcoin:3KCV7dBgJbkTuF4Lz2BxVu6bVUf9fRyp6z?label=jekyll-crypto&message=Thanks+for+jekyll-crypto)
or contact us for other ways :)

## License

The gem is available as free software under the terms of the GPL3
License.

## Code of Conduct

Everyone interacting in the jekyll-crypto project's codebases, issue
trackers, chat rooms and mailing lists is expected to follow the [code
of conduct](https://sutty.nl/en/code-of-conduct/).
