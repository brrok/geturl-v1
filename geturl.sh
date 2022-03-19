#!/bin/bash
echo "alias geturl=\"/root/geturl/./geturl.sh\"" >> /root/.bashrc &> /dev/null          function url() { echo "https://web.archive.org/cdx/search/cdx?url=$1/*&output=txt&fl=original&collapse=urlkey&page"; }                                                          [ $# -ge 1 -a -f "$1" ] && input="$1" || input="-"
domins=$(timeout 1s cat $input)                                                         if ! [[ -z $domins ]]; then
        for line in ${domins}; do                                                                       curl $(url $line) 2> /dev/null ;done
   else                                                                                         if ! [[ -z $1 ]]; then
                curl $(url $1) 2> /dev/null                                                        else
                printf "\nusage: $0 example.com\n\n"                                            fi
fi
