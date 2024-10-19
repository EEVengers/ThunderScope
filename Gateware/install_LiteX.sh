mkdir LiteX
cd LiteX
sudo apt-get install -y python3-pip
wget https://raw.githubusercontent.com/enjoy-digital/litex/master/litex_setup.py
#break the auto update check
sed -i -e 's/if current_sha1 != upstream_sha1:/if current_sha1 == upstream_sha1:/g' litex_setup.py
#so that we can break system packages and install on distros adopting PEP668
#see https://github.com/enjoy-digital/litex/issues/1716
sed -i -e 's/ pip install --editable / pip install --break-system-packages --editable /g' litex_setup.py
chmod +x litex_setup.py
./litex_setup.py --init --install
