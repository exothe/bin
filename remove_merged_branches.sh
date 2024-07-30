branch=$(git rev-parse --abbrev-ref HEAD)
if [ $branch != "master" ]; then
    echo -n "You are not on master. Do you REALLY want to delete all branches not merged into $branch? [y/n]: "
    read -r ans
    if [ $ans != "y" ]; then
        exit
    fi
fi
git branch --merged | grep -v "\*" | xargs -n 1 git branch -d
