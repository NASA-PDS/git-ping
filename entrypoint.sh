#!/bin/sh

repository="$1"
token="$2"
branch="$3"
message="$4"

if [ -z "$token" ]; then
    echo "GitHub access token is not set; it is required" 1>&2
    exit 1
fi

exec git-ping --repo "$repository" --token "$token" --branch "$branch" --message "$message"
