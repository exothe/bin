if (wl-paste -l | grep '^image'); then
    # we have an image in our clipboard
    wl-paste | swappy -f - -o -
else
    # if the clipboard contains a path to a file, we try using that file
    if [[ -a $(wl-paste) ]]; then
        swappy -f $(wl-paste) -o -
    fi
fi

