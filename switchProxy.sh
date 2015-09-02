#!/bin/bash
hasproxy=$(git config --local --get http.proxy)
proxy="proxy-fr-croissy.gemalto.com:8080"
if [ -z "$proxy" ]; then
 git config --local http.proxy $proxy
else
 git config --local http.proxy ""
fi
