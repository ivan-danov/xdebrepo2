#!/bin/bash

export SCRIPT_PATH=$(realpath $(dirname $0))
export XDEBREPO2_CONF_DIR_BASE=${SCRIPT_PATH}/testrepo

if [ -d ${XDEBREPO2_CONF_DIR_BASE} ]; then
	echo "ERROR: directory ${XDEBREPO2_CONF_DIR_BASE} already exists"
	exit 1
fi

./xdebrepo2 init ${XDEBREPO2_CONF_DIR_BASE}/repo ${XDEBREPO2_CONF_DIR_BASE}/etc/xdebrepo2/

./xdebrepo2 key gen testrepo-devel "TestRepo Devel Debian Repository" "office@testrepo.com"
export REPO_SRV_NAME="localhost"
export REPO_WEB_DIR="/repo/testrepo-devel"
export REPO_ORIGIN="TestRepo Devel deb repository"
export REPO_DESCRIPTION="TestRepo Devel deb repository"
./xdebrepo2 repo create testrepo-devel testrepo-devel "TestRepo Devel Debian Repository"

./xdebrepo2 key gen testrepo-test "TestRepo Test Debian Repository" "office@testrepo.com"
export REPO_SRV_NAME="localhost"
export REPO_WEB_DIR="/repo/testrepo-test"
export REPO_ORIGIN="TestRepo Test deb repository"
export REPO_DESCRIPTION="TestRepo Test deb repository"
./xdebrepo2 repo create testrepo-test testrepo-test "TestRepo Test Debian Repository"

./xdebrepo2 key gen testrepo-release "TestRepo Release Debian Repository" "office@testrepo.com"
export REPO_SRV_NAME="localhost"
export REPO_WEB_DIR="/repo/testrepo-release"
export REPO_ORIGIN="TestRepo Release deb repository"
export REPO_DESCRIPTION="TestRepo Release deb repository"
./xdebrepo2 repo create testrepo-release testrepo-release "TestRepo Release Debian Repository"
