echo "The current date is: $(date)"
sudo LD_PRELOAD=/home/azureuser/mimalloc-bench/extern/hd/src/libhoard.so valgrind --leak-check=no --log-file=valgrind.txt make
sudo mv valgrind.txt results/lua-hd-valgrind.txt

echo "The current date is: $(date)"
sudo LD_PRELOAD=/home/azureuser/mimalloc-bench/extern/je/lib/libjemalloc.so valgrind --leak-check=no --log-file=valgrind.txt make
sudo mv valgrind.txt results/lua-je-valgrind.txt

echo "The current date is: $(date)"
sudo LD_PRELOAD=/home/azureuser/mimalloc-bench/extern/sm/release/lib/libsupermalloc.so valgrind --leak-check=no --log-file=valgrind.txt make
sudo mv valgrind.txt results/lua-sm-valgrind.txt

echo "The current date is: $(date)"
sudo LD_PRELOAD=/home/azureuser/mimalloc-bench/extern/tcg/bazel-bin/tcmalloc/libtcmalloc.so valgrind --leak-check=no --log-file=valgrind.txt make
sudo mv valgrind.txt results/lua-tcg-valgrind.txt

echo "The current date is: $(date)"
sudo SYSMALLOC=1 valgrind --leak-check=no --log-file=valgrind.txt make
sudo mv valgrind.txt results/lua-sys-valgrind.txt
