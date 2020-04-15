#!/bin/bash

LN=/usr/bin/ln
PWD=$(/usr/bin/pwd)

${LN} -s ${PWD}/vimrc ${HOME}/.vimrc
${LN} -s ${PWD}/XDefaults ${HOME}/.Xdefaults
${LN} -s ${PWD}/vim ${HOME}/.vim
${LN} -s ${PWD}/i3 ${HOME}/.config/i3
