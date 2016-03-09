Photonic3D Image Builder (Based on OctoPi)
==========================================

Where to get it?
----------------

The latest image based on the current stable build can be dowloaded from:
 http://s3-us-west-2.amazonaws.com/photonic3d/photonic-image.zip

How to use it?
--------------

#. Unzip the image and install it to an sd card `like any other Raspberry Pi image <https://www.raspberrypi.org/documentation/installation/installing-images/README.md>`_
#. Configure your WiFi by editing ``octopi-network.txt`` on the root of the flashed card when using it like a thumb drive
#. Boot the Pi from the card
#. Log into your Pi via SSH (it is located at ``photonic3d.local`` `if your computer supports bonjour <https://learn.adafruit.com/bonjour-zeroconf-networking-for-windows-and-linux/overview>`_ or the IP address assigned by your router), default username is "pi", default password is "raspberry", change the password using the ``passwd`` command and expand the filesystem of the SD card through the corresponding option when running ``sudo raspi-config``.

The Photonic3D web UI is located at `http://photonic3d.local:9091 <http://photonic3d.local:9091>`

Requirements
~~~~~~~~~~~~

#. `qemu-arm-static <http://packages.debian.org/sid/qemu-user-static>`_
#. Downloaded `Raspbian <http://www.raspbian.org/>`_ image.
#. root privileges for chroot
#. Bash
#. realpath
#. sudo (the script itself calls it, running as root without sudo won't work)

Build on Linux
~~~~~~~~~~~~~~

Build requires about 2.5 GB of free space available.

Start by cloning this repository.

Then issue the following commands::

    sudo apt-get install gawk util-linux realpath git qemu-user-static
    cd octopi/src/image
    curl -J -O -L  http://downloads.raspberrypi.org/raspbian_lite_latest
    cd ..
    sudo modprobe loop
    sudo bash -x ./build photonic3d

Modifications to OctoPi
~~~~~~~~~~~~~~~~~~~~~~~
Since Photonic3D is mostly self contained, there are some modifications to the core scripts to allow for all generation of OctoPrint-specific functionality to be disabled by configuration. All of the Photonic3D content added to the image is contained within the photonic3d variant.
