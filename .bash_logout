# ~/.bash_logout: executed by bash(1) when login shell exits.

if [ -f "$HOME/.xsession-errors" ]; then
    rm -f "$HOME/.xsession-errors*"
fi

# fixes .goutputstream files polluting $HOME
rm -rf $HOME/.goutputstream-*

# when leaving the console clear the screen to increase privacy

if [ "$SHLVL" = 1 ]; then
    [ -x /usr/bin/clear_console ] && /usr/bin/clear_console -q
fi

# osx diagnostic resports
if [ -d $HOME/library/Logs/DiagnosticReports ]; then
    rm -rf $HOME/library/Logs/DiagnosticReports/* &>/dev/null
fi

BREW_CACHE=`brew --cache`
if [ -d $BREW_CACHE ];
    then
    rm -rf $BREW_CACHE/*
fi
