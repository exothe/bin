if [[ $1 != 'pull' && $1 != 'push' ]]; then
    echo 'You need to specify whether to `pull` or `push`!'
    exit
fi

if [[ -v OBSIDIAN_VAULT && -v HOMESERVER_CLOUD_LOCATION ]]; then
    [[ $1 = 'push' ]] && rsync -vrltpu $OBSIDIAN_VAULT $HOMESERVER_CLOUD_LOCATION
    [[ $1 = 'pull' ]] && rsync -vrltpu $HOMESERVER_CLOUD_LOCATION/MainVault/ $OBSIDIAN_VAULT
else
    echo It seems like either the OBSIDIAN_VAULT or HOMESERVER_CLOUD_LOCATION env variable is not set. We cannot backup in that case.
fi

exit 0
