# CE C Programming Toolchain/SDK (BOS)
The CE C Software Development Kit incorporates a wide variety of tools and documentation in order to build programs in C natively for the TI-84 Plus CE / TI-83 Premium CE calculators series.

## Important Note
This toolchain requires the standard CE C toolchain to be installed.
This is the *BOS* toolchain, and is not for use with calculators running TI-OS.
Additionally, the examples folder has not been entirely reconfigured to work with this toolchain.

## Installation
Copy the `bos` folder into your CEdev directory.

## Getting Started
See `makefile.bos` for makefile structure for use with this toolchain.
The [header documentation](https://ce-programming.github.io/toolchain/files.html) will let you know about the available functions.

## Sending binaries
Currently there's two ways to send binaries to BOS.
Putting the file on a FAT32-formatted USB drive, connecting it to the calc, and copying the file over from the command line, or (CEmu only) adding the file to the ROM.
To copy the file from USB to calc, on-calc run: `usbrecv /FILE/ON/USB /file/on/calc`
To add the file to the ROM for use with CEmu: `python add_file_to_rom.py /path/on/computer /path/on/rom`

## Help
Feel free to contact me on [Cemetech](https://www.cemetech.net/forum/profile.php?mode=viewprofile&u=18775)
