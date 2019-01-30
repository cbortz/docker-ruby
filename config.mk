REGISTRY = quay.io
REPOSITORY = cbortz/ruby

export TAG = $(RUBY_TAG)-$(FROM_OS)-$(FROM_TAG)
export FROM = cbortz/$(FROM_OS):$(FROM_TAG)

PUSH_TAGS = $(TAG)
PUSH_REGISTRIES = $(REGISTRY)

# And now, we source $(RUBY_TAG)/config.mk to get the shasum.
-include $(RUBY_TAG)/config.mk
