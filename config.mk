REGISTRY = quay.io
REPOSITORY = aptible/ruby

export TAG = $(RUBY_TAG)-$(FROM_OS)-$(FROM_TAG)
export FROM = aptible/$(FROM_OS):$(FROM_TAG)

# Now, we have to figure out aliases.
PUSH_TAGS = $(TAG) ruby-$(TAG)

ifeq "$(FROM_OS):$(FROM_TAG)" "ubuntu:12.04"
# COMPATIBILITY: Ubuntu 12.04 gets the "non-OS" tags, and the legacy ruby- tag.
PUSH_TAGS = $(TAG) $(RUBY_TAG) ruby-$(RUBY_TAG)
endif

ifeq "$(FROM_OS):$(FROM_TAG)" "ubuntu:16.04"
# Ubuntu 16.04 gets the default Ubuntu tag.
PUSH_TAGS = $(TAG) $(RUBY_TAG)-ubuntu
endif

ifeq "$(FROM_OS):$(FROM_TAG)" "debian:wheezy"
# COMPATIBILITY: Wheezy gets the default Debian tag.
PUSH_TAGS = $(TAG) $(RUBY_TAG)-debian ruby-$(RUBY_TAG)-debian
endif

PUSH_REGISTRIES = $(REGISTRY) docker.io

# And now, we source $(RUBY_TAG)/config.mk to get the shasum.
-include $(RUBY_TAG)/config.mk
