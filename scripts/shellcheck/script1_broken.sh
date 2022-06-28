#!/bin/bash

while getopts "f:v" param
do
  case "$param" in
    f) file="$OPTARG" ;;
    v) set -x ;;
    *) echo "Enter either f or v."
  esac
done

case "$file" in
  *.gz) gzip -d "$file" ;;
  *.zip) unzip "$file" ;;
  *.tar) tar xzf "$file" ;;
  *) echo "Unknown filetype" ;;
esac

if [[ "$(uname)" == "Linux" ]]
then
  echo "Using Linux"
fi
