sudo LD_PRELOAD=/home/azureuser/mimalloc-bench/extern/hd/src/libhoard.so valgrind --heap=yes --stacks=no --detailed-freq=100 --tool=massif ./cfrac 17545186520507317056371138836327483792789528
sudo mv massif.out.* results/hd-valgrind-cfrac-massif.txt
sudo LD_PRELOAD=/home/azureuser/mimalloc-bench/extern/hd/src/libhoard.so valgrind --heap=yes --stacks=no --detailed-freq=100 --tool=massif ./espresso ../../bench/espresso/largest.espresso
sudo mv massif.out.* results/hd-valgrind-espresso-massif.txt
sudo LD_PRELOAD=/home/azureuser/mimalloc-bench/extern/hd/src/libhoard.so valgrind --heap=yes --stacks=no --detailed-freq=100 --tool=massif gs -dBATCH -dNODISPLAY /home/azureuser/mimalloc-bench/extern/large.pdf
sudo mv massif.out.* results/hd-valgrind-gs-massif.txt
sudo LD_PRELOAD=/home/azureuser/mimalloc-bench/extern/hd/src/libhoard.so valgrind --heap=yes --stacks=no --detailed-freq=100 --tool=massif make
sudo mv massif.out.* results/hd-valgrind-lua-massif.txt
sudo LD_PRELOAD=/home/azureuser/mimalloc-bench/extern/hd/src/libhoard.so valgrind --heap=yes --stacks=no --detailed-freq=100 --tool=massif /home/azureuser/mimalloc-bench/extern/redis-6.2.7/src/redis-benchmark -r 1000000 -n 100000 -q -P 16 lpush a 1 2 3 4 5 lrange a 1 5
sudo mv massif.out.* results/hd-valgrind-redis-massif.txt
sudo LD_PRELOAD=/home/azureuser/mimalloc-bench/extern/je/lib/libjemalloc.so valgrind --heap=yes --stacks=no --detailed-freq=100 --tool=massif ./cfrac 17545186520507317056371138836327483792789528
sudo mv massif.out.* results/je-valgrind-cfrac-massif.txt
sudo LD_PRELOAD=/home/azureuser/mimalloc-bench/extern/je/lib/libjemalloc.so valgrind --heap=yes --stacks=no --detailed-freq=100 --tool=massif ./espresso ../../bench/espresso/largest.espresso
sudo mv massif.out.* results/je-valgrind-espresso-massif.txt
sudo LD_PRELOAD=/home/azureuser/mimalloc-bench/extern/je/lib/libjemalloc.so valgrind --heap=yes --stacks=no --detailed-freq=100 --tool=massif gs -dBATCH -dNODISPLAY /home/azureuser/mimalloc-bench/extern/large.pdf
sudo mv massif.out.* results/je-valgrind-gs-massif.txt
sudo LD_PRELOAD=/home/azureuser/mimalloc-bench/extern/je/lib/libjemalloc.so valgrind --heap=yes --stacks=no --detailed-freq=100 --tool=massif make
sudo mv massif.out.* results/je-valgrind-lua-massif.txt
sudo LD_PRELOAD=/home/azureuser/mimalloc-bench/extern/je/lib/libjemalloc.so valgrind --heap=yes --stacks=no --detailed-freq=100 --tool=massif /home/azureuser/mimalloc-bench/extern/redis-6.2.7/src/redis-benchmark -r 1000000 -n 100000 -q -P 16 lpush a 1 2 3 4 5 lrange a 1 5
sudo mv massif.out.* results/je-valgrind-redis-massif.txt
sudo LD_PRELOAD=/home/azureuser/mimalloc-bench/extern/sm/release/lib/libsupermalloc.so valgrind --heap=yes --stacks=no --detailed-freq=100 --tool=massif ./cfrac 17545186520507317056371138836327483792789528
sudo mv massif.out.* results/sm-valgrind-cfrac-massif.txt
sudo LD_PRELOAD=/home/azureuser/mimalloc-bench/extern/sm/release/lib/libsupermalloc.so valgrind --heap=yes --stacks=no --detailed-freq=100 --tool=massif ./espresso ../../bench/espresso/largest.espresso
sudo mv massif.out.* results/sm-valgrind-espresso-massif.txt
sudo LD_PRELOAD=/home/azureuser/mimalloc-bench/extern/sm/release/lib/libsupermalloc.so valgrind --heap=yes --stacks=no --detailed-freq=100 --tool=massif gs -dBATCH -dNODISPLAY /home/azureuser/mimalloc-bench/extern/large.pdf
sudo mv massif.out.* results/sm-valgrind-gs-massif.txt
sudo LD_PRELOAD=/home/azureuser/mimalloc-bench/extern/sm/release/lib/libsupermalloc.so valgrind --heap=yes --stacks=no --detailed-freq=100 --tool=massif make
sudo mv massif.out.* results/sm-valgrind-lua-massif.txt
sudo LD_PRELOAD=/home/azureuser/mimalloc-bench/extern/sm/release/lib/libsupermalloc.so valgrind --heap=yes --stacks=no --detailed-freq=100 --tool=massif /home/azureuser/mimalloc-bench/extern/redis-6.2.7/src/redis-benchmark -r 1000000 -n 100000 -q -P 16 lpush a 1 2 3 4 5 lrange a 1 5
sudo mv massif.out.* results/sm-valgrind-redis-massif.txt
sudo LD_PRELOAD=/home/azureuser/mimalloc-bench/extern/tcg/bazel-bin/tcmalloc/libtcmalloc.so valgrind --heap=yes --stacks=no --detailed-freq=100 --tool=massif ./cfrac 17545186520507317056371138836327483792789528
sudo mv massif.out.* results/tcg-valgrind-cfrac-massif.txt
sudo LD_PRELOAD=/home/azureuser/mimalloc-bench/extern/tcg/bazel-bin/tcmalloc/libtcmalloc.so valgrind --heap=yes --stacks=no --detailed-freq=100 --tool=massif ./espresso ../../bench/espresso/largest.espresso
sudo mv massif.out.* results/tcg-valgrind-espresso-massif.txt
sudo LD_PRELOAD=/home/azureuser/mimalloc-bench/extern/tcg/bazel-bin/tcmalloc/libtcmalloc.so valgrind --heap=yes --stacks=no --detailed-freq=100 --tool=massif gs -dBATCH -dNODISPLAY /home/azureuser/mimalloc-bench/extern/large.pdf
sudo mv massif.out.* results/tcg-valgrind-gs-massif.txt
sudo LD_PRELOAD=/home/azureuser/mimalloc-bench/extern/tcg/bazel-bin/tcmalloc/libtcmalloc.so valgrind --heap=yes --stacks=no --detailed-freq=100 --tool=massif make
sudo mv massif.out.* results/tcg-valgrind-lua-massif.txt
sudo LD_PRELOAD=/home/azureuser/mimalloc-bench/extern/tcg/bazel-bin/tcmalloc/libtcmalloc.so valgrind --heap=yes --stacks=no --detailed-freq=100 --tool=massif /home/azureuser/mimalloc-bench/extern/redis-6.2.7/src/redis-benchmark -r 1000000 -n 100000 -q -P 16 lpush a 1 2 3 4 5 lrange a 1 5
sudo mv massif.out.* results/tcg-valgrind-redis-massif.txt
sudo SYSMALLOC=1 valgrind --heap=yes --stacks=no --detailed-freq=100 --tool=massif ./cfrac 17545186520507317056371138836327483792789528
sudo mv massif.out.* results/sys-valgrind-cfrac-massif.txt
sudo SYSMALLOC=1 valgrind --heap=yes --stacks=no --detailed-freq=100 --tool=massif ./espresso ../../bench/espresso/largest.espresso
sudo mv massif.out.* results/sys-valgrind-espresso-massif.txt
sudo SYSMALLOC=1 valgrind --heap=yes --stacks=no --detailed-freq=100 --tool=massif gs -dBATCH -dNODISPLAY /home/azureuser/mimalloc-bench/extern/large.pdf
sudo mv massif.out.* results/sys-valgrind-gs-massif.txt
sudo SYSMALLOC=1 valgrind --heap=yes --stacks=no --detailed-freq=100 --tool=massif make
sudo mv massif.out.* results/sys-valgrind-lua-massif.txt
sudo SYSMALLOC=1 valgrind --heap=yes --stacks=no --detailed-freq=100 --tool=massif /home/azureuser/mimalloc-bench/extern/redis-6.2.7/src/redis-benchmark -r 1000000 -n 100000 -q -P 16 lpush a 1 2 3 4 5 lrange a 1 5
sudo mv massif.out.* results/sys-valgrind-redis-massif.txt
sudo SYSMALLOC=1 valgrind --heap=yes --stacks=no --detailed-freq=100 --tool=massif ./larson-sized 5 8 1000 5000 100 4141 16
sudo mv massif.out.* results/sys-valgrind-larson-massif.txt
sudo LD_PRELOAD=/home/azureuser/mimalloc-bench/extern/hd/src/libhoard.so valgrind --heap=yes --stacks=no --detailed-freq=100 --tool=massif ./larson-sized 5 8 1000 5000 100 4141 16
sudo mv massif.out.* results/hd-valgrind-larson-massif.txt
sudo LD_PRELOAD=/home/azureuser/mimalloc-bench/extern/sm/release/lib/libsupermalloc.so valgrind --heap=yes --stacks=no --detailed-freq=100 --tool=massif ./larson-sized 5 8 1000 5000 100 4141 16
sudo mv massif.out.* results/sm-valgrind-larson-massif.txt
sudo LD_PRELOAD=/home/azureuser/mimalloc-bench/extern/je/lib/libjemalloc.so valgrind --heap=yes --stacks=no --detailed-freq=100 --tool=massif ./larson-sized 5 8 1000 5000 100 4141 16
sudo mv massif.out.* results/je-valgrind-larson-massif.txt


sudo LD_PRELOAD=/home/azureuser/mimalloc-bench/extern/tcg/bazel-bin/tcmalloc/libtcmalloc.so valgrind --heap=yes --stacks=no --detailed-freq=100 --tool=massif ./larson-sized 5 8 1000 5000 100 4141 16
sudo mv massif.out.* results/tcg-valgrind-larson-massif.txt
