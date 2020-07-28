#!/bin/sh

set -e

file="${1}"
shift

until [ -s "${file}" ]; do
  >&2 echo "${file} is empty. Sleeping..."
  sleep 1
done

exec "${@}"
