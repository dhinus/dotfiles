xset r rate 250 80

setxkbmap -layout us -variant altgr-intl

synclient TapButton3=2
synclient TapButton2=3
synclient VertTwoFingerScroll=1
synclient HorizTwoFingerScroll=1
synclient VertScrollDelta=-50
synclient HorizScrollDelta=-50

xrdb -merge ~/.Xresources

exec i3
