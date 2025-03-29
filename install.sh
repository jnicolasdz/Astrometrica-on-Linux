
link="http://iasc.cosmosearch.org/Content/Distributables/astrometrica-setup-v1.4.1.exe"
wine_source="https://dl.flathub.org/repo/appstream/io.github.fastrizwaan.WineZGUI.flatpakref"
version="${link##*/}"

echo "Downloading astrometrica..."
curl -O "$link"

echo "Downloading wine..."
curl -O "$wine_source"
wine_source="${wine_source##*/}"
echo "Installing wine..."
flatpak install $wine_source

echo "Install astrometrica in wine..."
wine $version
echo "Creating alias..."
echo "# Alias for Astrometrica" >> $HOME/.bashrc
echo "alias astrometrica='cd $HOME/.wine/dosdevices/c:/Astrometrica && wine cmd /c Astrometrica.bat && exit' " >> $HOME/.bashrc

echo "Astrometrica installed successfully..."
echo "Type astrometrica in terminal to start the program"
echo "Please restart your terminal to apply changes"

