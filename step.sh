#!/bin/bash
set -ex

print pwd

echo "This is the value specified for the input 'number_of_commits': ${number_of_commits}"

git log --merges --date=format-local:'%d-%m-%Y @ %H:%M' --format='- %s - %cd' "-n${number_of_commits}"

OUTPUT=$( git log --merges --date=format-local:'%d-%m-%Y @ %H:%M' --format='- %s - %cd' "-n${number_of_commits}" )
echo "Output = ${OUTPUT}"

envman add --key BITRISE_MERGES_LOG --value OUTPUT