#!/bin/sh
find -regextype posix-egrep -iregex ".*\.(hpp|cpp|h)" -and -not -path "*/third?party/*" -and -not -path "./cmake-build-*" | xargs -n 1 clang-format -verbose -style=file -i
