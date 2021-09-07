#!/bin/bash
IFS=","
echo "Script name is \$0: $0"
echo "First argument is \$1: $1"
echo "Second argument is \$2: $2"
echo "All arguments display using \$@: $@"
echo "All arguments display using \$*: $*"
echo "Number of arguments display using \$#: $#"
