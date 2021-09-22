themes=("black-opal" "regal" "nightshade" "trans" "enby")
if [ -z "$1" ] || [ "$1" = "-" ];
	then theme="${themes[RANDOM%${#themes[@]}]}";
	else theme=$1;
fi
kill `ps -aux | grep back4 | grep -v grep | awk '{ print $2 }'`

alacritty-theme change "${theme//-}"

image="$HOME/.config/wallpapers/$theme/$(ls ~/.config/wallpapers/$theme | shuf -n 1)";
echo $image
if [ "${image##*.}" = "gif" ];
	then back4 0.010 $image &
	else feh --bg-scale $image
fi

if [ "$2" = "i3" ];
	then switchTheme $theme ; i3-msg reload;

elif [ "$2" = "awesome" ];
	then awesome-client "local index = {}; for k,v in pairs(themes) do index[v] = k end; currentTheme = index[\"${theme}\"]"
fi 