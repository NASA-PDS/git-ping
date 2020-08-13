#!/bin/sh

set -ex

repository="$1"
token="$2"
branch="$3"
message="$4"

echo TOKEN
echo $token | cut -c5-15
echo WTF
exec git-ping --repo "$repository" --token "$token" --branch "$branch" --message "$message"
