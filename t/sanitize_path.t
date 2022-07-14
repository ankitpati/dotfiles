#!/usr/bin/env bash

set -euo pipefail

mydir="$(dirname "$0")/"

source <(perl -0pE '/^sanitize_path\(\).{.*?^}/sm; $_=$&' < "$mydir/../src/.bashrc")

declare -A dirty_clean_paths_map=(
    ['/a/b:/a/c:/a/d:/a/b:/a/e:/a/f']='/a/b:/a/c:/a/d:/a/e:/a/f'
    ['/a/b:/a/c:::/a/d::::/a/e::/a/f']='/a/b:/a/c:/a/d:/a/e:/a/f'
    [':/a/b:/a/c:/a/d:/a/e:/a/f']='/a/b:/a/c:/a/d:/a/e:/a/f'
    ['/a/b:/a/c:/a/d:/a/e:/a/f:']='/a/b:/a/c:/a/d:/a/e:/a/f'
    ['::/a/b:/a/c:::/a/d::::/a/e::/a/f:']='/a/b:/a/c:/a/d:/a/e:/a/f'
    ['//a///b:/a///c:/a///d:/a/e:/a//f']='/a/b:/a/c:/a/d:/a/e:/a/f'
    ['::://a//b::/a///c::/a///d:///a//b:/a/e:/a//f:']='/a/b:/a/c:/a/d:/a/e:/a/f'
)

echo "1..${#dirty_clean_paths_map[@]}"
test_count=0
fail_count=0
for dirty_path in "${!dirty_clean_paths_map[@]}"
do
    expected_clean_path="${dirty_clean_paths_map[$dirty_path]}"
    got_clean_path="$(sanitize_path "$dirty_path")"
    test_count="$((test_count + 1))"
    if test "$expected_clean_path" = "$got_clean_path"
    then
        echo -n "ok $test_count - "
    else
        fail_count="$((fail_count + 1))"
        echo -n "not ok $test_count - "
    fi
    echo "$dirty_path; Expected $expected_clean_path; Got $got_clean_path"
done

exit "$fail_count"
