themes=("black-opal" "regal" "nightshade" "trans" "enby")
if [ -z "$1" ];
	then theme="${themes[RANDOM%${#themes[@]}]}";
	else theme=$1;
fi


switchTheme $theme
image="$(ls ~/.config/wallpapers/$theme | shuf -n 1)";
feh --bg-scale $image

i3-msg reload
