#!/bin/bash

LN=/usr/bin/ln
PWD=$(/usr/bin/pwd)

${LN} -s ${PWD}/vimrc ${HOME}/.vimrc
${LN} -s ${PWD}/Xdefaults ${HOME}/.Xdefaults
${LN} -s ${PWD}/vim ${HOME}/.vim
if [ -e ${HOME}/.config/i3/config ]
then
    mv ${HOME}/.config/i3/config ${HOME}/.config/i3/config.old
fi
${LN} -s ${PWD}/i3/config ${HOME}/.config/i3/config
