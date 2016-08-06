# ![](https://gravatar.com/avatar/11d3bc4c3163e3d238d558d5c9d98efe?s=64) aptible/ruby

[![Docker Repository on Quay.io](https://quay.io/repository/aptible/ruby/status)](https://quay.io/repository/aptible/ruby)
[![Build Status](https://travis-ci.org/aptible/docker-ruby.svg?branch=master)](https://travis-ci.org/aptible/docker-ruby)

The Ruby programming language, on Docker.

## Installation and Usage

    docker pull quay.io/aptible/ruby
    docker run quay.io/aptible/ruby [options]

## Available Tags

* `latest`: Currently Ruby 2.3.0
* `1.9.3` (aliased as `ruby-1.9.3`): Ruby 1.9.3-p547
* `2.0.0` (aliased as `ruby-2.0.0`): Ruby 2.0.0-p648
* `2.1`   (aliased as `ruby-2.1`):   Ruby 2.1.10
* `2.2`   (aliased as `ruby-2.2`):   Ruby 2.2.5
* `2.3`   (aliased as `ruby-2.3`):   Ruby 2.3.1

Those images are based on Ubuntu. You can use the Debian variants (which are slightly lighter) using the following tags:

* `1.9.3-debian` (aliased as `ruby-1.9.3-debian`)
* `2.0.0-debian` (aliased as `ruby-2.0.0-debian`)
* `2.1-debian`   (aliased as `ruby-2.1-debian`)
* `2.2-debian`   (aliased as `ruby-2.2-debian`)
* `2.3-debian`   (aliased as `ruby-2.3-debian`)

## Tests

Tests are run as part of the `Dockerfile` build. To execute them separately within a container, run:

    bats test

## Deployment

To push the Docker image to Quay, run the following command:

    make release

## Copyright and License

MIT License, see [LICENSE](LICENSE.md) for details.

Copyright (c) 2016 [Aptible](https://www.aptible.com) and contributors.

[<img src="https://s.gravatar.com/avatar/f7790b867ae619ae0496460aa28c5861?s=60" style="border-radius: 50%;" alt="@fancyremarker" />](https://github.com/fancyremarker)
