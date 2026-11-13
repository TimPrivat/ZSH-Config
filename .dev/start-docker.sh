#!/bin/bash

docker build -t custom-zsh-test-image -f .dev/Dockerfile . 

docker run --rm --name custom-zsh-test-container -it custom-zsh-test-image