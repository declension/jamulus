#!/bin/bash

VERSION=$(cat ${1}/Jamulus.pro | grep -oP 'VERSION = \K\w[^\s\\]*')
echo "::set-output name=JAMULUS_VERSION::${VERSION}"

perl ${1}/.github/actions_scripts/getChangelog.pl ${1}/ChangeLog ${VERSION} > ${1}/autoLatestChangelog.md
