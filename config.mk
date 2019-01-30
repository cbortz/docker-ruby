REGISTRY = quay.io
REPOSITORY = cbortz/ruby

export TAG = $(RUBY_TAG)-$(FROM_OS)-$(FROM_TAG)
export FROM = aptible/$(FROM_OS):$(FROM_TAG)

# Now, we have to figure out aliases.
PUSH_TAGS = $(TAG) ruby-$(TAG)

ifeq "$(FROM_OS):$(FROM_TAG)" "ubuntu:16.04"
# Ubuntu 16.04 gets the default tag and the default Ubuntu tag.
PUSH_TAGS += $(RUBY_TAG) $(RUBY_TAG)-ubuntu ruby-$(RUBY_TAG)-ubuntu
endif

ifeq "$(FROM_OS):$(FROM_TAG)" "debian:jessie"
# Debian Jessie gets the default Debian tag.
PUSH_TAGS += $(RUBY_TAG)-debian ruby-$(RUBY_TAG)-debian
endif

PUSH_REGISTRIES = $(REGISTRY) docker.io

# And now, we source $(RUBY_TAG)/config.mk to get the shasum.
-include $(RUBY_TAG)/config.mk
