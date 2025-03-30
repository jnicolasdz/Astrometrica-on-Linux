# !/bin/bash
#                   /* ---- https://github.com/jnicolasdz ---- */                 #
# This script install astrometrica in wine and create an alias to started via CLI #
#                                 MIT License
# Copyright (c) 2025 Juan Nicolas Diaz Salamanca
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

link="http://iasc.cosmosearch.org/Content/Distributables/astrometrica-setup-v1.4.1.exe"
wine_source="https://dl.flathub.org/repo/appstream/io.github.fastrizwaan.WineZGUI.flatpakref"
version="${link##*/}"

echo "Downloading astrometrica..."
curl -O "$link"

echo "Install astrometrica in wine..."
wine $version
echo "Creating alias..."
echo "# Alias for Astrometrica" >> $HOME/.bashrc
echo "alias astrometrica='cd $HOME/.wine/dosdevices/c:/Astrometrica && wine cmd /c Astrometrica.bat && exit' " >> $HOME/.bashrc

echo "Astrometrica installed successfully..."
echo "Type astrometrica in terminal to start the program"
echo "Please restart your terminal to apply changes"
