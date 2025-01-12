echo "This script builds the Vice emulator from source on a Debian linux distribution (also Ubuntu, Mint...)"
echo "It simply follows every suggestion in vice/doc/building/Linux-GTK3-Howto.txt"
echo ">>> Press enter to start."
read a

sudo apt-get install -y subversion autoconf automake build-essential byacc flex xa65 gawk libgtk-3-dev texinfo texlive-fonts-recommended texlive-latex-extra dos2unix libpulse-dev libasound2-dev libglew-dev libcurl4-openssl-dev libevdev-dev libgif-dev libpcap-dev libavcodec-dev libavformat-dev libswscale-dev libmp3lame-dev libmpg123-dev libvorbis-dev libflac-dev

echo ">>> Press enter if the packages installed correctly."
read a

mkdir workdir
cd workdir
svn checkout https://svn.code.sf.net/p/vice-emu/code/trunk trunk
svn up trunk

echo ">>> Press enter if the source code checked out correctly."
read a

cd trunk/vice/
./autogen.sh
./configure --enable-gtk3ui --enable-arch=native --with-resid --enable-gtk3ui  --enable-ethernet --with-pulse --with-alsa --enable-cpuhistory --enable-ffmpeg
make

echo ">>> Press enter if everything built correctly."
read a

sudo make install

echo ">>> Done!"
echo "Re-run the script at a later date to get the latest Vice version."
echo "Run x64 to try it out."
