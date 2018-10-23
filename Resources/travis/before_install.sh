#!/usr/bin/env bash
mkdir -p app/etc var

# If no stability configured, do nothing and keep installing the given Magento2 version.
if [[ -z "${MAGENTO_STABILITY}" ]]; then
  VERSION=$MAGENTO_VERSION
else
  # Else, switch explicit version to closest one with ~
  VERSION="~${MAGENTO_VERSION}"
fi

composer require magento/magento2-base $VERSION --no-update
