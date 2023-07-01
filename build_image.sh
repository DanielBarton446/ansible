#!/bin/bash
docker build --tag nvim-container .
docker run --rm -w /usr/local/bin -it nvim-container bash -c "ansible-playbook --ask-vault-pass personal.yml && /bin/bash"
# docker run --rm -w /usr/local/bin -it nvim-container bash 
