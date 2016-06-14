#!/usr/bin/env sh

set -e
set -o pipefail

[ "$AWS_S3_BUCKET" ] || echo "Missing s3 bucket";exit 1
[ "$AWS_ACCESS_KEY" ] || echo "Missing s3 access";exit 1
[ "$AWS_SECRET_KEY" ] || echo "Missing s3 secret";exit 1

# upload the files to s3
s3cmd sync --delete-removed -P . s3://$AWS_S3_BUCKET/