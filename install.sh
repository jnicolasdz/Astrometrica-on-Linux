
# Get astrometrica exe
# Get wine packages 
# install astrometrica in wine 
# create directory on user Astrometrica 
# under these dir, create script to start Astrometrica + Alias 

echo "Get in astrometrica set up exe"
link="http://iasc.cosmosearch.org/Content/Distributables/astrometrica-setup-v1.4.1.exe"
version="${link##*/}"
curl -O "$link"

echo "Download wine"
git clone https://gitlab.winehq.org/wine/wine.git
cd wine
./configure
make
make install

echo "Install astrometrica in wine"
wine $version
echo "# Alias for Astrometrica" >> $HOME/.bashrc
echo "alias astrometrica='cd $HOME/.wine/dosdevices/c:/Astrometrica && wine cmd /c Astrometrica.bat && exit' " >> $HOME/.bashrc


