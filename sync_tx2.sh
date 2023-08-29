#!/bin/sh

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

sh $SCRIPT_DIR/tx2/packages.sh
sh $SCRIPT_DIR/tx2/fonts.sh
sh $SCRIPT_DIR/tx2/emacs.sh
sh $SCRIPT_DIR/sync.sh
