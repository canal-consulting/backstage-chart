#!/usr/bin/env sh

set -eu

scripts/helm-docs.sh

dir_dirty=$(git diff HEAD)
if [ -z "$dir_dirty" ]; then
  echo 'Helm-docs generated readmes match chart readmes.'
  exit 0
else
  echo 'Helm-docs generated readmes diverge from current chart readmes:'
  git status
  exit 64
fi