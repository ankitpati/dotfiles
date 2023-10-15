#!/usr/bin/env bash

set -euo pipefail
shopt -s extglob

mydir="$(dirname "$0")/"

source <(perl -0pE '/^sanitize_path\(\).{.*?^}/sm; $_=$&' < "$mydir/../src/.bashrc")

declare -A dirty_clean_paths_map=(
    ['//a///b:/a///c:/a///d:/a/e:/a//f/////']='/a/b:/a/c:/a/d:/a/e:/a/f'
    ['/a/b/:/a/c:/a/d/:/a/e///:/a/f:']='/a/b:/a/c:/a/d:/a/e:/a/f'
    ['/a/b:/a/c:/a/d:/a/b:/a/e:/a/f']='/a/b:/a/c:/a/d:/a/e:/a/f'
    ['/a/b:/a/c:/a/d:/a/e:/a/f:']='/a/b:/a/c:/a/d:/a/e:/a/f'
    ['/a/b:/a/c:::/a/d::::/a/e::/a/f']='/a/b:/a/c:/a/d:/a/e:/a/f'
    [':']=''
    [':/a/b:/a/c:/a/d:/a/e:/a/f/']='/a/b:/a/c:/a/d:/a/e:/a/f'
    ['::/a/b:/a/c:::/a/d::::/a/e::/a/f:']='/a/b:/a/c:/a/d:/a/e:/a/f'
    ['::://a//b////::/a///c::/a///d//:///a//b//:/a/e:/a//f:']='/a/b:/a/c:/a/d:/a/e:/a/f'
)

printf '1..%s\n' "${#dirty_clean_paths_map[@]}"
test_count=0
fail_count=0
for dirty_path in "${!dirty_clean_paths_map[@]}"
do
    expected_clean_path=${dirty_clean_paths_map[$dirty_path]}
    got_clean_path=$dirty_path
    sanitize_path got_clean_path
    ((++test_count))
    if [[ "$expected_clean_path" == "$got_clean_path" ]]
    then
        printf 'ok %s - ' "$test_count"
    else
        ((++fail_count))
        printf 'not ok %s - ' "$test_count"
    fi
    printf '%s; Expected %s; Got %s\n' "$dirty_path" "$expected_clean_path" "$got_clean_path"
done

exit "$fail_count"
