#!/usr/bin/env --split-string jq --indent 4 --slurp --sort-keys --from-file

if length == 0 then
    error("Usage:\n\ttidy-dark-reader-json-files.jq <dark-reader-config-json>...")
end |

.[0].customThemes[0].theme.engine as $zeroth_engine |

map(
    .customThemes[0].url = (
        [
            .customThemes[] |
            select(.theme.engine == $zeroth_engine).url
        ] |
        flatten
    ) |
    .customThemes = [.customThemes[0]]
) |

.[0].customThemes[0].url = (
    [
        .[].customThemes[] |
        select(.theme.engine == $zeroth_engine).url
    ] |
    flatten |
    unique
) |

.[0].siteList = ([.[].siteList[]] | unique) |
.[0].siteListEnabled = ([.[].siteListEnabled[]] | unique) |
.[0]
