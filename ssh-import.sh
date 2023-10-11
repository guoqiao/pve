#!/bin/bash

set -xue

sudo apt update

sudo apt install -y ssh-import-id

ssh-import-id gh:guoqiao
