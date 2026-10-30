#!/bin/bash

docker build --no-cache -t custom-zsh-test-image -f dev/Dockerfile .

docker run --rm --name custom-zsh-test-container -it custom-zsh-test-image