[[ $fpath = *nathan* ]] || fpath=($HOME/.zsh/functions $fpath)
autoload ${fpath[1]}/*(:t)

if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi
