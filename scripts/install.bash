
mkdir -p ~/.config/wallpapers/
sudo cp switchTheme.bash /usr/local/bin/switchTheme
sudo cp changeColor.bash /usr/local/bin/changeColor
cp -r ../wallpapers/* ~/.config/wallpapers
cp -r ../configs/alacritty/* ~/.config/alacritty
cp -r ../configs/awesome/* ~/.config/awesome
cp -r ../configs/i3/* ~/.config/i3
cp -r ../configs/polybar/* ~/.config/polybar
cp -r ../configs/rofi/* ~/.config/rofi
cp ../configs/starship/starship.toml ~/.config/starship.toml
