# electron-kiosk-uc20

A simple Electron Kiosk app that acts as a fullscreen browser
to be used on Ubuntu Core 20 systems with the ubuntu-frame display
server.

## Installing

Install an Ubuntu Core 20 image on your device and configure network
and user, so you can ssh into the system.

First install ubuntu-frame with

    snap install ubuntu-frame
    
Now install this snap with

    snap install electron-kiosk-uc20
    
To quieten log spam please connect the interfaces below

    snap connect electron-kiosk-uc20:hardware-observe
    snap connect electron-kiosk-uc20:network-observe
    snap connect electron-kiosk-uc20:process-control
    
## Configuring

  The app comes with a configuarble url option that allows you to 
  pick which page is shown. To use this feature simply call

      snap set electron-kiosk-uc20 url=https://www.ubuntu.com
      
  The app will restart with the new URL 
      
## Building

Just clone this tree, make sure to have `snapcraft` installed, cd into
the cloned tree and just run

    snapcraft
    
This will produce a snap package that you can install with the --dangerous 
option of the ```snap install``` command.
