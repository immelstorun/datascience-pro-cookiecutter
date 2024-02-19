# https://gist.github.com/mihow/9c7f559807069a03e302605691f85572
alias renew="set -o allexport && source $HOME/.env set && set +o allexport"


# https://stackoverflow.com/questions/10969953/how-to-output-a-multiline-string-in-bash
__usage="
Shortcuts:
    renew:  Reloads the .env file
    info:   Shows this message
"

alias info="echo \"$__usage\""

renew
info
poetry shell