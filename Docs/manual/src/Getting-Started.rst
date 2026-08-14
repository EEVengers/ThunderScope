.. _Getting-Started:

Getting Started
===============

Follow the instructions below to download and install the driver and software required to use ThunderScope.

.. tab:: Ubuntu

    Install the dependances

    .. code::

        $ sudo apt install build-essential git cmake pkgconf libgtkmm-3.0-dev \
        libcairomm-1.0-dev libsigc++-2.0-dev libyaml-cpp-dev catch2 libglfw3-dev curl \
        xzip libhidapi-dev libvulkan-dev glslang-dev glslang-tools spirv-tools glslc

    Install .NET 10 SDK by following their `install instructions <https://dotnet.microsoft.com/en-us/download/dotnet/10.0>`_     
    
    Clone the ThunderScope repo and navigate to the Software directory

    .. code::

        git clone --depth 1 https://github.com/EEVengers/ThunderScope.git
        cd ThunderScope/Software

.. tab:: Windows

    Run a powershell prompt and install git if needed:

    .. code::

        $ winget install --id Git.Git --source winget
    
    Clone the ThunderScope repo and then navigate to the Software directory.

    .. code::

        $ git clone --depth 1 https://github.com/EEVengers/ThunderScope.git
        $ cd ThunderScope\Software\

.. tab:: macOS
    
    .. todo::

    This section needs to be written.

Driver Install
--------------

.. tab:: Ubuntu
    
    Check if secure boot is enabled

    .. code::

        $ mokutil --sb-state

    If the command returns "SecureBoot enabled", you can either disable secure boot in your BIOS settings and proceed, or run the following commands to generate an MOK key so that DKMS can sign the driver for you.

    .. code::
        
        $ sudo update-secureboot-policy --new-key
        $ sudo update-secureboot-policy --enroll-key

    Reboot your computer. At boot you'll see the MOK Manager EFI interface. Hit any key to enter the menu, select "Enroll MOK", "Continue", then "Yes". After this, enter the password you set in the previous step and then select the "Reboot" option to complete the MOK key install.

    Pull the driver repo and install it with DKMS, then install the udev rules file

    .. code::

        git clone https://github.com/EEVengers/ts_litex_driver_linux.git
        cd ts_litex_driver_linux
        sudo make dkms
        sudo make udev-install


.. tab:: Windows

    .. todo::

    This section needs to be written.

.. tab:: macOS
    
    .. todo::

    This section needs to be written.

Software install
----------------

.. tab:: Ubuntu
    
    Run the install script, using the build argument if you wish to build from source
    
    .. code::

        $ ./install_ts_software.sh # pulls binary releases
        $ ./install_ts_software.sh build # builds from source   
 
    This should create a launcher script in the directory, this will open an ngscopeclient session that is pre-connected to the TS.NET.Engine triggering software and ready to make masurements.

    .. code::

        $ ./ThunderScope.sh    

.. tab:: Windows

    .. todo::

    This section needs to be written.

.. tab:: macOS
    
    .. todo::

    This section needs to be written.
