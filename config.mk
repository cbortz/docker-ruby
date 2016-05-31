REGISTRY = quay.io
REPOSITORY = aptible/ruby


# For compatibility with the old naming convention of ruby-...,
# we'll push the image under both its "real" tag name, and a version
# prefixed with "ruby-".

PUSH_REGISTRIES = $(REGISTRY) docker.io
PUSH_TAGS = $(TAG) ruby-$(TAG)


# We support Ubuntu and Debian for our Ruby images.
# If the  tag ends with -debian, then build from Debian,
# otherwise, use Ubuntu.
# http://stackoverflow.com/questions/2741708/makefile-contains-string

ifneq (,$(findstring -debian,$(TAG)))
# TODO - Newer Debian
export FROM ?= aptible/debian:wheezy
else
# TODO - Newer Ubuntu?
export FROM ?= aptible/ubuntu:12.04
endif
