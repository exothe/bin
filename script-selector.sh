SCRIPTS=(
    "wl-color-picker"
    "edit-image-in-clipboard.sh"
    "open_config.sh"
    "record-screen-as-gif-new-terminal.sh"
)

SCRIPT=$(printf '%s\n' ${SCRIPTS[@]} | wofi --dmenu)
if [ ! -z $SCRIPT ]; then
    exec $SCRIPT
fi
