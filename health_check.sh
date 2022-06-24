#!/bin/sh
set -ex
curl -vs http://127.0.0.1:8080/api/status 2>&1 | grep 200
