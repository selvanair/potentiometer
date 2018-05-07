# IO Rodeo Potentiostat Shield

![alt text](https://bitbucket.org/iorodeo/potentiostat/raw/default/images/pstat_shield_img_0.JPG)

Hardware design, firmware and software for IO Rodeo's Potentiostat Shield.  


## Hardware

* Designed as a shield for  [teensy 3.2 development board](https://www.pjrc.com/teensy/teensy31.html).   
* 12-bit voltage output with four range settings:  +/- 1, 2, 5, 10V
* 16-bit current measurement with four  range settings: +/- 1, 10, 100, 1000 uA ranges
* Can be programmed over USB using the Arduino IDE ([teensyduino](https://www.pjrc.com/teensy/td_download.html)).  
* Expansion headers with DIO, analog inputs, UART, I2C, and SPI 
* [Schematic](https://bitbucket.org/iorodeo/potentiostat/downloads/potentiostat_shield_schematic_v0p1r2.pdf)

## Firmware

* Implements many standard voltammetric methods including: 
    - constant voltage, 
    - cyclic voltammetry, 
    - sinusoidal voltammetry,
    - linearsweep voltammetry, 
    - chronoamperometry, 
    - multistep. 
* API for control over USB/Serial using messages in JSON. 
* Easy to extend enabling users to add custom tests. 

## Libraries

* Python 
    - Documentation http://stuff.iorodeo.com/docs/potentiostat/  
* Javascript
    - Documentation (TODO)
* C++
    - Documentation (TODO)

## Software

TODO
