#!/usr/bin/env /bin/sh

set -o errtrace
set -o nounset
set -o pipefail
set -eu

function regenerate () {
    # guix definitions rarely change, no need to call in every time
    echo "use guix haunt" > .envrc
    echo >> .envrc
    echo "GUILE_LOAD_PATH=\"\$GUILE_LOAD_PATH:$(guix build haunt)/share/guile/site/3.0:$(guix build guile-commonmark)/share/guile/site/3.0\"" >> .envrc
}

$@
