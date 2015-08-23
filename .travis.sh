#!/bin/sh 

mkdir ~/.newslynx/
wget https://github.com/newslynx/newslynx-core/blob/feature/modular/newslynx/dot_newslynx/config.yaml -o ~/.newslynx/config.yaml
cat ~/.newslynx/config.yaml
