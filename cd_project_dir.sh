DIR=$(echo $PROJECT_PATH | sed 's/:/\n/g' | fzf)

[ ! -z $DIR ] && cd $DIR
