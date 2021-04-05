#!/usr/bin/env bash
# imgterest.sh
help='
imgterest.sh

Generate a pinterest-style page for offline viewing from a folder of images.

Usage:
    imgterest.sh [ -h | --help ]
    imgterest.sh <directory>

    Where "<directory>" is a folder containing images.
'

imgterest.collage () { # Take images in $1 and log html collage to term.
    ls "${directory}" | \
        grep -E '\.(jpg|gif|png)' | \
        sed "s/.*/<a href='.\/&'><img src='.\/&'width='auto' height='250px'<\/a>/"
}


imgterest.main () { # Generates page of images at "${1}/index.html"
    local directory="$1"
    imgterest.collage $directory > "${directory}/index.html"
}


main ()
{
    # Check for help flags
    help_check=$( echo "$*" | tr ' ' '\n' | grep --ignore-case '^\(-\|--\)\(h\|help\)$' )

    # Process stdin and command arguments
    if [ "$help_check" != '' ] ; then
        # Log help
        echo "$help"
        exit 0
    # Default behaviour
    else
        imgterest.main "$@"
    fi
}


[[ "${BASH_SOURCE[0]}" == "${0}" ]] && main "$@"

