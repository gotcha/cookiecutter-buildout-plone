#!/bin/bash
set -e
command -v dhall > /dev/null || ( echo "dhall required but not available in PATH." && false )
dhall to-directory-tree --file .dhall/init.dhall --output .
