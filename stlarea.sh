#!/usr/bin/env bash

for arg in "$@"; do
    stlareatext "$arg" 2>/dev/null || stlareabinary "$arg" 2>/dev/null
done
