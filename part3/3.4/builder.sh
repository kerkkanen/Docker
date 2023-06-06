#!/bin/bash

github_repo=$1
dockerhub_repo=$2

git clone "https://github.com/$github_repo"

cd "$(basename "$github_repo")"

docker build -t "$dockerhub_repo" .

echo "$DOCKERHUB_PASSWORD" | docker login --username "$DOCKERHUB_USERNAME" --password-stdin

docker push "$dockerhub_repo"

cd ..

rm -rf "$(basename "$github_repo")"
