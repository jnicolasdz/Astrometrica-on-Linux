
# Get astrometrica exe
# Get wine packages 
# install astrometrica in wine 
# create directory on user Astrometrica 
# under these dir, create script to start Astrometrica + Alias 

echo "Get in astrometrica set up exe"
source="http://iasc.cosmosearch.org/Content/Distributables/astrometrica-setup-v1.4.1.exe"
version="${source##*/}"
curl -O "$source"


echo "Download wine"
git clone https://gitlab.winehq.org/wine/wine.git
cd wine
./configure
make
make install

echo "Install astrometrica in wine"
wine $version

