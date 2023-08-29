SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

sh $SCRIPT_DIR/arch/packages.sh
sh $SCRIPT_DIR/sync.sh
