#!/bin/bash

cd ansible

URL="https://nodejs.org/dist/v0.12.0/node-v0.12.0.tar.gz"
FILENAME="node-v0.12.0.tar.gz"
ARCHIVE_DIR="node-v0.12.0"
SHA256="9700e23af4e9b3643af48cef5f2ad20a1331ff531a12154eef2bfb0bb1682e32"


ansible-playbook -i etc/hosts build.yml --extra-vars "{'package': { 'url': \"${URL}\", 'sha256': \"${SHA256}\", 'filename': \"${FILENAME}\", 'archive_dir': \"${ARCHIVE_DIR}\"}}"
