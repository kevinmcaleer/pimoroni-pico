NAME=$1
BOARD=$2
FIXUP_DIR=$3
MPY_DIR=`pwd`

echo "Fixup: $NAME $BOARD $MPY_DIR"

if [[ ! -f "$MPY_DIR/../../lib/pico-sdk/src/boards/include/boards/pimoroni_$NAME.h" ]]; then
    echo "Missing Pico SDK board .h. Copying: $FIXUP_DIR/$NAME/pimoroni_$NAME.h to $MPY_DIR/../../lib/pico-sdk/src/boards/include/boards/pimoroni_$NAME.h"
    cp "$FIXUP_DIR/$NAME/pimoroni_$NAME.h" "$MPY_DIR/../../lib/pico-sdk/src/boards/include/boards/pimoroni_$NAME.h"
fi

if [[ ! -d "$MPY_DIR/boards/$BOARD" ]]; then
    echo "Missing board dir. Copying: $FIXUP_DIR/$NAME/$BOARD/ to $MPY_DIR/boards/"
    cp -r "$FIXUP_DIR/$NAME/$BOARD/" "$MPY_DIR/boards/"
fi