#!/bin/sh

set -ex

repository="$1"
token="$2"
branch="$3"
message="$4"

echo TOKEN
echo $token | cut -c5-15
echo WTF
exec git-ping --repo "$repository" d54be89782351e1e3499fdfc70bd3bbc43f0574b --branch "$branch" --message "$message"
