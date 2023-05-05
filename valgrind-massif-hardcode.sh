echo "The current date is: $(date)"
sudo LD_PRELOAD=/home/azureuser/mimalloc-bench/extern/hd/src/libhoard.so valgrind --tool=massif ./cfrac 17545186520507317056371138836327483792789528
sudo mv massif.out.* results/hd-valgrind-cfrac-massif.txt
echo "The current date is: $(date)"
sudo LD_PRELOAD=/home/azureuser/mimalloc-bench/extern/hd/src/libhoard.so valgrind --tool=massif ./espresso ../../bench/espresso/largest.espresso
sudo mv massif.out.* results/hd-valgrind-espresso-massif.txt
echo "The current date is: $(date)"
sudo LD_PRELOAD=/home/azureuser/mimalloc-bench/extern/hd/src/libhoard.so valgrind --tool=massif gs -dBATCH -dNODISPLAY /home/azureuser/mimalloc-bench/extern/large.pdf
sudo mv massif.out.* results/hd-valgrind-gs-massif.txt
echo "The current date is: $(date)"
sudo LD_PRELOAD=/home/azureuser/mimalloc-bench/extern/hd/src/libhoard.so valgrind --tool=massif make
sudo mv massif.out.* results/hd-valgrind-lua-massif.txt
echo "The current date is: $(date)"
sudo LD_PRELOAD=/home/azureuser/mimalloc-bench/extern/hd/src/libhoard.so valgrind --tool=massif /home/azureuser/mimalloc-bench/extern/redis-6.2.7/src/redis-benchmark -r 1000000 -n 100000 -q -P 16 lpush a 1 2 3 4 5 lrange a 1 5
sudo mv massif.out.* results/hd-valgrind-redis-massif.txt
echo "The current date is: $(date)"
sudo LD_PRELOAD=/home/azureuser/mimalloc-bench/extern/je/lib/libjemalloc.so valgrind --tool=massif ./cfrac 17545186520507317056371138836327483792789528
sudo mv massif.out.* results/je-valgrind-cfrac-massif.txt
echo "The current date is: $(date)"
sudo LD_PRELOAD=/home/azureuser/mimalloc-bench/extern/je/lib/libjemalloc.so valgrind --tool=massif ./espresso ../../bench/espresso/largest.espresso
sudo mv massif.out.* results/je-valgrind-espresso-massif.txt
echo "The current date is: $(date)"
sudo LD_PRELOAD=/home/azureuser/mimalloc-bench/extern/je/lib/libjemalloc.so valgrind --tool=massif gs -dBATCH -dNODISPLAY /home/azureuser/mimalloc-bench/extern/large.pdf
sudo mv massif.out.* results/je-valgrind-gs-massif.txt
echo "The current date is: $(date)"
sudo LD_PRELOAD=/home/azureuser/mimalloc-bench/extern/je/lib/libjemalloc.so valgrind --tool=massif make
sudo mv massif.out.* results/je-valgrind-lua-massif.txt
echo "The current date is: $(date)"
sudo LD_PRELOAD=/home/azureuser/mimalloc-bench/extern/je/lib/libjemalloc.so valgrind --tool=massif /home/azureuser/mimalloc-bench/extern/redis-6.2.7/src/redis-benchmark -r 1000000 -n 100000 -q -P 16 lpush a 1 2 3 4 5 lrange a 1 5
sudo mv massif.out.* results/je-valgrind-redis-massif.txt
echo "The current date is: $(date)"
sudo LD_PRELOAD=/home/azureuser/mimalloc-bench/extern/sm/release/lib/libsupermalloc.so valgrind --tool=massif ./cfrac 17545186520507317056371138836327483792789528
sudo mv massif.out.* results/sm-valgrind-cfrac-massif.txt
echo "The current date is: $(date)"
sudo LD_PRELOAD=/home/azureuser/mimalloc-bench/extern/sm/release/lib/libsupermalloc.so valgrind --tool=massif ./espresso ../../bench/espresso/largest.espresso
sudo mv massif.out.* results/sm-valgrind-espresso-massif.txt
echo "The current date is: $(date)"
sudo LD_PRELOAD=/home/azureuser/mimalloc-bench/extern/sm/release/lib/libsupermalloc.so valgrind --tool=massif gs -dBATCH -dNODISPLAY /home/azureuser/mimalloc-bench/extern/large.pdf
sudo mv massif.out.* results/sm-valgrind-gs-massif.txt
echo "The current date is: $(date)"
sudo LD_PRELOAD=/home/azureuser/mimalloc-bench/extern/sm/release/lib/libsupermalloc.so valgrind --tool=massif make
sudo mv massif.out.* results/sm-valgrind-lua-massif.txt
echo "The current date is: $(date)"
sudo LD_PRELOAD=/home/azureuser/mimalloc-bench/extern/sm/release/lib/libsupermalloc.so valgrind --tool=massif /home/azureuser/mimalloc-bench/extern/redis-6.2.7/src/redis-benchmark -r 1000000 -n 100000 -q -P 16 lpush a 1 2 3 4 5 lrange a 1 5
sudo mv massif.out.* results/sm-valgrind-redis-massif.txt
echo "The current date is: $(date)"
sudo LD_PRELOAD=/home/azureuser/mimalloc-bench/extern/tcg/bazel-bin/tcmalloc/libtcmalloc.so valgrind --tool=massif ./cfrac 17545186520507317056371138836327483792789528
sudo mv massif.out.* results/tcg-valgrind-cfrac-massif.txt
echo "The current date is: $(date)"
sudo LD_PRELOAD=/home/azureuser/mimalloc-bench/extern/tcg/bazel-bin/tcmalloc/libtcmalloc.so valgrind --tool=massif ./espresso ../../bench/espresso/largest.espresso
sudo mv massif.out.* results/tcg-valgrind-espresso-massif.txt
echo "The current date is: $(date)"
sudo LD_PRELOAD=/home/azureuser/mimalloc-bench/extern/tcg/bazel-bin/tcmalloc/libtcmalloc.so valgrind --tool=massif gs -dBATCH -dNODISPLAY /home/azureuser/mimalloc-bench/extern/large.pdf
sudo mv massif.out.* results/tcg-valgrind-gs-massif.txt
echo "The current date is: $(date)"
sudo LD_PRELOAD=/home/azureuser/mimalloc-bench/extern/tcg/bazel-bin/tcmalloc/libtcmalloc.so valgrind --tool=massif make
sudo mv massif.out.* results/tcg-valgrind-lua-massif.txt
echo "The current date is: $(date)"
sudo LD_PRELOAD=/home/azureuser/mimalloc-bench/extern/tcg/bazel-bin/tcmalloc/libtcmalloc.so valgrind --tool=massif /home/azureuser/mimalloc-bench/extern/redis-6.2.7/src/redis-benchmark -r 1000000 -n 100000 -q -P 16 lpush a 1 2 3 4 5 lrange a 1 5
sudo mv massif.out.* results/tcg-valgrind-redis-massif.txt
echo "The current date is: $(date)"
sudo SYSMALLOC=1 valgrind --tool=massif ./cfrac 17545186520507317056371138836327483792789528
sudo mv massif.out.* results/sys-valgrind-cfrac-massif.txt
echo "The current date is: $(date)"
sudo SYSMALLOC=1 valgrind --tool=massif ./espresso ../../bench/espresso/largest.espresso
sudo mv massif.out.* results/sys-valgrind-espresso-massif.txt
echo "The current date is: $(date)"
sudo SYSMALLOC=1 valgrind --tool=massif gs -dBATCH -dNODISPLAY /home/azureuser/mimalloc-bench/extern/large.pdf
sudo mv massif.out.* results/sys-valgrind-gs-massif.txt
echo "The current date is: $(date)"
sudo SYSMALLOC=1 valgrind --tool=massif make
sudo mv massif.out.* results/sys-valgrind-lua-massif.txt
echo "The current date is: $(date)"
sudo SYSMALLOC=1 valgrind --tool=massif /home/azureuser/mimalloc-bench/extern/redis-6.2.7/src/redis-benchmark -r 1000000 -n 100000 -q -P 16 lpush a 1 2 3 4 5 lrange a 1 5
sudo mv massif.out.* results/sys-valgrind-redis-massif.txt
echo "The current date is: $(date)"
sudo SYSMALLOC=1 valgrind --tool=massif ./larson-sized 5 8 1000 5000 100 4141 16
sudo mv massif.out.* results/sys-valgrind-larson-massif.txt
echo "The current date is: $(date)"
sudo LD_PRELOAD=/home/azureuser/mimalloc-bench/extern/hd/src/libhoard.so valgrind --tool=massif ./larson-sized 5 8 1000 5000 100 4141 16
sudo mv massif.out.* results/hd-valgrind-larson-massif.txt
echo "The current date is: $(date)"
sudo LD_PRELOAD=/home/azureuser/mimalloc-bench/extern/sm/release/lib/libsupermalloc.so valgrind --tool=massif ./larson-sized 5 8 1000 5000 100 4141 16
sudo mv massif.out.* results/sm-valgrind-larson-massif.txt
# === below 2 are taking time === 
echo "The current date is: $(date)"
sudo LD_PRELOAD=/home/azureuser/mimalloc-bench/extern/je/lib/libjemalloc.so valgrind --tool=massif ./larson-sized 5 8 1000 5000 100 4141 16
sudo mv massif.out.* results/je-valgrind-larson-massif.txt
echo "The current date is: $(date)"
sudo LD_PRELOAD=/home/azureuser/mimalloc-bench/extern/tcg/bazel-bin/tcmalloc/libtcmalloc.so valgrind --tool=massif ./larson-sized 5 8 1000 5000 100 4141 16
sudo mv massif.out.* results/tcg-valgrind-larson-massif.txt
