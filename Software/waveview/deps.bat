:: Requires "tar" and "curl"
:: The above are included in Windows 10 version 1803 or later
:: You can find your version by running "winver"

set start_dir=%cd%
cd C:\Users\%username%\Downloads

set boost_url=https://dl.bintray.com/boostorg/release/1.75.0/source/boost_1_75_0.zip
curl -L -O %boost_url%

set boost_zip=boost_1_75_0.zip
if not exist %boost_zip% exit

tar -x -f %boost_zip%
cd boost_1_75_0
call bootstrap
call b2
call b2 install

cd %start_dir%