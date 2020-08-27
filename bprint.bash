#!/usr/bin/env bash

function copy_function() {
  test -n "$(declare -f "$1")" || return
  eval "${_/$1/$2}"
}

function rename_function() {
  copy_function "$@" || return
  unset -f "$1"
}

rename_function run _run
unset copy_function
unset rename_function

# shellcheck disable=SC2154
# https://github.com/koalaman/shellcheck/wiki/SC2154
# Variables supplied by BATS
function run() {
  _run "$@"
  echo "status: $status"
  echo "output: '$output'"
}
