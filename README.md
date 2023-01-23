# **My first rice**

Hello!


This is a rice I recently made, and it's my first one! To us ethis rice, just drag these folders into your .config, though make sure you have everything installed, and that you have provided the openweather-script an API key!

## Dependencies needed!

+ **FontAwesome5**
+ **polybar**
+ **feh**
+ **i3-wm**
+ **rofi**
+ **picom**
+ **Python (3.x)**
+ **Python dbus module**
+ **playerctl**
+ **pacman-contrib**
+ **[weather-icons](https://github.com/erikflowers/weather-icons)** or FontAwesome 5 **PRO**
+ **jq**
+ **[OpenWeatherMap Key](https://openweathermap.org/appid)**
+ **xorg-xinput**
+ **awk**
+ **coreutils (rm, stdbuf, mktemp, stat, you probably have this)**
+ **[speedtest-cli](https://github.com/sivel/speedtest-cli/)**
+ **firefox (probably comes preinstalled!)**

A command to install most dependencies: 
```
  sudo yay -S ttf-font-awesome-5 polybar feh i3 rofi picom dbus-python playerctl jq xorg-xinput awk speedtest-cli
```

I left out some dependencies since you might already have these installed, or they can't be installed through a package manager.


Packages left to install:

+ **Python (3.x)**
+ **pacman-contrib**
+ **coreutils (rm, stdbuf, mktemp, stat, you probably have this)**
+ **firefox (probably comes preinstalled!)**

This dependency need's to be installed manually:

+ **[weather-icons](https://github.com/erikflowers/weather-icons)** or FontAwesome 5 **PRO**

You can do this by copying the ttf file to your /usr/share/fonts/TTF folder!

The "dependency" left is:
+ **[OpenWeatherMap Key](https://openweathermap.org/appid)**

The "dependency" is actually an API key. You can get one from https://openweathermap.org/appid

When you got your API key, open up the script called "openwathermap_detailed.sh" (or something like that) and fill in your API key and city.


# **IMPORTANT**
Remember to chmod **ALL THE SCRIPTS**!

# Preview

![Image](preview.png)
