#!/bin/bash
find ./ -maxdepth 1 -type d -exec du -sh {} \; | sort -rh && find ./ -maxdepth 1 -type f -exec du -h {} \; | sort -rh
