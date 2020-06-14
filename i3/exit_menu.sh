#!/bin/bash
while [ "$select" != "No" -a "$select" != "Yes" ]; do
    select=$(echo -e 'Yes\nNo' | dmenu -nb '#2e3440' -nf '#d8dee9' -sb '#88c0d0' -sf '#2e3440' -fn 'Noto-10.5' -i -p "You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.")
    [ -z "$select" ] && exit 0
done
[ "$select" = "No" ] && exit 0
i3-msg exit
