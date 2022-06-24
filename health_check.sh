#!/bin/sh
set -ex
curl -vs http://127.0.0.1:8083/api/status 2>&1 | grep 200
