#!/usr/bin/env sh

set -e
set -o pipefail

[ "$AWS_S3_BUCKET" ] || exit 1
[ "$AWS_ACCESS_KEY" ] || exit 1
[ "$AWS_SECRET_KEY" ] || exit 1

# upload the files to s3
s3cmd sync --delete-removed -P site/ s3://$AWS_S3_BUCKET/