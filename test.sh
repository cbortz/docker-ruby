#!/bin/bash
set -o errexit
set -o nounset

# Test Ruby image for its size. It's preferable to do so
# here rather than in a BATS test in case a customer is running
# out tests after adding to this image.

IMG="$REGISTRY/$REPOSITORY:$TAG"


echo "Checking image size"

MAX_SIZE=600000  # 600M
docker run --rm -it "$IMG" bash -c "[[ \"\$(du -d0 / 2>/dev/null | awk '{print \$1; print > \"/dev/stderr\"}')\" -lt \"$MAX_SIZE\" ]]"


echo "Test OK"
