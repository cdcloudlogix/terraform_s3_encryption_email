#!/usr/bin/env bash
# Create python packages for lambda
#title          :python_packages.sh
#description    :This script will install pip packages, run pylint and pytest and finally zip python scripts
#author         :Oli
#date           :25/04/2020
#version        :0.1
#bash_version   :3.2.57(1)-release
#===================================================================================

set -o errexit
set -o pipefail
set -o nounset

function install_packages() {
  pip install -r requirements_test.txt
}

function zip_python() {
  pushd s3-scan-encryption/
  zip -r ../s3_encryption-payload.zip s3_encryption.py
  popd
  mv s3_encryption-payload.zip ../
}

function test_python() {
  pushd s3-scan-encryption/
  pylint s3_encryption.py
  popd
}

install_packages
test_python
zip_python
