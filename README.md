Scripts for the WaveShare RPi Relay Board
=========================================

This project supplies scripts to control the WaveShare RPi Relay Board on a
Raspberry Pi 3 B+ running Debian.

GPIOs are board specific. You will have to adjust the GPIO numbers when not
running on a Raspberry Pi 3 B+. Not observing this may result in data loss or
damage to the board.

Installation
------------

To install the scripts use

    sudo make install

A group piwsrb is created that has access to the relay board. A systemd service
is implemented that that opens the relevant GPIOs for write access by the group.

You can assign your user to the group with

    sudo adduser $USER piwsrb

The authorization will become effective with the next logon.

Usage
-----

Relay 1 can be switch on and off with

    relay-card.gpio on
    relay-card.gpio off

Relay 2 can be switched on for one second with

    relay-card.gpio reset

Relay 3 is currently not used.

License (BSD-2-Clause)
----------------------

Copyright 2019, Heinrich Schuchardt \<xypron.glpk@gmx.de>

Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:

* Redistributions of source code must retain the above copyright notice, this
  list of conditions and the following disclaimer.

* Redistributions in binary form must reproduce the above copyright notice,
  this list of conditions and the following disclaimer in the documentation
  and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

Links
-----

* [WaveShare Product Page](https://www.waveshare.com/wiki/RPi\_Relay\_Board)
