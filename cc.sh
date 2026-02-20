#!/usr/bin/env bash

# -------- styling --------
reset="$(tput sgr0)"
bold="$(tput bold)"

green="$(tput setaf 2)"
cyan="$(tput setaf 6)"
magenta="$(tput setaf 5)"
blue="$(tput setaf 6)"
yellow="$(tput setaf 3)"
white="$(tput setaf 7)"

INNER=82   # visible characters between the borders

top()   { printf "${blue}┌"; printf '─%.0s' $(seq 1 $INNER); printf "┐${reset}\n"; }
mid()   { printf "${blue}├"; printf '─%.0s' $(seq 1 $INNER); printf "┤${reset}\n"; }
bot()   { printf "${blue}└"; printf '─%.0s' $(seq 1 $INNER); printf "┘${reset}\n"; }
empty() { printf "${blue}│$(printf '%*s' $INNER '')│${reset}\n"; }

# Print a row: content is passed pre-coloured; visible_len is the printable width
row() {
  local content="$1"
  local visible_len="$2"   # number of visible characters in content
  local pad=$(( INNER - 1 - visible_len ))  # 1 for leading space
  printf "${cyan}│${reset} %s%*s${blue}│${reset}\n" "$content" "$pad" ""
}

# -------- header --------
read -r -d '' HEADER <<'EOF'
_____________________________________________________________/\\\________
 ____________________________________________________________\/\\\________
  ________________/\\\________________________________________\/\\\________
   _____/\\\\\\\\_\///___/\\\\\\\\\_____/\\/\\\\\\_____________\/\\\________
    ___/\\\//////___/\\\_\////////\\\___\/\\\////\\\____________\/\\\\\\\\\__
     __/\\\_________\/\\\___/\\\\\\\\\\__\/\\\__\//\\\___________\/\\\////\\\_
      _\//\\\________\/\\\__/\\\/////\\\__\/\\\___\/\\\___________\/\\\__\/\\\_
       __\///\\\\\\\\_\/\\\_\//\\\\\\\\/\\_\/\\\___\/\\\___________\/\\\\\\\\\__
        ____\////////__\///___\////////\//__\///____\///____________\/////////___
EOF

# -------- render --------
clear 2>/dev/null || true

top
empty

while IFS= read -r line; do
  # Pad/trim to exactly INNER-1 visible chars (leave 1 for leading space in row())
  printf "${cyan}│${reset} ${magenta}${bold}%-*.*s${reset}${blue}│${reset}\n" \
    $((INNER - 1)) $((INNER - 1)) "$line"
done <<< "$HEADER"

empty
row "                 ${bold}${white}final year compsci @ ucd,${reset} ${yellow}incoming stripe swe${reset}" 62
mid
empty

# row "content" visible_char_count
row "  ${bold}${white}email:${reset}    ${green}cianboyle2004@gmail.com${reset}" 35
row "  ${bold}${white}web:${reset}      ${cyan}https://cianb.tech/${reset}"       31
row "  ${bold}${white}github:${reset}   ${magenta}github.com/cianboyle04${reset}" 34
row "  ${bold}${white}linkedin:${reset} ${cyan}linkedin.com/in/cianboyle04${reset}" 39

empty
mid
empty

row "  ${yellow}${bold}curl https://cianb.tech/cc/${reset}" 29

empty
bot