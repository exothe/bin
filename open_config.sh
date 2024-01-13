DIR=$(echo $CONFIG_PATH | sed 's/:/\n/g' | wofi --dmenu)

if [ ! -z $DIR ]; then
    alacritty -e $EDITOR $DIR
fi
