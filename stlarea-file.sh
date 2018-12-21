#!/usr/bin/env bash

for arg in "$@"; do
    if [[ "$(file -b --mime-encoding $arg)" == *"ascii"* ]]; then
        stlareatext "$arg"
    else
        stlareabinary "$arg"
    fi
done
