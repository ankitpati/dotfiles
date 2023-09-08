#!/usr/bin/env --split-string jq --indent 4 --slurp --sort-keys --from-file

if length == 0 then
    error("Usage:\n\ttidy-docker-daemon-json-files.jq <docker-daemon-config-json>...")
end |

.[0].proxies."no-proxy" = (
    [.[].proxies."no-proxy"] |
    join(",") |
    split(",") |
    unique |
    join(",")
) |

.[0]
