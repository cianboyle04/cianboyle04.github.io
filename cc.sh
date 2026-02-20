#!/usr/bin/env bash

bold="$(tput bold)"
dim="$(tput dim)"
reset="$(tput sgr0)"
yellow="$(tput setaf 3)"
cyan="$(tput setaf 6)"

cat <<EOF

${dim}╭──────────────────────────────────────────────────────────────╮
${dim}│                                                              │
${dim}│${reset}   ${bold}cian b${reset} — final year compsci student              ${dim}│
${dim}│${reset}   university college dublin                           ${dim}│
${dim}│                                                              │
${dim}│${reset}   ${bold}web:${reset}      ${cyan}https://cianb.tech${reset}                    ${dim}│
${dim}│${reset}   ${bold}email:${reset}    cianboyle2004@gmail.com               ${dim}│
${dim}│${reset}   ${bold}github:${reset}   github.com/cianboyle04                ${dim}│
${dim}│${reset}   ${bold}linkedin:${reset} linkedin.com/in/cianboyle04           ${dim}│
${dim}│                                                              │
${dim}│${reset}   ${yellow}curl https://cianb.tech/cc/${reset}                          ${dim}│
${dim}│                                                              │
${dim}╰──────────────────────────────────────────────────────────────╯

EOF