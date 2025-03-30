<h1 align='center'>Astrometrica-on-Linux</h1>

<p align='center'>
<img src="./images/astrometrica-logo.jpg" width='250' height='150' alt="Astrometrica Logo" />
<img src="./images/winehq.png" width='250' height='150' alt="WineHq Logo" />
</p>

Astrometrica is a software program used for astronometrical data reduction, specially designed for
astronomical data reduction and provided by [IASC](https://iasc.cosmosearch.org/)
However, it does not run in linux-based operating system. This project provided a way to run Astrometrica on linux,
using wineHQ.

## Requirements

- Curl : it's used in command lines or scripts to transfer data from a web. 
- Wine : it's a compatibility layer that allows Windows applications to run on Unix-like operating systems, such as Linux and macOS.

Curl is typically already installed on the average linux distributions. However, please do check if it is 
correctly installed in your system. On other site, WineHq must be downloading via package management, for more
information, [click here](https://gitlab.winehq.org/wine/wine/-/wikis/Download)

## How to check it

```bash
  curl --version
  wine --version 
 ```

## How to download via script

On a terminal, go to the script **install.sh** directory parent and add permission to execute :

```bash
  chmod +x install.sh
 ```
On the same directory, execute the script :

```bash
  ./install.sh
 ```
Once the script has ended, Astrometrica can be used via CLI :

```bash
  astrometrica
 ```

Or to run it manually, go to **~/.wine/dosdevices/c:/Astrometrica** and type :

```bash
  wine cmd /c Astrometrica.bat
 ```

## How to download it manually

if the script present any problem or you prefer to download it by yourself, follow the next steps:

### 1. Download requiremnts:
 
- WineHQ : You can downloaded follow the instructed steps, depending of your distribution via official page [here](https://gitlab.winehq.org/wine/wine/-/wikis/Download)
- Astrometrica-set-up: Downloaded by clicking [here](http://iasc.cosmosearch.org/Content/Distributables/astrometrica-setup-v1.4.1.exe)

### 2. Execute astrometrica inner wine :

Once you verify all the package are correctly downloaded go to the directory which you downloaded wine, type :

```bash
  wine astrometrica-set-up-[version].exe
 ```

### 3. Run astrometrica via WineHQ:
   
Finally, Astrometrica is correctly execute using wine, to run it type :
```bash
   cd ~/.wine/dosdevices/c:/Astrometrica
   wine cmd /c Astrometrica.bat
 ```




