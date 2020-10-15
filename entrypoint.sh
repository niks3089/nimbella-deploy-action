#!/bin/bash -l

/home/node/.npm-global/bin/nim --version && \
/home/node/.npm-global/bin/nim auth login $1 && \
/home/node/.npm-global/bin/nim project deploy $2 --yarn
