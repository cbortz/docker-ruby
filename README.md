# docker-ruby

<!-- [![Docker Repository on Quay.io](https://quay.io/repository/aptible/ruby/status)](https://quay.io/repository/aptible/ruby)
[![Build Status](https://travis-ci.org/aptible/docker-ruby.svg?branch=master)](https://travis-ci.org/aptible/docker-ruby) -->

The Ruby programming language, on Docker.

<!-- ## Installation and Usage

    docker pull quay.io/aptible/ruby
    docker run quay.io/aptible/ruby [options] -->

## Available Tags

* `latest`: Currently Ruby 2.5.0 (don't depend on this tag: it will change over time).
* `1.9.3-ubuntu-16.04` (aliased as `1.9.3`): Ruby 1.9.3-p547
* `2.0.0-ubuntu-16.04` (aliased as `2.0.0`): Ruby 2.0.0-p648
* `2.1-ubuntu-16.04`   (aliased as `2.1`):   Ruby 2.1.10
* `2.2-ubuntu-16.04`   (aliased as `2.2`):   Ruby 2.2.10
* `2.3-ubuntu-16.04`   (aliased as `2.3`):   Ruby 2.3.8
* `2.4-ubuntu-16.04`   (aliased as `2.4`):   Ruby 2.4.5
* `2.5-ubuntu-16.04`   (aliased as `2.5`):   Ruby 2.5.3

As the name implies, those images are based on Ubuntu. You can use the Debian
variants (which are slightly lighter) using the following tags:

* `1.9.3-debian-jessie`
* `2.0.0-debian-jessie`
* `2.1-debian-jessie`
* `2.2-debian-jessie`
* `2.3-debian-jessie`
* `2.4-debian-jessie`
* `2.5-debian-jessie`


## Tests

Tests are run as part of the `Dockerfile` build. To execute them separately within a container, run:

    bats test

<!-- ## Deployment

To push the Docker image to Quay, run the following command:

    make release -->

## Copyright and License

MIT License, see [LICENSE](LICENSE.md) for details.

Copyright (c) 2019 Chet Bortz and contributors.

---

## Special Thanks

[Frank Macreery](https://github.com/fancyremarker), the great folks at [Aptible](https://www.aptible.com), and all other contributors!

