# see /usr/share/doc/bash-color-prompt/README.md

## to truncate \w dirpath set:
# PROMPT_DIRTRIM=3

# only set for color terminals and if PS1 unchanged from bash or fedora defaults
if [ '(' "$PS1" = "[\u@\h \W]\\$ " -o "$PS1" = "\\s-\\v\\\$ " ')' -a "${TERM: -5}" = "color" -o "${TERM}" = "linux" -o -n "${prompt_color_force}" ]; then

    PROMPT_COLOR="${PROMPT_COLOR:-32}"
    PROMPT_USERHOST="${PROMPT_USERHOST:-\u@\h}"
    PROMPT_SEPARATOR="${PROMPT_SEPARATOR:-:}"
    PROMPT_DIRECTORY="${PROMPT_DIRECTORY:-\w}"
    colorpre='\[\e['
    colorsuf='m\]'
    colorreset="${colorpre}0${colorsuf}"
    PS1='${PROMPT_START@P}'"${colorpre}"'${PROMPT_COLOR}'"${colorsuf}"'${PROMPT_USERHOST@P}'"${colorreset}"'${PROMPT_SEPARATOR@P}'"${colorpre}"'${PROMPT_DIR_COLOR:-${PROMPT_COLOR}}'"${colorsuf}"'${PROMPT_DIRECTORY@P}'"${colorreset}"'${PROMPT_END@P}\$'"${colorreset} "

    prompt_default() {
        PROMPT_COLOR="$1"
        PROMPT_DIR_COLOR="$2"
        PROMPT_SEPARATOR=':'
        PROMPT_DIRECTORY='\w'
        PROMPT_START=''
        PROMPT_END=''
    }

    prompt_traditional() {
        PROMPT_COLOR="${1:-0}"
        PROMPT_DIR_COLOR="$2"
        PROMPT_SEPARATOR=' '
        PROMPT_DIRECTORY='\W'
        PROMPT_START='['
        PROMPT_END=']'
    }

    prompt_default_os() {
        eval $(grep ANSI_COLOR /etc/os-release)
        PROMPT_COLOR="$ANSI_COLOR"
        PROMPT_DIR_COLOR="$1"
        PROMPT_SEPARATOR=':'
        PROMPT_DIRECTORY='\w'
        PROMPT_START=''
        PROMPT_END=''
    }

fi
