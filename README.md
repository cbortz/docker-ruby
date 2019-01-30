# docker-ruby

[![Docker Repository on Quay.io](https://quay.io/repository/cbortz/ruby/status)](https://quay.io/repository/cbortz/ruby)
[![Build Status](https://travis-ci.org/cbortz/docker-ruby.svg?branch=master)](https://travis-ci.org/cbortz/docker-ruby)

The Ruby programming language, on Docker.

## Installation and Usage

    docker pull quay.io/cbortz/ruby
    docker run quay.io/cbortz/ruby [options]

## Available Tags

* `latest`: Currently Ruby 2.6.0 (don't depend on this tag: it will change over time).
* `2.6-ubuntu-16.04`:   Ruby 2.6.0
* `2.5-ubuntu-16.04`:   Ruby 2.5.3

## Tests

Tests are run as part of the `Dockerfile` build. To execute them separately within a container, run:

    bats test

## Deployment

To push the Docker image to Quay, run the following command:

    make release

## Copyright and License

MIT License, see [LICENSE](LICENSE.md) for details.

Copyright (c) 2019 Chet Bortz and contributors.

---

## Special Thanks

[Frank Macreery](https://github.com/fancyremarker), the great folks at [Aptible](https://www.aptible.com), and all other contributors!

