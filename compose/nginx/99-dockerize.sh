#!/bin/sh
set -xeo pipefail

dockerize -timeout 1200s -wait tcp://fess01:8080

exit 0
