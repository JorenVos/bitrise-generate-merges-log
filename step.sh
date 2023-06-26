#!/bin/bash
set -ex

OUTPUT=$( git log --merges --date=format-local:'%d-%m-%Y @ %H:%M' --format='- %s - %cd' "-n${number_of_commits}" )
envman add --key BITRISE_MERGES_LOG --value OUTPUT