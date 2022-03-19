function url() { echo "https://web.archive.org/cdx/search/cdx?url=$1/*&output=txt&fl=original&collapse=urlkey&page"; }
curl $(url $1)
