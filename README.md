# Vice emulator build script

It is pretty painful to get the Vice Commodore emulators running on Linux because the ROM dumps are not included in the official packages.
This means none of the emulators work, and making them work is awkward - you have to copy files from the Vice source to whatever directory the packaged Vice is configured to look in.

One option is to simply build the emulator from source code.
The instructions are in a rather annoying format, they can't be easily copy-pasted.
The script in this repo is simply all the instructions in a single shell file.
That should make getting Vice to run an easy task!
