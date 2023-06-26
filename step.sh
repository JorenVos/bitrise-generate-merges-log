#!/bin/bash
set -ex

echo "This is the value specified for the input 'number_of_commits': ${number_of_commits}"

output=$(git log --merges --date=format-local:'%d-%m-%Y @ %H:%M' --format='- %s - %cd' "-n${number_of_commits}")

echo "Output = ${output}"

envman add --key BITRISE_MERGES_LOG --value output

return 0