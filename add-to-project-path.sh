[ -z $1 ] && DIR='.' || DIR=$1
DIR=$(realpath $DIR)
echo "Adding $DIR to project path"

TMP_NAME="/tmp/add-to-project-dir-$(uuidgen)"

awk "{
    if (/PROJECT_PATH/)
        print \$0 \":$DIR\"
    else
        print \$0
}" ~/.config/zsh/zsh-variables > TMP_NAME && mv TMP_NAME ~/.config/zsh/zsh-variables
