.. _Getting-Started:

Getting Started
===============

Follow the instructions below to download and install the driver and software required to use ThunderScope.

Prerequisite Steps
------------------

.. tab:: Ubuntu

    Install the dependencies

    .. code::

        $ sudo apt install build-essential git dkms

    
    Clone the ThunderScope repo and navigate to the Software directory

    .. code::

        git clone --depth 1 https://github.com/EEVengers/ThunderScope.git
        cd ThunderScope/Software

.. tab:: Windows

    There are no prerequisites to install the ThunderScope software on Windows

.. tab:: macOS
    
    .. todo::

    This section needs to be written.

Driver Install
--------------

.. tab:: Linux
    
    Check if secure boot is enabled

    .. code::

        $ mokutil --sb-state

    If the command returns "SecureBoot enabled", you can either disable secure boot in your BIOS settings, or run one of the following commands to generate an MOK key so that DKMS can sign the driver for you.

    .. code::
        
        $ sudo mokutil --import /var/lib/dkms/mok.der
        $ sudo mokutil --import /var/lib/shim-signed/mok/MOK.der # on Ubuntu / Ubuntu-based distros

    Reboot your computer. At boot you'll see the MOK Manager EFI interface. Hit any key to enter the menu, select "Enroll MOK", "Continue", then "Yes". After this, enter the password you set in the previous step and then select the "Reboot" option to complete the MOK key install.

    Once you have disabled secure boot or installed your own MOK key, you can proceed with building and installing the driver.
    Pull the driver repo, install the driver with DKMS and then install the udev rules file.

    .. code::

        git clone https://github.com/EEVengers/ts_litex_driver_linux.git
        cd ts_litex_driver_linux
        sudo make dkms
        sudo make udev-install


.. tab:: Windows

    .. todo::

    Download and run the `ThunderScope driver installer <https://github.com/EEVengers/ts_litex_driver_win/releases/download/v1.0.0/ThunderScope-driver-win-x64-v1.0.0.msi>`_, 
    hit "Next" when prompted by the installer, select "Yes" on the Windows UAC prompt, 
    then click "Finish" on the installer.

.. tab:: macOS
    
    .. todo::

    This section needs to be written.

Software install
----------------

.. tab:: Linux
    
    Run the install script, using the build argument if you wish to build from source
    
    .. code::
        
        $ cd ..
        $ ./ThunderScope.sh
 
    Download and install an ngscopeclient package suitable for your distro from the `latest tagged release <https://github.com/ngscopeclient/scopehal-apps/releases/tag/v0.2.2>`_
    
    The install script created a launcher script in the same directory, this will open an ngscopeclient session that is pre-connected to the TS.NET.Engine triggering software.

    .. code::

        $ ./ThunderScope.sh    

.. tab:: Windows

    Download and run the `ThunderScope software installer <https://github.com/EEVengers/ts-windows-installer/releases/download/v1.0.0/ThunderScope-2026.08-win-x64.msi>`_, 
    hit "Next" when prompted by the installer, then click "Finish" on the installer. 
    
    Now launch the ThunderScope application from the desktop shortcut or start menu.

.. tab:: macOS
    
    .. todo::

    This section needs to be written.


You are now ready to start :ref:`using ThunderScope! <Using-ThunderScope>` 
