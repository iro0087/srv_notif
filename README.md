# srv_notif
Get the notification when your server is fully operational

## Requirements

- **python3**

- **playsound** (python lib)

- **notify-send** (should be available in your system repository: pacman, aur, apt...)

- **dunst** is required to run notify-send ,you can start it when your computer is booting (.xinitrc for stratx ...)

## Usage

- put all the server ip in server_list.txt

- **bash init.sh** (create all the scripts needed for each server)

- **bash run.sh** run all the script created to get if each server is available

- **bash stop.sh** stop all scripts

## Advices 

- create a key binding using xbindkeys or other to run and stop the scripts as you wish 
