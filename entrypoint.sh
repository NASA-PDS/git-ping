#!/bin/sh

set -ex

repository="$1"
token="$2"
branch="$3"
message="$4"

exec git-ping --repo "$repository" --token "$token" --branch "$branch" --message "$message"
