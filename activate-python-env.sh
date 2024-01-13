DIR=$(ls $PYTHON_ENV_PATH | fzf)

if [ ! -z $DIR ]; then
    source "$PYTHON_ENV_PATH/$DIR/bin/activate"
fi
