# Astrometrica-on-Linux

Astrometrica is a software program used for astronometrical data reduction, specially designed for
astronomical data reduction and provided by IASC ()
- http://iasc.cosmosearch.org/home/astrometrica

However, it does not run in linux-based operating system. This project provided a way to run Astrometrica on linux,
using wineHQ.

## Requirements

```bash
 Curl : is used in command lines or scripts to transfer data. 
 Flatpak : Package management for multiples linux distributions.
 ```

Curl and Flatpak is typically already installed on the average linux distributions. However, please do check if it is 
correctly installed in your system. However, flatpak is not available for all linux distribution, [check here](https://flatpak.org/setup/) if
your distribution is compatible with flatpak. if it do not the case, do the manually instalation.

### How to check it

```bash
 $ curl --version 
 ```
if it is not installed, depending on your distributions family package, download it

### How to use it

On a terminal, go to the script __install.sh__ directory parent and add permission to execute :

```bash
 $ chmod +x install.sh
 ```
On the same directory, execute the script :

```bash
 $ ./install.sh
 ```
Once the script has ended, Astrometrica can be used via CLI :

```bash
 $ astrometrica
 ```

Or to run it manually, go to __~/.wine/dosdevices/c:/Astrometrica__ and type :

```bash
 $ wine cmd /c Astrometrica.bat
 ```

### How to download it manually

if the script present any problem or you prefer to download it by yourself, follow the next steps:

1. Download requiremnts:
 
- WineHQ : You can downloaded follow the instructed steps, depending of your distribution via official page [here](https://gitlab.winehq.org/wine/wine/-/wikis/Download)
- Astrometrica-set-up: Downloaded by clicking [here](http://iasc.cosmosearch.org/Content/Distributables/astrometrica-setup-v1.4.1.exe)

2. Execute astrometrica inner wine :

Once you verify all the package are correctlydownloaded go to the directory which you downloaded wine, type :

```bash
 $ wine astrometrica-set-up-[version].exe
 ```
3. Run astrometrica via WineHQ:
   
Finally, Astrometrica is correctly execute using wine, to run it type :
```bash
 $ cd ~/.wine/dosdevices/c:/Astrometrica
 $ wine cmd /c Astrometrica.bat
 ```




