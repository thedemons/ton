#!/bin/sh
clang-format -verbose -style=file -i $(git ls-files '*.cpp' '*.h' '*.hpp' ':!*third?party/*')
