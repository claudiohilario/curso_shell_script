# Shell Script
## Util Links
* [Shell Style Guide](https://google.github.io/styleguide/shellguide.html)
* [Figlet](http://www.figlet.org/)
* [Tip colors and formatting](https://misc.flogisoft.com/bash/tip_colors_and_formatting)

# Basic example
[Good practices for writing shell scripts](http://www.yoone.eu/articles/2-good-practices-for-writing-shell-scripts.html)
```sh
#!/usr/bin/env sh

# Default values for blank parameters
DEBUG=0
IN_FILE=/etc/some-input-file.conf
OUT_FILE=/var/log/some-output-file.log

# Option parser, the order doesn't matter
while [ $# -gt 0 ]; do
    case "$1" in
        -i|--input)
            IN_FILE="$2"
            shift 2
            ;;
        -o|--output)
            OUT_FILE="$2"
            shift 2
            ;;
        --debug) # Argument acting as a simple flag
            DEBUG=1
            shift 1
            ;;
        *)
            break
            ;;
    esac
done

# Some simple argument checks
wrong_arg() {
    echo "Error: invalid value for $1" >&2
    exit 2
}

[ -f $IN_FILE ] || wrong_arg "input file"
[ -f $OUT_FILE ] || wrong_arg "output file"

# The actual script can start below
# ...
```

## Structure example
```sh
#!/usr/bin/env bash
#
# scriptName.sh - # scriptName.sh - Script description
#
# Site:        http://example.com
# Author:      Author Name
# Maintenance: Author Name
#
# ------------------------------------------------------------------------ #
#  Script description
#
#  Examples:
#      $ ./scriptName.sh -v
#  Adicionar exemplos práticos.
# ------------------------------------------------------------------------ #
# Changelog:
#
#   v1.0.0 02/11/2018, Author:
#       - Description of the changes.
# ------------------------------------------------------------------------ #
# Tested in:
#   GNU bash, version 3.2.57(1)-release (x86_64-apple-darwin18)
# ------------------------------------------------------------------------ #
# Thanks:
#
# 	List of thanks.
# ------------------------------------------------------------------------ #

# ------------------------------- VARIABLES ------------------------------ #

# ------------------------------------------------------------------------ #

# ------------------------------- TESTS ---------------------------------- #

# ------------------------------------------------------------------------ #

# ------------------------------- FUNCTIONS ------------------------------ #

# ------------------------------------------------------------------------ #

# ------------------------------- EXECUTION ------------------------------ #

# ------------------------------------------------------------------------ #
```

## Logs
## Loaders