dir="$HOME/.config/rofi/greenclip"
theme='style'

rofi \
    -modi "clipboard:greenclip print" \
	-show clipboard \
    -theme ${dir}/${theme}.rasi
