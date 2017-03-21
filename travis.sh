#!/bin/bash
cordova prepare
cordova build > /dev/null
cp -r tests/ios platforms/ios/tests
if [[ "$TRAVIS_PULL_REQUEST" != "false" ]]; then
  bundle exec fastlane build
  exit $?
fi
if [[ "$TRAVIS_BRANCH" == "master" ]]; then
  bundle exec fastlane beta
  exit $?
fi
if [[ "$TRAVIS_BRANCH" == "production" ]]; then
  bundle exec fastlane release
  exit $?
fi
