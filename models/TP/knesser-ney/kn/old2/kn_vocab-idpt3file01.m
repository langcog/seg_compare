syllables = '$NRVklmntv';
discounts = [0.01 0.02 0.05 0.1 0.2 0.5 1 2 3 4 5 6 8 10 15 20 30 50];
kn_probs = [2e-05 2e-05 2e-05 2e-05 0.279953333333333 2e-05 2e-05 0.38662 2e-05 0.333286666666667; % $ D=0.01
0.19497 2e-05 2e-05 2e-05 0.29997 2e-05 2e-05 0.24997 2e-05 0.25497; % N D=0.01
5e-06 5e-06 5e-06 5e-06 5e-06 5e-06 5e-06 5e-06 0.999955 5e-06; % R D=0.01
5e-06 5e-06 0.999955 5e-06 5e-06 5e-06 5e-06 5e-06 5e-06 5e-06; % V D=0.01
5e-06 5e-06 5e-06 5e-06 5e-06 5e-06 0.999955 5e-06 5e-06 5e-06; % k D=0.01
0.28997 2e-05 2e-05 2e-05 0.21997 2e-05 2e-05 0.20497 2e-05 0.28497; % l D=0.01
5e-06 5e-06 5e-06 5e-06 5e-06 0.999955 5e-06 5e-06 5e-06 5e-06; % m D=0.01
5e-06 0.999955 5e-06 5e-06 5e-06 5e-06 5e-06 5e-06 5e-06 5e-06; % n D=0.01
0.26497 2e-05 2e-05 2e-05 0.26997 2e-05 2e-05 0.25497 2e-05 0.20997; % t D=0.01
5e-06 5e-06 5e-06 0.999955 5e-06 5e-06 5e-06 5e-06 5e-06 5e-06; % v D=0.01
4e-05 4e-05 4e-05 4e-05 0.279906666666667 4e-05 4e-05 0.386573333333333 4e-05 0.33324; % $ D=0.02
0.19494 4e-05 4e-05 4e-05 0.29994 4e-05 4e-05 0.24994 4e-05 0.25494; % N D=0.02
1e-05 1e-05 1e-05 1e-05 1e-05 1e-05 1e-05 1e-05 0.99991 1e-05; % R D=0.02
1e-05 1e-05 0.99991 1e-05 1e-05 1e-05 1e-05 1e-05 1e-05 1e-05; % V D=0.02
1e-05 1e-05 1e-05 1e-05 1e-05 1e-05 0.99991 1e-05 1e-05 1e-05; % k D=0.02
0.28994 4e-05 4e-05 4e-05 0.21994 4e-05 4e-05 0.20494 4e-05 0.28494; % l D=0.02
1e-05 1e-05 1e-05 1e-05 1e-05 0.99991 1e-05 1e-05 1e-05 1e-05; % m D=0.02
1e-05 0.99991 1e-05 1e-05 1e-05 1e-05 1e-05 1e-05 1e-05 1e-05; % n D=0.02
0.26494 4e-05 4e-05 4e-05 0.26994 4e-05 4e-05 0.25494 4e-05 0.20994; % t D=0.02
1e-05 1e-05 1e-05 0.99991 1e-05 1e-05 1e-05 1e-05 1e-05 1e-05; % v D=0.02
0.0001 0.0001 0.0001 0.0001 0.279766666666667 0.0001 0.0001 0.386433333333333 0.0001 0.3331; % $ D=0.05
0.19485 0.0001 0.0001 0.0001 0.29985 0.0001 0.0001 0.24985 0.0001 0.25485; % N D=0.05
2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 0.999775 2.5e-05; % R D=0.05
2.5e-05 2.5e-05 0.999775 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05; % V D=0.05
2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 0.999775 2.5e-05 2.5e-05 2.5e-05; % k D=0.05
0.28985 0.0001 0.0001 0.0001 0.21985 0.0001 0.0001 0.20485 0.0001 0.28485; % l D=0.05
2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 0.999775 2.5e-05 2.5e-05 2.5e-05 2.5e-05; % m D=0.05
2.5e-05 0.999775 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05; % n D=0.05
0.26485 0.0001 0.0001 0.0001 0.26985 0.0001 0.0001 0.25485 0.0001 0.20985; % t D=0.05
2.5e-05 2.5e-05 2.5e-05 0.999775 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05; % v D=0.05
0.0002 0.0002 0.0002 0.0002 0.279533333333333 0.0002 0.0002 0.3862 0.0002 0.332866666666667; % $ D=0.1
0.1947 0.0002 0.0002 0.0002 0.2997 0.0002 0.0002 0.2497 0.0002 0.2547; % N D=0.1
5e-05 5e-05 5e-05 5e-05 5e-05 5e-05 5e-05 5e-05 0.99955 5e-05; % R D=0.1
5e-05 5e-05 0.99955 5e-05 5e-05 5e-05 5e-05 5e-05 5e-05 5e-05; % V D=0.1
5e-05 5e-05 5e-05 5e-05 5e-05 5e-05 0.99955 5e-05 5e-05 5e-05; % k D=0.1
0.2897 0.0002 0.0002 0.0002 0.2197 0.0002 0.0002 0.2047 0.0002 0.2847; % l D=0.1
5e-05 5e-05 5e-05 5e-05 5e-05 0.99955 5e-05 5e-05 5e-05 5e-05; % m D=0.1
5e-05 0.99955 5e-05 5e-05 5e-05 5e-05 5e-05 5e-05 5e-05 5e-05; % n D=0.1
0.2647 0.0002 0.0002 0.0002 0.2697 0.0002 0.0002 0.2547 0.0002 0.2097; % t D=0.1
5e-05 5e-05 5e-05 0.99955 5e-05 5e-05 5e-05 5e-05 5e-05 5e-05; % v D=0.1
0.0004 0.0004 0.0004 0.0004 0.279066666666667 0.0004 0.0004 0.385733333333333 0.0004 0.3324; % $ D=0.2
0.1944 0.0004 0.0004 0.0004 0.2994 0.0004 0.0004 0.2494 0.0004 0.2544; % N D=0.2
0.0001 0.0001 0.0001 0.0001 0.0001 0.0001 0.0001 0.0001 0.9991 0.0001; % R D=0.2
0.0001 0.0001 0.9991 0.0001 0.0001 0.0001 0.0001 0.0001 0.0001 0.0001; % V D=0.2
0.0001 0.0001 0.0001 0.0001 0.0001 0.0001 0.9991 0.0001 0.0001 0.0001; % k D=0.2
0.2894 0.0004 0.0004 0.0004 0.2194 0.0004 0.0004 0.2044 0.0004 0.2844; % l D=0.2
0.0001 0.0001 0.0001 0.0001 0.0001 0.9991 0.0001 0.0001 0.0001 0.0001; % m D=0.2
0.0001 0.9991 0.0001 0.0001 0.0001 0.0001 0.0001 0.0001 0.0001 0.0001; % n D=0.2
0.2644 0.0004 0.0004 0.0004 0.2694 0.0004 0.0004 0.2544 0.0004 0.2094; % t D=0.2
0.0001 0.0001 0.0001 0.9991 0.0001 0.0001 0.0001 0.0001 0.0001 0.0001; % v D=0.2
0.001 0.001 0.001 0.001 0.277666666666667 0.001 0.001 0.384333333333333 0.001 0.331; % $ D=0.5
0.1935 0.001 0.001 0.001 0.2985 0.001 0.001 0.2485 0.001 0.2535; % N D=0.5
0.00025 0.00025 0.00025 0.00025 0.00025 0.00025 0.00025 0.00025 0.99775 0.00025; % R D=0.5
0.00025 0.00025 0.99775 0.00025 0.00025 0.00025 0.00025 0.00025 0.00025 0.00025; % V D=0.5
0.00025 0.00025 0.00025 0.00025 0.00025 0.00025 0.99775 0.00025 0.00025 0.00025; % k D=0.5
0.2885 0.001 0.001 0.001 0.2185 0.001 0.001 0.2035 0.001 0.2835; % l D=0.5
0.00025 0.00025 0.00025 0.00025 0.00025 0.99775 0.00025 0.00025 0.00025 0.00025; % m D=0.5
0.00025 0.99775 0.00025 0.00025 0.00025 0.00025 0.00025 0.00025 0.00025 0.00025; % n D=0.5
0.2635 0.001 0.001 0.001 0.2685 0.001 0.001 0.2535 0.001 0.2085; % t D=0.5
0.00025 0.00025 0.00025 0.99775 0.00025 0.00025 0.00025 0.00025 0.00025 0.00025; % v D=0.5
0.002 0.002 0.002 0.002 0.275333333333333 0.002 0.002 0.382 0.002 0.328666666666667; % $ D=1
0.192 0.002 0.002 0.002 0.297 0.002 0.002 0.247 0.002 0.252; % N D=1
0.0005 0.0005 0.0005 0.0005 0.0005 0.0005 0.0005 0.0005 0.9955 0.0005; % R D=1
0.0005 0.0005 0.9955 0.0005 0.0005 0.0005 0.0005 0.0005 0.0005 0.0005; % V D=1
0.0005 0.0005 0.0005 0.0005 0.0005 0.0005 0.9955 0.0005 0.0005 0.0005; % k D=1
0.287 0.002 0.002 0.002 0.217 0.002 0.002 0.202 0.002 0.282; % l D=1
0.0005 0.0005 0.0005 0.0005 0.0005 0.9955 0.0005 0.0005 0.0005 0.0005; % m D=1
0.0005 0.9955 0.0005 0.0005 0.0005 0.0005 0.0005 0.0005 0.0005 0.0005; % n D=1
0.262 0.002 0.002 0.002 0.267 0.002 0.002 0.252 0.002 0.207; % t D=1
0.0005 0.0005 0.0005 0.9955 0.0005 0.0005 0.0005 0.0005 0.0005 0.0005; % v D=1
0.004 0.004 0.004 0.004 0.270666666666667 0.004 0.004 0.377333333333333 0.004 0.324; % $ D=2
0.189 0.004 0.004 0.004 0.294 0.004 0.004 0.244 0.004 0.249; % N D=2
0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.991 0.001; % R D=2
0.001 0.001 0.991 0.001 0.001 0.001 0.001 0.001 0.001 0.001; % V D=2
0.001 0.001 0.001 0.001 0.001 0.001 0.991 0.001 0.001 0.001; % k D=2
0.284 0.004 0.004 0.004 0.214 0.004 0.004 0.199 0.004 0.279; % l D=2
0.001 0.001 0.001 0.001 0.001 0.991 0.001 0.001 0.001 0.001; % m D=2
0.001 0.991 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001; % n D=2
0.259 0.004 0.004 0.004 0.264 0.004 0.004 0.249 0.004 0.204; % t D=2
0.001 0.001 0.001 0.991 0.001 0.001 0.001 0.001 0.001 0.001; % v D=2
0.006 0.006 0.006 0.006 0.266 0.006 0.006 0.372666666666667 0.006 0.319333333333333; % $ D=3
0.186 0.006 0.006 0.006 0.291 0.006 0.006 0.241 0.006 0.246; % N D=3
0.0015 0.0015 0.0015 0.0015 0.0015 0.0015 0.0015 0.0015 0.9865 0.0015; % R D=3
0.0015 0.0015 0.9865 0.0015 0.0015 0.0015 0.0015 0.0015 0.0015 0.0015; % V D=3
0.0015 0.0015 0.0015 0.0015 0.0015 0.0015 0.9865 0.0015 0.0015 0.0015; % k D=3
0.281 0.006 0.006 0.006 0.211 0.006 0.006 0.196 0.006 0.276; % l D=3
0.0015 0.0015 0.0015 0.0015 0.0015 0.9865 0.0015 0.0015 0.0015 0.0015; % m D=3
0.0015 0.9865 0.0015 0.0015 0.0015 0.0015 0.0015 0.0015 0.0015 0.0015; % n D=3
0.256 0.006 0.006 0.006 0.261 0.006 0.006 0.246 0.006 0.201; % t D=3
0.0015 0.0015 0.0015 0.9865 0.0015 0.0015 0.0015 0.0015 0.0015 0.0015; % v D=3
0.008 0.008 0.008 0.008 0.261333333333333 0.008 0.008 0.368 0.008 0.314666666666667; % $ D=4
0.183 0.008 0.008 0.008 0.288 0.008 0.008 0.238 0.008 0.243; % N D=4
0.002 0.002 0.002 0.002 0.002 0.002 0.002 0.002 0.982 0.002; % R D=4
0.002 0.002 0.982 0.002 0.002 0.002 0.002 0.002 0.002 0.002; % V D=4
0.002 0.002 0.002 0.002 0.002 0.002 0.982 0.002 0.002 0.002; % k D=4
0.278 0.008 0.008 0.008 0.208 0.008 0.008 0.193 0.008 0.273; % l D=4
0.002 0.002 0.002 0.002 0.002 0.982 0.002 0.002 0.002 0.002; % m D=4
0.002 0.982 0.002 0.002 0.002 0.002 0.002 0.002 0.002 0.002; % n D=4
0.253 0.008 0.008 0.008 0.258 0.008 0.008 0.243 0.008 0.198; % t D=4
0.002 0.002 0.002 0.982 0.002 0.002 0.002 0.002 0.002 0.002; % v D=4
0.01 0.01 0.01 0.01 0.256666666666667 0.01 0.01 0.363333333333333 0.01 0.31; % $ D=5
0.18 0.01 0.01 0.01 0.285 0.01 0.01 0.235 0.01 0.24; % N D=5
0.0025 0.0025 0.0025 0.0025 0.0025 0.0025 0.0025 0.0025 0.9775 0.0025; % R D=5
0.0025 0.0025 0.9775 0.0025 0.0025 0.0025 0.0025 0.0025 0.0025 0.0025; % V D=5
0.0025 0.0025 0.0025 0.0025 0.0025 0.0025 0.9775 0.0025 0.0025 0.0025; % k D=5
0.275 0.01 0.01 0.01 0.205 0.01 0.01 0.19 0.01 0.27; % l D=5
0.0025 0.0025 0.0025 0.0025 0.0025 0.9775 0.0025 0.0025 0.0025 0.0025; % m D=5
0.0025 0.9775 0.0025 0.0025 0.0025 0.0025 0.0025 0.0025 0.0025 0.0025; % n D=5
0.25 0.01 0.01 0.01 0.255 0.01 0.01 0.24 0.01 0.195; % t D=5
0.0025 0.0025 0.0025 0.9775 0.0025 0.0025 0.0025 0.0025 0.0025 0.0025; % v D=5
0.012 0.012 0.012 0.012 0.252 0.012 0.012 0.358666666666667 0.012 0.305333333333333; % $ D=6
0.177 0.012 0.012 0.012 0.282 0.012 0.012 0.232 0.012 0.237; % N D=6
0.003 0.003 0.003 0.003 0.003 0.003 0.003 0.003 0.973 0.003; % R D=6
0.003 0.003 0.973 0.003 0.003 0.003 0.003 0.003 0.003 0.003; % V D=6
0.003 0.003 0.003 0.003 0.003 0.003 0.973 0.003 0.003 0.003; % k D=6
0.272 0.012 0.012 0.012 0.202 0.012 0.012 0.187 0.012 0.267; % l D=6
0.003 0.003 0.003 0.003 0.003 0.973 0.003 0.003 0.003 0.003; % m D=6
0.003 0.973 0.003 0.003 0.003 0.003 0.003 0.003 0.003 0.003; % n D=6
0.247 0.012 0.012 0.012 0.252 0.012 0.012 0.237 0.012 0.192; % t D=6
0.003 0.003 0.003 0.973 0.003 0.003 0.003 0.003 0.003 0.003; % v D=6
0.016 0.016 0.016 0.016 0.242666666666667 0.016 0.016 0.349333333333333 0.016 0.296; % $ D=8
0.171 0.016 0.016 0.016 0.276 0.016 0.016 0.226 0.016 0.231; % N D=8
0.004 0.004 0.004 0.004 0.004 0.004 0.004 0.004 0.964 0.004; % R D=8
0.004 0.004 0.964 0.004 0.004 0.004 0.004 0.004 0.004 0.004; % V D=8
0.004 0.004 0.004 0.004 0.004 0.004 0.964 0.004 0.004 0.004; % k D=8
0.266 0.016 0.016 0.016 0.196 0.016 0.016 0.181 0.016 0.261; % l D=8
0.004 0.004 0.004 0.004 0.004 0.964 0.004 0.004 0.004 0.004; % m D=8
0.004 0.964 0.004 0.004 0.004 0.004 0.004 0.004 0.004 0.004; % n D=8
0.241 0.016 0.016 0.016 0.246 0.016 0.016 0.231 0.016 0.186; % t D=8
0.004 0.004 0.004 0.964 0.004 0.004 0.004 0.004 0.004 0.004; % v D=8
0.02 0.02 0.02 0.02 0.233333333333333 0.02 0.02 0.34 0.02 0.286666666666667; % $ D=10
0.165 0.02 0.02 0.02 0.27 0.02 0.02 0.22 0.02 0.225; % N D=10
0.005 0.005 0.005 0.005 0.005 0.005 0.005 0.005 0.955 0.005; % R D=10
0.005 0.005 0.955 0.005 0.005 0.005 0.005 0.005 0.005 0.005; % V D=10
0.005 0.005 0.005 0.005 0.005 0.005 0.955 0.005 0.005 0.005; % k D=10
0.26 0.02 0.02 0.02 0.19 0.02 0.02 0.175 0.02 0.255; % l D=10
0.005 0.005 0.005 0.005 0.005 0.955 0.005 0.005 0.005 0.005; % m D=10
0.005 0.955 0.005 0.005 0.005 0.005 0.005 0.005 0.005 0.005; % n D=10
0.235 0.02 0.02 0.02 0.24 0.02 0.02 0.225 0.02 0.18; % t D=10
0.005 0.005 0.005 0.955 0.005 0.005 0.005 0.005 0.005 0.005; % v D=10
0.03 0.03 0.03 0.03 0.21 0.03 0.03 0.316666666666667 0.03 0.263333333333333; % $ D=15
0.15 0.03 0.03 0.03 0.255 0.03 0.03 0.205 0.03 0.21; % N D=15
0.0075 0.0075 0.0075 0.0075 0.0075 0.0075 0.0075 0.0075 0.9325 0.0075; % R D=15
0.0075 0.0075 0.9325 0.0075 0.0075 0.0075 0.0075 0.0075 0.0075 0.0075; % V D=15
0.0075 0.0075 0.0075 0.0075 0.0075 0.0075 0.9325 0.0075 0.0075 0.0075; % k D=15
0.245 0.03 0.03 0.03 0.175 0.03 0.03 0.16 0.03 0.24; % l D=15
0.0075 0.0075 0.0075 0.0075 0.0075 0.9325 0.0075 0.0075 0.0075 0.0075; % m D=15
0.0075 0.9325 0.0075 0.0075 0.0075 0.0075 0.0075 0.0075 0.0075 0.0075; % n D=15
0.22 0.03 0.03 0.03 0.225 0.03 0.03 0.21 0.03 0.165; % t D=15
0.0075 0.0075 0.0075 0.9325 0.0075 0.0075 0.0075 0.0075 0.0075 0.0075; % v D=15
0.04 0.04 0.04 0.04 0.186666666666667 0.04 0.04 0.293333333333333 0.04 0.24; % $ D=20
0.135 0.04 0.04 0.04 0.24 0.04 0.04 0.19 0.04 0.195; % N D=20
0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.91 0.01; % R D=20
0.01 0.01 0.91 0.01 0.01 0.01 0.01 0.01 0.01 0.01; % V D=20
0.01 0.01 0.01 0.01 0.01 0.01 0.91 0.01 0.01 0.01; % k D=20
0.23 0.04 0.04 0.04 0.16 0.04 0.04 0.145 0.04 0.225; % l D=20
0.01 0.01 0.01 0.01 0.01 0.91 0.01 0.01 0.01 0.01; % m D=20
0.01 0.91 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01; % n D=20
0.205 0.04 0.04 0.04 0.21 0.04 0.04 0.195 0.04 0.15; % t D=20
0.01 0.01 0.01 0.91 0.01 0.01 0.01 0.01 0.01 0.01; % v D=20
0.06 0.06 0.06 0.06 0.14 0.06 0.06 0.246666666666667 0.06 0.193333333333333; % $ D=30
0.105 0.06 0.06 0.06 0.21 0.06 0.06 0.16 0.06 0.165; % N D=30
0.015 0.015 0.015 0.015 0.015 0.015 0.015 0.015 0.865 0.015; % R D=30
0.015 0.015 0.865 0.015 0.015 0.015 0.015 0.015 0.015 0.015; % V D=30
0.015 0.015 0.015 0.015 0.015 0.015 0.865 0.015 0.015 0.015; % k D=30
0.2 0.06 0.06 0.06 0.13 0.06 0.06 0.115 0.06 0.195; % l D=30
0.015 0.015 0.015 0.015 0.015 0.865 0.015 0.015 0.015 0.015; % m D=30
0.015 0.865 0.015 0.015 0.015 0.015 0.015 0.015 0.015 0.015; % n D=30
0.175 0.06 0.06 0.06 0.18 0.06 0.06 0.165 0.06 0.12; % t D=30
0.015 0.015 0.015 0.865 0.015 0.015 0.015 0.015 0.015 0.015; % v D=30
0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.153333333333333 0.1 0.1; % $ D=50
0.1 0.1 0.1 0.1 0.15 0.1 0.1 0.1 0.1 0.105; % N D=50
0.025 0.025 0.025 0.025 0.025 0.025 0.025 0.025 0.775 0.025; % R D=50
0.025 0.025 0.775 0.025 0.025 0.025 0.025 0.025 0.025 0.025; % V D=50
0.025 0.025 0.025 0.025 0.025 0.025 0.775 0.025 0.025 0.025; % k D=50
0.14 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.135; % l D=50
0.025 0.025 0.025 0.025 0.025 0.775 0.025 0.025 0.025 0.025; % m D=50
0.025 0.775 0.025 0.025 0.025 0.025 0.025 0.025 0.025 0.025; % n D=50
0.115 0.1 0.1 0.1 0.12 0.1 0.1 0.105 0.1 0.1; % t D=50
0.025 0.025 0.025 0.775 0.025 0.025 0.025 0.025 0.025 0.025]; % v D=50
