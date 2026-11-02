#!/bin/bash

docker build -t custom-zsh-test-image -f dev/Dockerfile . #--no-cache 

docker run --rm --name custom-zsh-test-container -it custom-zsh-test-image