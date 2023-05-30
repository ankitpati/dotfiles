#!/usr/bin/env --split-string jq --indent 4 --null-input --sort-keys --from-file

[inputs] |

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
