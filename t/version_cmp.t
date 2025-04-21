#!/usr/bin/env bash

set -euo pipefail
shopt -s extglob

mydir=${0%/*}

source <(perl -0pE '/^function version_cmp.{.*?^}/sm; $_=$&' < "$mydir/../src/.bashrc")

declare -A versions_cmp_map=(
    ['1.1.0|1.0.1']=1
)

printf '1..%s\n' "${#versions_cmp_map[@]}"
declare -i test_count=0
declare -i fail_count=0
for versions in "${!versions_cmp_map[@]}"
do
    declare -i expected_cmp=${versions_cmp_map[$versions]}
    declare -i got_cmp
    version_cmp "${versions%%|*}" "${versions##*|}" got_cmp
    ((++test_count))
    if ((
        expected_cmp > 0 && got_cmp > 0 ||
        expected_cmp < 0 && got_cmp < 0 ||
        expected_cmp == 0 && got_cmp == 0
    ))
    then
        printf 'ok %s - ' "$test_count"
    else
        ((++fail_count))
        printf 'not ok %s - ' "$test_count"
    fi
    printf '%s; Expected %s; Got %s\n' \
        "$versions" \
        "$expected_cmp" \
        "$((got_cmp < 0 ? -1 : got_cmp > 0 ? 1 : 0))" \
    ;
done

exit "$fail_count"
