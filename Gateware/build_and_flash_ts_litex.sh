git clone https://github.com/EEVengers/thunderscope_litex.git
cd thunderscope_litex
if [ "$1" == "a50t" ]; then
	./thunderscope.py --variant=a50t --build --load
elif [ "$1" == "a100t" ]; then
	./thunderscope.py --variant=a100t --build --load
elif [ "$1" == "a200t" ]; then
	./thunderscope.py --variant=a200t --build --load
else
	echo "Valid arguments are: a50t a100t a200t"
fi
