syllables = '$BMZbflntv';
discounts = [0.01 0.02 0.05 0.1 0.2 0.5 1 2 3 4 5 6 8 10 15 20 30 50];
kn_probs = [2e-05 0.313286666666667 0.359953333333333 2e-05 2e-05 2e-05 2e-05 2e-05 2e-05 0.32662; % $ D=0.01
5e-06 5e-06 5e-06 5e-06 5e-06 0.999955 5e-06 5e-06 5e-06 5e-06; % B D=0.01
5e-06 5e-06 5e-06 0.999955 5e-06 5e-06 5e-06 5e-06 5e-06 5e-06; % M D=0.01
0.26497 0.30497 0.15497 2e-05 2e-05 2e-05 2e-05 2e-05 2e-05 0.27497; % Z D=0.01
0.22997 0.22997 0.26497 2e-05 2e-05 2e-05 2e-05 2e-05 2e-05 0.27497; % b D=0.01
5e-06 5e-06 5e-06 5e-06 0.999955 5e-06 5e-06 5e-06 5e-06 5e-06; % f D=0.01
0.25497 0.22997 0.30997 2e-05 2e-05 2e-05 2e-05 2e-05 2e-05 0.20497; % l D=0.01
5e-06 5e-06 5e-06 5e-06 5e-06 5e-06 0.999955 5e-06 5e-06 5e-06; % n D=0.01
5e-06 5e-06 5e-06 5e-06 5e-06 5e-06 5e-06 0.999955 5e-06 5e-06; % t D=0.01
5e-06 5e-06 5e-06 5e-06 5e-06 5e-06 5e-06 5e-06 0.999955 5e-06; % v D=0.01
4e-05 0.31324 0.359906666666667 4e-05 4e-05 4e-05 4e-05 4e-05 4e-05 0.326573333333333; % $ D=0.02
1e-05 1e-05 1e-05 1e-05 1e-05 0.99991 1e-05 1e-05 1e-05 1e-05; % B D=0.02
1e-05 1e-05 1e-05 0.99991 1e-05 1e-05 1e-05 1e-05 1e-05 1e-05; % M D=0.02
0.26494 0.30494 0.15494 4e-05 4e-05 4e-05 4e-05 4e-05 4e-05 0.27494; % Z D=0.02
0.22994 0.22994 0.26494 4e-05 4e-05 4e-05 4e-05 4e-05 4e-05 0.27494; % b D=0.02
1e-05 1e-05 1e-05 1e-05 0.99991 1e-05 1e-05 1e-05 1e-05 1e-05; % f D=0.02
0.25494 0.22994 0.30994 4e-05 4e-05 4e-05 4e-05 4e-05 4e-05 0.20494; % l D=0.02
1e-05 1e-05 1e-05 1e-05 1e-05 1e-05 0.99991 1e-05 1e-05 1e-05; % n D=0.02
1e-05 1e-05 1e-05 1e-05 1e-05 1e-05 1e-05 0.99991 1e-05 1e-05; % t D=0.02
1e-05 1e-05 1e-05 1e-05 1e-05 1e-05 1e-05 1e-05 0.99991 1e-05; % v D=0.02
0.0001 0.3131 0.359766666666667 0.0001 0.0001 0.0001 0.0001 0.0001 0.0001 0.326433333333333; % $ D=0.05
2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 0.999775 2.5e-05 2.5e-05 2.5e-05 2.5e-05; % B D=0.05
2.5e-05 2.5e-05 2.5e-05 0.999775 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05; % M D=0.05
0.26485 0.30485 0.15485 0.0001 0.0001 0.0001 0.0001 0.0001 0.0001 0.27485; % Z D=0.05
0.22985 0.22985 0.26485 0.0001 0.0001 0.0001 0.0001 0.0001 0.0001 0.27485; % b D=0.05
2.5e-05 2.5e-05 2.5e-05 2.5e-05 0.999775 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05; % f D=0.05
0.25485 0.22985 0.30985 0.0001 0.0001 0.0001 0.0001 0.0001 0.0001 0.20485; % l D=0.05
2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 0.999775 2.5e-05 2.5e-05 2.5e-05; % n D=0.05
2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 0.999775 2.5e-05 2.5e-05; % t D=0.05
2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 0.999775 2.5e-05; % v D=0.05
0.0002 0.312866666666667 0.359533333333333 0.0002 0.0002 0.0002 0.0002 0.0002 0.0002 0.3262; % $ D=0.1
5e-05 5e-05 5e-05 5e-05 5e-05 0.99955 5e-05 5e-05 5e-05 5e-05; % B D=0.1
5e-05 5e-05 5e-05 0.99955 5e-05 5e-05 5e-05 5e-05 5e-05 5e-05; % M D=0.1
0.2647 0.3047 0.1547 0.0002 0.0002 0.0002 0.0002 0.0002 0.0002 0.2747; % Z D=0.1
0.2297 0.2297 0.2647 0.0002 0.0002 0.0002 0.0002 0.0002 0.0002 0.2747; % b D=0.1
5e-05 5e-05 5e-05 5e-05 0.99955 5e-05 5e-05 5e-05 5e-05 5e-05; % f D=0.1
0.2547 0.2297 0.3097 0.0002 0.0002 0.0002 0.0002 0.0002 0.0002 0.2047; % l D=0.1
5e-05 5e-05 5e-05 5e-05 5e-05 5e-05 0.99955 5e-05 5e-05 5e-05; % n D=0.1
5e-05 5e-05 5e-05 5e-05 5e-05 5e-05 5e-05 0.99955 5e-05 5e-05; % t D=0.1
5e-05 5e-05 5e-05 5e-05 5e-05 5e-05 5e-05 5e-05 0.99955 5e-05; % v D=0.1
0.0004 0.3124 0.359066666666667 0.0004 0.0004 0.0004 0.0004 0.0004 0.0004 0.325733333333333; % $ D=0.2
0.0001 0.0001 0.0001 0.0001 0.0001 0.9991 0.0001 0.0001 0.0001 0.0001; % B D=0.2
0.0001 0.0001 0.0001 0.9991 0.0001 0.0001 0.0001 0.0001 0.0001 0.0001; % M D=0.2
0.2644 0.3044 0.1544 0.0004 0.0004 0.0004 0.0004 0.0004 0.0004 0.2744; % Z D=0.2
0.2294 0.2294 0.2644 0.0004 0.0004 0.0004 0.0004 0.0004 0.0004 0.2744; % b D=0.2
0.0001 0.0001 0.0001 0.0001 0.9991 0.0001 0.0001 0.0001 0.0001 0.0001; % f D=0.2
0.2544 0.2294 0.3094 0.0004 0.0004 0.0004 0.0004 0.0004 0.0004 0.2044; % l D=0.2
0.0001 0.0001 0.0001 0.0001 0.0001 0.0001 0.9991 0.0001 0.0001 0.0001; % n D=0.2
0.0001 0.0001 0.0001 0.0001 0.0001 0.0001 0.0001 0.9991 0.0001 0.0001; % t D=0.2
0.0001 0.0001 0.0001 0.0001 0.0001 0.0001 0.0001 0.0001 0.9991 0.0001; % v D=0.2
0.001 0.311 0.357666666666667 0.001 0.001 0.001 0.001 0.001 0.001 0.324333333333333; % $ D=0.5
0.00025 0.00025 0.00025 0.00025 0.00025 0.99775 0.00025 0.00025 0.00025 0.00025; % B D=0.5
0.00025 0.00025 0.00025 0.99775 0.00025 0.00025 0.00025 0.00025 0.00025 0.00025; % M D=0.5
0.2635 0.3035 0.1535 0.001 0.001 0.001 0.001 0.001 0.001 0.2735; % Z D=0.5
0.2285 0.2285 0.2635 0.001 0.001 0.001 0.001 0.001 0.001 0.2735; % b D=0.5
0.00025 0.00025 0.00025 0.00025 0.99775 0.00025 0.00025 0.00025 0.00025 0.00025; % f D=0.5
0.2535 0.2285 0.3085 0.001 0.001 0.001 0.001 0.001 0.001 0.2035; % l D=0.5
0.00025 0.00025 0.00025 0.00025 0.00025 0.00025 0.99775 0.00025 0.00025 0.00025; % n D=0.5
0.00025 0.00025 0.00025 0.00025 0.00025 0.00025 0.00025 0.99775 0.00025 0.00025; % t D=0.5
0.00025 0.00025 0.00025 0.00025 0.00025 0.00025 0.00025 0.00025 0.99775 0.00025; % v D=0.5
0.002 0.308666666666667 0.355333333333333 0.002 0.002 0.002 0.002 0.002 0.002 0.322; % $ D=1
0.0005 0.0005 0.0005 0.0005 0.0005 0.9955 0.0005 0.0005 0.0005 0.0005; % B D=1
0.0005 0.0005 0.0005 0.9955 0.0005 0.0005 0.0005 0.0005 0.0005 0.0005; % M D=1
0.262 0.302 0.152 0.002 0.002 0.002 0.002 0.002 0.002 0.272; % Z D=1
0.227 0.227 0.262 0.002 0.002 0.002 0.002 0.002 0.002 0.272; % b D=1
0.0005 0.0005 0.0005 0.0005 0.9955 0.0005 0.0005 0.0005 0.0005 0.0005; % f D=1
0.252 0.227 0.307 0.002 0.002 0.002 0.002 0.002 0.002 0.202; % l D=1
0.0005 0.0005 0.0005 0.0005 0.0005 0.0005 0.9955 0.0005 0.0005 0.0005; % n D=1
0.0005 0.0005 0.0005 0.0005 0.0005 0.0005 0.0005 0.9955 0.0005 0.0005; % t D=1
0.0005 0.0005 0.0005 0.0005 0.0005 0.0005 0.0005 0.0005 0.9955 0.0005; % v D=1
0.004 0.304 0.350666666666667 0.004 0.004 0.004 0.004 0.004 0.004 0.317333333333333; % $ D=2
0.001 0.001 0.001 0.001 0.001 0.991 0.001 0.001 0.001 0.001; % B D=2
0.001 0.001 0.001 0.991 0.001 0.001 0.001 0.001 0.001 0.001; % M D=2
0.259 0.299 0.149 0.004 0.004 0.004 0.004 0.004 0.004 0.269; % Z D=2
0.224 0.224 0.259 0.004 0.004 0.004 0.004 0.004 0.004 0.269; % b D=2
0.001 0.001 0.001 0.001 0.991 0.001 0.001 0.001 0.001 0.001; % f D=2
0.249 0.224 0.304 0.004 0.004 0.004 0.004 0.004 0.004 0.199; % l D=2
0.001 0.001 0.001 0.001 0.001 0.001 0.991 0.001 0.001 0.001; % n D=2
0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.991 0.001 0.001; % t D=2
0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.991 0.001; % v D=2
0.006 0.299333333333333 0.346 0.006 0.006 0.006 0.006 0.006 0.006 0.312666666666667; % $ D=3
0.0015 0.0015 0.0015 0.0015 0.0015 0.9865 0.0015 0.0015 0.0015 0.0015; % B D=3
0.0015 0.0015 0.0015 0.9865 0.0015 0.0015 0.0015 0.0015 0.0015 0.0015; % M D=3
0.256 0.296 0.146 0.006 0.006 0.006 0.006 0.006 0.006 0.266; % Z D=3
0.221 0.221 0.256 0.006 0.006 0.006 0.006 0.006 0.006 0.266; % b D=3
0.0015 0.0015 0.0015 0.0015 0.9865 0.0015 0.0015 0.0015 0.0015 0.0015; % f D=3
0.246 0.221 0.301 0.006 0.006 0.006 0.006 0.006 0.006 0.196; % l D=3
0.0015 0.0015 0.0015 0.0015 0.0015 0.0015 0.9865 0.0015 0.0015 0.0015; % n D=3
0.0015 0.0015 0.0015 0.0015 0.0015 0.0015 0.0015 0.9865 0.0015 0.0015; % t D=3
0.0015 0.0015 0.0015 0.0015 0.0015 0.0015 0.0015 0.0015 0.9865 0.0015; % v D=3
0.008 0.294666666666667 0.341333333333333 0.008 0.008 0.008 0.008 0.008 0.008 0.308; % $ D=4
0.002 0.002 0.002 0.002 0.002 0.982 0.002 0.002 0.002 0.002; % B D=4
0.002 0.002 0.002 0.982 0.002 0.002 0.002 0.002 0.002 0.002; % M D=4
0.253 0.293 0.143 0.008 0.008 0.008 0.008 0.008 0.008 0.263; % Z D=4
0.218 0.218 0.253 0.008 0.008 0.008 0.008 0.008 0.008 0.263; % b D=4
0.002 0.002 0.002 0.002 0.982 0.002 0.002 0.002 0.002 0.002; % f D=4
0.243 0.218 0.298 0.008 0.008 0.008 0.008 0.008 0.008 0.193; % l D=4
0.002 0.002 0.002 0.002 0.002 0.002 0.982 0.002 0.002 0.002; % n D=4
0.002 0.002 0.002 0.002 0.002 0.002 0.002 0.982 0.002 0.002; % t D=4
0.002 0.002 0.002 0.002 0.002 0.002 0.002 0.002 0.982 0.002; % v D=4
0.01 0.29 0.336666666666667 0.01 0.01 0.01 0.01 0.01 0.01 0.303333333333333; % $ D=5
0.0025 0.0025 0.0025 0.0025 0.0025 0.9775 0.0025 0.0025 0.0025 0.0025; % B D=5
0.0025 0.0025 0.0025 0.9775 0.0025 0.0025 0.0025 0.0025 0.0025 0.0025; % M D=5
0.25 0.29 0.14 0.01 0.01 0.01 0.01 0.01 0.01 0.26; % Z D=5
0.215 0.215 0.25 0.01 0.01 0.01 0.01 0.01 0.01 0.26; % b D=5
0.0025 0.0025 0.0025 0.0025 0.9775 0.0025 0.0025 0.0025 0.0025 0.0025; % f D=5
0.24 0.215 0.295 0.01 0.01 0.01 0.01 0.01 0.01 0.19; % l D=5
0.0025 0.0025 0.0025 0.0025 0.0025 0.0025 0.9775 0.0025 0.0025 0.0025; % n D=5
0.0025 0.0025 0.0025 0.0025 0.0025 0.0025 0.0025 0.9775 0.0025 0.0025; % t D=5
0.0025 0.0025 0.0025 0.0025 0.0025 0.0025 0.0025 0.0025 0.9775 0.0025; % v D=5
0.012 0.285333333333333 0.332 0.012 0.012 0.012 0.012 0.012 0.012 0.298666666666667; % $ D=6
0.003 0.003 0.003 0.003 0.003 0.973 0.003 0.003 0.003 0.003; % B D=6
0.003 0.003 0.003 0.973 0.003 0.003 0.003 0.003 0.003 0.003; % M D=6
0.247 0.287 0.137 0.012 0.012 0.012 0.012 0.012 0.012 0.257; % Z D=6
0.212 0.212 0.247 0.012 0.012 0.012 0.012 0.012 0.012 0.257; % b D=6
0.003 0.003 0.003 0.003 0.973 0.003 0.003 0.003 0.003 0.003; % f D=6
0.237 0.212 0.292 0.012 0.012 0.012 0.012 0.012 0.012 0.187; % l D=6
0.003 0.003 0.003 0.003 0.003 0.003 0.973 0.003 0.003 0.003; % n D=6
0.003 0.003 0.003 0.003 0.003 0.003 0.003 0.973 0.003 0.003; % t D=6
0.003 0.003 0.003 0.003 0.003 0.003 0.003 0.003 0.973 0.003; % v D=6
0.016 0.276 0.322666666666667 0.016 0.016 0.016 0.016 0.016 0.016 0.289333333333333; % $ D=8
0.004 0.004 0.004 0.004 0.004 0.964 0.004 0.004 0.004 0.004; % B D=8
0.004 0.004 0.004 0.964 0.004 0.004 0.004 0.004 0.004 0.004; % M D=8
0.241 0.281 0.131 0.016 0.016 0.016 0.016 0.016 0.016 0.251; % Z D=8
0.206 0.206 0.241 0.016 0.016 0.016 0.016 0.016 0.016 0.251; % b D=8
0.004 0.004 0.004 0.004 0.964 0.004 0.004 0.004 0.004 0.004; % f D=8
0.231 0.206 0.286 0.016 0.016 0.016 0.016 0.016 0.016 0.181; % l D=8
0.004 0.004 0.004 0.004 0.004 0.004 0.964 0.004 0.004 0.004; % n D=8
0.004 0.004 0.004 0.004 0.004 0.004 0.004 0.964 0.004 0.004; % t D=8
0.004 0.004 0.004 0.004 0.004 0.004 0.004 0.004 0.964 0.004; % v D=8
0.02 0.266666666666667 0.313333333333333 0.02 0.02 0.02 0.02 0.02 0.02 0.28; % $ D=10
0.005 0.005 0.005 0.005 0.005 0.955 0.005 0.005 0.005 0.005; % B D=10
0.005 0.005 0.005 0.955 0.005 0.005 0.005 0.005 0.005 0.005; % M D=10
0.235 0.275 0.125 0.02 0.02 0.02 0.02 0.02 0.02 0.245; % Z D=10
0.2 0.2 0.235 0.02 0.02 0.02 0.02 0.02 0.02 0.245; % b D=10
0.005 0.005 0.005 0.005 0.955 0.005 0.005 0.005 0.005 0.005; % f D=10
0.225 0.2 0.28 0.02 0.02 0.02 0.02 0.02 0.02 0.175; % l D=10
0.005 0.005 0.005 0.005 0.005 0.005 0.955 0.005 0.005 0.005; % n D=10
0.005 0.005 0.005 0.005 0.005 0.005 0.005 0.955 0.005 0.005; % t D=10
0.005 0.005 0.005 0.005 0.005 0.005 0.005 0.005 0.955 0.005; % v D=10
0.03 0.243333333333333 0.29 0.03 0.03 0.03 0.03 0.03 0.03 0.256666666666667; % $ D=15
0.0075 0.0075 0.0075 0.0075 0.0075 0.9325 0.0075 0.0075 0.0075 0.0075; % B D=15
0.0075 0.0075 0.0075 0.9325 0.0075 0.0075 0.0075 0.0075 0.0075 0.0075; % M D=15
0.22 0.26 0.11 0.03 0.03 0.03 0.03 0.03 0.03 0.23; % Z D=15
0.185 0.185 0.22 0.03 0.03 0.03 0.03 0.03 0.03 0.23; % b D=15
0.0075 0.0075 0.0075 0.0075 0.9325 0.0075 0.0075 0.0075 0.0075 0.0075; % f D=15
0.21 0.185 0.265 0.03 0.03 0.03 0.03 0.03 0.03 0.16; % l D=15
0.0075 0.0075 0.0075 0.0075 0.0075 0.0075 0.9325 0.0075 0.0075 0.0075; % n D=15
0.0075 0.0075 0.0075 0.0075 0.0075 0.0075 0.0075 0.9325 0.0075 0.0075; % t D=15
0.0075 0.0075 0.0075 0.0075 0.0075 0.0075 0.0075 0.0075 0.9325 0.0075; % v D=15
0.04 0.22 0.266666666666667 0.04 0.04 0.04 0.04 0.04 0.04 0.233333333333333; % $ D=20
0.01 0.01 0.01 0.01 0.01 0.91 0.01 0.01 0.01 0.01; % B D=20
0.01 0.01 0.01 0.91 0.01 0.01 0.01 0.01 0.01 0.01; % M D=20
0.205 0.245 0.095 0.04 0.04 0.04 0.04 0.04 0.04 0.215; % Z D=20
0.17 0.17 0.205 0.04 0.04 0.04 0.04 0.04 0.04 0.215; % b D=20
0.01 0.01 0.01 0.01 0.91 0.01 0.01 0.01 0.01 0.01; % f D=20
0.195 0.17 0.25 0.04 0.04 0.04 0.04 0.04 0.04 0.145; % l D=20
0.01 0.01 0.01 0.01 0.01 0.01 0.91 0.01 0.01 0.01; % n D=20
0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.91 0.01 0.01; % t D=20
0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.91 0.01; % v D=20
0.06 0.173333333333333 0.22 0.06 0.06 0.06 0.06 0.06 0.06 0.186666666666667; % $ D=30
0.015 0.015 0.015 0.015 0.015 0.865 0.015 0.015 0.015 0.015; % B D=30
0.015 0.015 0.015 0.865 0.015 0.015 0.015 0.015 0.015 0.015; % M D=30
0.175 0.215 0.065 0.06 0.06 0.06 0.06 0.06 0.06 0.185; % Z D=30
0.14 0.14 0.175 0.06 0.06 0.06 0.06 0.06 0.06 0.185; % b D=30
0.015 0.015 0.015 0.015 0.865 0.015 0.015 0.015 0.015 0.015; % f D=30
0.165 0.14 0.22 0.06 0.06 0.06 0.06 0.06 0.06 0.115; % l D=30
0.015 0.015 0.015 0.015 0.015 0.015 0.865 0.015 0.015 0.015; % n D=30
0.015 0.015 0.015 0.015 0.015 0.015 0.015 0.865 0.015 0.015; % t D=30
0.015 0.015 0.015 0.015 0.015 0.015 0.015 0.015 0.865 0.015; % v D=30
0.1 0.1 0.126666666666667 0.1 0.1 0.1 0.1 0.1 0.1 0.1; % $ D=50
0.025 0.025 0.025 0.025 0.025 0.775 0.025 0.025 0.025 0.025; % B D=50
0.025 0.025 0.025 0.775 0.025 0.025 0.025 0.025 0.025 0.025; % M D=50
0.115 0.155 0.1 0.1 0.1 0.1 0.1 0.1 0.1 0.125; % Z D=50
0.1 0.1 0.115 0.1 0.1 0.1 0.1 0.1 0.1 0.125; % b D=50
0.025 0.025 0.025 0.025 0.775 0.025 0.025 0.025 0.025 0.025; % f D=50
0.105 0.1 0.16 0.1 0.1 0.1 0.1 0.1 0.1 0.1; % l D=50
0.025 0.025 0.025 0.025 0.025 0.025 0.775 0.025 0.025 0.025; % n D=50
0.025 0.025 0.025 0.025 0.025 0.025 0.025 0.775 0.025 0.025; % t D=50
0.025 0.025 0.025 0.025 0.025 0.025 0.025 0.025 0.775 0.025]; % v D=50
