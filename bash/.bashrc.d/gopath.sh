#!/bin/bash

GOPATH=$(asdf where golang)/packages
export GOPATH
PATH="$GOPATH/bin":$PATH
