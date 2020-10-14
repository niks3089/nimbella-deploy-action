#!/bin/sh -l

pushd $GITHUB_WORKSPACE
nim --version
nim auth login $1
nim project deploy $2 --env .env --yarn
popd
