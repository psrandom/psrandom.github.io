#!/usr/bin/env bash

bundle install --jobs 20 --retry 5
npm install
npm run build:img

exec "$@"
