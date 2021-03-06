. "$HOME/.profile"
. "$HOME/.coordinates"

export SAVEHIST=$HISTSIZE
export HISTFILESIZE=$HISTSIZE
export HISTCONTROL=ignoreboth:erasedups

export PATH="$XDG_BIN_DIR:$HOME/.local/bin:$GOPATH/bin:$(ruby -rubygems -e 'puts Gem.user_dir')/bin:$PATH"

if [ -z "$DISPLAY" -a $XDG_VTNR -eq 1 ] ; then
    startx -- vt08
else
    . "$HOME/.bashrc"
fi

# vim: ft=sh
