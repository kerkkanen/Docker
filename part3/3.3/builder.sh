#!/bin/bash

github_repo=$1
dockerhub_repo=$2

git clone "https://github.com/$github_repo"

cd "$(basename "$github_repo")"

docker build -t "$dockerhub_repo" .

docker push "$dockerhub_repo"

cd ..

rm -rf "$(basename "$github_repo")"
