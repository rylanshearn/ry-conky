# ry-conky
Rylan Shearn's conky theme. This is a modification of the orange theme, enabling CPU temp and usage information for eight cores to be displayed, and Torque user job submission information for users of the LBBE/PRABI computer cluster. This works best with a white/light colour desktop wallpaper, but you can modify the colours to suit.

![screenshot](http://s15.postimg.org/f81xrofgb/Screenshot_from_2016_04_02_12_00_22.png)

## Requirements
- A PC with eight CPU cores (you will get errors if you have less than eight CPU cores)
- a linux distribution
- conky installed; As of 2016.04.02, this is not functioning with the latest conky release (v1.10.0) as this seems to be full of bugs. Use conky v1.9.0 while developers sort things out (installation instructions below).

## Installation instructions
### Linux
Ubuntu 
open a terminal with `ctrl+alt+t` and enter the following, making sure to replace `<clusterusername>` with your actual cluster username (if you are actually with LBBE/PRABI) and replace `<unixuser-id>` with your actual unix user-id:

```sh
sudo apt-get install curl lm-sensors hddtemp #install system monitoring tools
cd ~/Downloads #change to downloads directory
wget http://security.ubuntu.com/ubuntu/pool/universe/c/conky/conky-std_1.9.0-4_amd64.deb #download conky
sudo apt-get install gdebi-core #enables installation of dependencies
sudo gdebi conky-std_1.9.0-4_amd64.deb #install conky with dependencies
sudo apt-mark hold conky-std #prevent updates to conky
sudo apt-get install git #install git if you do not have it
git clone https://github.com/rylanshearn/ry-conky #clone this project
cd ry-conky #move to project directory
mkdir ~/.conky #make directory for your conky files
cp * ~/.conky #copy project files to conky directory
cd ~/.conky #move to conky directory
sed -i -e 's/shearn/<clusterusername>/g' feedsrc_ry #replace my name with your cluster username
./conky_start.sh #test conky configuration - you should see it after a few minutes
sed -i -e 's/default/<unixuser-id>/g' conky.desktop #replace default with your unix user-id
mkdir ~/.config/autostart #make autostart dir if not there already
cp conky.desktop ~/.config/autostart/ #set to run script at startup
```

### Other operating systems
Conky is supported on other linux operating systems, for more info check the [website](http://conky.sourceforge.net/documentation.html).

## Acknowledgements
This template is based around the [seamod](http://seajey.deviantart.com/art/Conky-Seamod-v0-1-283461046), [orange](http://gnome-look.org/content/show.php?content=137503&forumpage=0) and [lunatico](http://gnome-look.org/content/show.php?content=142884) themes.
