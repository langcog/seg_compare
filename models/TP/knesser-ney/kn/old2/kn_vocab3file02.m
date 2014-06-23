syllables = '$DGJPZdfgl';
discounts = [0.01 0.02 0.05 0.1 0.2 0.5 1 2 3 4 5 6 8 10 15 20 30 50];
kn_probs = [2e-05 2e-05 2e-05 2e-05 0.359953333333333 0.333286666666667 2e-05 2e-05 0.30662 2e-05; % $ D=0.01
5e-06 5e-06 0.999955 5e-06 5e-06 5e-06 5e-06 5e-06 5e-06 5e-06; % D D=0.01
5e-06 5e-06 5e-06 5e-06 5e-06 5e-06 0.999955 5e-06 5e-06 5e-06; % G D=0.01
0.234965 1.5e-05 1.5e-05 1.5e-05 1.5e-05 0.384965 1.5e-05 1.5e-05 0.379965 1.5e-05; % J D=0.01
5e-06 5e-06 5e-06 5e-06 5e-06 5e-06 5e-06 0.999955 5e-06 5e-06; % P D=0.01
5e-06 5e-06 5e-06 5e-06 5e-06 5e-06 5e-06 5e-06 5e-06 0.999955; % Z D=0.01
0.299965 1.5e-05 1.5e-05 1.5e-05 0.349965 0.349965 1.5e-05 1.5e-05 1.5e-05 1.5e-05; % d D=0.01
5e-06 5e-06 5e-06 0.999955 5e-06 5e-06 5e-06 5e-06 5e-06 5e-06; % f D=0.01
5e-06 0.999955 5e-06 5e-06 5e-06 5e-06 5e-06 5e-06 5e-06 5e-06; % g D=0.01
0.21497 2e-05 2e-05 2e-05 0.37997 0.01497 2e-05 2e-05 0.38997 2e-05; % l D=0.01
4e-05 4e-05 4e-05 4e-05 0.359906666666667 0.33324 4e-05 4e-05 0.306573333333333 4e-05; % $ D=0.02
1e-05 1e-05 0.99991 1e-05 1e-05 1e-05 1e-05 1e-05 1e-05 1e-05; % D D=0.02
1e-05 1e-05 1e-05 1e-05 1e-05 1e-05 0.99991 1e-05 1e-05 1e-05; % G D=0.02
0.23493 3e-05 3e-05 3e-05 3e-05 0.38493 3e-05 3e-05 0.37993 3e-05; % J D=0.02
1e-05 1e-05 1e-05 1e-05 1e-05 1e-05 1e-05 0.99991 1e-05 1e-05; % P D=0.02
1e-05 1e-05 1e-05 1e-05 1e-05 1e-05 1e-05 1e-05 1e-05 0.99991; % Z D=0.02
0.29993 3e-05 3e-05 3e-05 0.34993 0.34993 3e-05 3e-05 3e-05 3e-05; % d D=0.02
1e-05 1e-05 1e-05 0.99991 1e-05 1e-05 1e-05 1e-05 1e-05 1e-05; % f D=0.02
1e-05 0.99991 1e-05 1e-05 1e-05 1e-05 1e-05 1e-05 1e-05 1e-05; % g D=0.02
0.21494 4e-05 4e-05 4e-05 0.37994 0.01494 4e-05 4e-05 0.38994 4e-05; % l D=0.02
0.0001 0.0001 0.0001 0.0001 0.359766666666667 0.3331 0.0001 0.0001 0.306433333333333 0.0001; % $ D=0.05
2.5e-05 2.5e-05 0.999775 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05; % D D=0.05
2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 0.999775 2.5e-05 2.5e-05 2.5e-05; % G D=0.05
0.234825 7.5e-05 7.5e-05 7.5e-05 7.5e-05 0.384825 7.5e-05 7.5e-05 0.379825 7.5e-05; % J D=0.05
2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 0.999775 2.5e-05 2.5e-05; % P D=0.05
2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 0.999775; % Z D=0.05
0.299825 7.5e-05 7.5e-05 7.5e-05 0.349825 0.349825 7.5e-05 7.5e-05 7.5e-05 7.5e-05; % d D=0.05
2.5e-05 2.5e-05 2.5e-05 0.999775 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05; % f D=0.05
2.5e-05 0.999775 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05; % g D=0.05
0.21485 0.0001 0.0001 0.0001 0.37985 0.01485 0.0001 0.0001 0.38985 0.0001; % l D=0.05
0.0002 0.0002 0.0002 0.0002 0.359533333333333 0.332866666666667 0.0002 0.0002 0.3062 0.0002; % $ D=0.1
5e-05 5e-05 0.99955 5e-05 5e-05 5e-05 5e-05 5e-05 5e-05 5e-05; % D D=0.1
5e-05 5e-05 5e-05 5e-05 5e-05 5e-05 0.99955 5e-05 5e-05 5e-05; % G D=0.1
0.23465 0.00015 0.00015 0.00015 0.00015 0.38465 0.00015 0.00015 0.37965 0.00015; % J D=0.1
5e-05 5e-05 5e-05 5e-05 5e-05 5e-05 5e-05 0.99955 5e-05 5e-05; % P D=0.1
5e-05 5e-05 5e-05 5e-05 5e-05 5e-05 5e-05 5e-05 5e-05 0.99955; % Z D=0.1
0.29965 0.00015 0.00015 0.00015 0.34965 0.34965 0.00015 0.00015 0.00015 0.00015; % d D=0.1
5e-05 5e-05 5e-05 0.99955 5e-05 5e-05 5e-05 5e-05 5e-05 5e-05; % f D=0.1
5e-05 0.99955 5e-05 5e-05 5e-05 5e-05 5e-05 5e-05 5e-05 5e-05; % g D=0.1
0.2147 0.0002 0.0002 0.0002 0.3797 0.0147 0.0002 0.0002 0.3897 0.0002; % l D=0.1
0.0004 0.0004 0.0004 0.0004 0.359066666666667 0.3324 0.0004 0.0004 0.305733333333333 0.0004; % $ D=0.2
0.0001 0.0001 0.9991 0.0001 0.0001 0.0001 0.0001 0.0001 0.0001 0.0001; % D D=0.2
0.0001 0.0001 0.0001 0.0001 0.0001 0.0001 0.9991 0.0001 0.0001 0.0001; % G D=0.2
0.2343 0.0003 0.0003 0.0003 0.0003 0.3843 0.0003 0.0003 0.3793 0.0003; % J D=0.2
0.0001 0.0001 0.0001 0.0001 0.0001 0.0001 0.0001 0.9991 0.0001 0.0001; % P D=0.2
0.0001 0.0001 0.0001 0.0001 0.0001 0.0001 0.0001 0.0001 0.0001 0.9991; % Z D=0.2
0.2993 0.0003 0.0003 0.0003 0.3493 0.3493 0.0003 0.0003 0.0003 0.0003; % d D=0.2
0.0001 0.0001 0.0001 0.9991 0.0001 0.0001 0.0001 0.0001 0.0001 0.0001; % f D=0.2
0.0001 0.9991 0.0001 0.0001 0.0001 0.0001 0.0001 0.0001 0.0001 0.0001; % g D=0.2
0.2144 0.0004 0.0004 0.0004 0.3794 0.0144 0.0004 0.0004 0.3894 0.0004; % l D=0.2
0.001 0.001 0.001 0.001 0.357666666666667 0.331 0.001 0.001 0.304333333333333 0.001; % $ D=0.5
0.00025 0.00025 0.99775 0.00025 0.00025 0.00025 0.00025 0.00025 0.00025 0.00025; % D D=0.5
0.00025 0.00025 0.00025 0.00025 0.00025 0.00025 0.99775 0.00025 0.00025 0.00025; % G D=0.5
0.23325 0.00075 0.00075 0.00075 0.00075 0.38325 0.00075 0.00075 0.37825 0.00075; % J D=0.5
0.00025 0.00025 0.00025 0.00025 0.00025 0.00025 0.00025 0.99775 0.00025 0.00025; % P D=0.5
0.00025 0.00025 0.00025 0.00025 0.00025 0.00025 0.00025 0.00025 0.00025 0.99775; % Z D=0.5
0.29825 0.00075 0.00075 0.00075 0.34825 0.34825 0.00075 0.00075 0.00075 0.00075; % d D=0.5
0.00025 0.00025 0.00025 0.99775 0.00025 0.00025 0.00025 0.00025 0.00025 0.00025; % f D=0.5
0.00025 0.99775 0.00025 0.00025 0.00025 0.00025 0.00025 0.00025 0.00025 0.00025; % g D=0.5
0.2135 0.001 0.001 0.001 0.3785 0.0135 0.001 0.001 0.3885 0.001; % l D=0.5
0.002 0.002 0.002 0.002 0.355333333333333 0.328666666666667 0.002 0.002 0.302 0.002; % $ D=1
0.0005 0.0005 0.9955 0.0005 0.0005 0.0005 0.0005 0.0005 0.0005 0.0005; % D D=1
0.0005 0.0005 0.0005 0.0005 0.0005 0.0005 0.9955 0.0005 0.0005 0.0005; % G D=1
0.2315 0.0015 0.0015 0.0015 0.0015 0.3815 0.0015 0.0015 0.3765 0.0015; % J D=1
0.0005 0.0005 0.0005 0.0005 0.0005 0.0005 0.0005 0.9955 0.0005 0.0005; % P D=1
0.0005 0.0005 0.0005 0.0005 0.0005 0.0005 0.0005 0.0005 0.0005 0.9955; % Z D=1
0.2965 0.0015 0.0015 0.0015 0.3465 0.3465 0.0015 0.0015 0.0015 0.0015; % d D=1
0.0005 0.0005 0.0005 0.9955 0.0005 0.0005 0.0005 0.0005 0.0005 0.0005; % f D=1
0.0005 0.9955 0.0005 0.0005 0.0005 0.0005 0.0005 0.0005 0.0005 0.0005; % g D=1
0.212 0.002 0.002 0.002 0.377 0.012 0.002 0.002 0.387 0.002; % l D=1
0.004 0.004 0.004 0.004 0.350666666666667 0.324 0.004 0.004 0.297333333333333 0.004; % $ D=2
0.001 0.001 0.991 0.001 0.001 0.001 0.001 0.001 0.001 0.001; % D D=2
0.001 0.001 0.001 0.001 0.001 0.001 0.991 0.001 0.001 0.001; % G D=2
0.228 0.003 0.003 0.003 0.003 0.378 0.003 0.003 0.373 0.003; % J D=2
0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.991 0.001 0.001; % P D=2
0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.991; % Z D=2
0.293 0.003 0.003 0.003 0.343 0.343 0.003 0.003 0.003 0.003; % d D=2
0.001 0.001 0.001 0.991 0.001 0.001 0.001 0.001 0.001 0.001; % f D=2
0.001 0.991 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001; % g D=2
0.209 0.004 0.004 0.004 0.374 0.009 0.004 0.004 0.384 0.004; % l D=2
0.006 0.006 0.006 0.006 0.346 0.319333333333333 0.006 0.006 0.292666666666667 0.006; % $ D=3
0.0015 0.0015 0.9865 0.0015 0.0015 0.0015 0.0015 0.0015 0.0015 0.0015; % D D=3
0.0015 0.0015 0.0015 0.0015 0.0015 0.0015 0.9865 0.0015 0.0015 0.0015; % G D=3
0.2245 0.0045 0.0045 0.0045 0.0045 0.3745 0.0045 0.0045 0.3695 0.0045; % J D=3
0.0015 0.0015 0.0015 0.0015 0.0015 0.0015 0.0015 0.9865 0.0015 0.0015; % P D=3
0.0015 0.0015 0.0015 0.0015 0.0015 0.0015 0.0015 0.0015 0.0015 0.9865; % Z D=3
0.2895 0.0045 0.0045 0.0045 0.3395 0.3395 0.0045 0.0045 0.0045 0.0045; % d D=3
0.0015 0.0015 0.0015 0.9865 0.0015 0.0015 0.0015 0.0015 0.0015 0.0015; % f D=3
0.0015 0.9865 0.0015 0.0015 0.0015 0.0015 0.0015 0.0015 0.0015 0.0015; % g D=3
0.206 0.006 0.006 0.006 0.371 0.006 0.006 0.006 0.381 0.006; % l D=3
0.008 0.008 0.008 0.008 0.341333333333333 0.314666666666667 0.008 0.008 0.288 0.008; % $ D=4
0.002 0.002 0.982 0.002 0.002 0.002 0.002 0.002 0.002 0.002; % D D=4
0.002 0.002 0.002 0.002 0.002 0.002 0.982 0.002 0.002 0.002; % G D=4
0.221 0.006 0.006 0.006 0.006 0.371 0.006 0.006 0.366 0.006; % J D=4
0.002 0.002 0.002 0.002 0.002 0.002 0.002 0.982 0.002 0.002; % P D=4
0.002 0.002 0.002 0.002 0.002 0.002 0.002 0.002 0.002 0.982; % Z D=4
0.286 0.006 0.006 0.006 0.336 0.336 0.006 0.006 0.006 0.006; % d D=4
0.002 0.002 0.002 0.982 0.002 0.002 0.002 0.002 0.002 0.002; % f D=4
0.002 0.982 0.002 0.002 0.002 0.002 0.002 0.002 0.002 0.002; % g D=4
0.203 0.008 0.008 0.008 0.368 0.008 0.008 0.008 0.378 0.008; % l D=4
0.01 0.01 0.01 0.01 0.336666666666667 0.31 0.01 0.01 0.283333333333333 0.01; % $ D=5
0.0025 0.0025 0.9775 0.0025 0.0025 0.0025 0.0025 0.0025 0.0025 0.0025; % D D=5
0.0025 0.0025 0.0025 0.0025 0.0025 0.0025 0.9775 0.0025 0.0025 0.0025; % G D=5
0.2175 0.0075 0.0075 0.0075 0.0075 0.3675 0.0075 0.0075 0.3625 0.0075; % J D=5
0.0025 0.0025 0.0025 0.0025 0.0025 0.0025 0.0025 0.9775 0.0025 0.0025; % P D=5
0.0025 0.0025 0.0025 0.0025 0.0025 0.0025 0.0025 0.0025 0.0025 0.9775; % Z D=5
0.2825 0.0075 0.0075 0.0075 0.3325 0.3325 0.0075 0.0075 0.0075 0.0075; % d D=5
0.0025 0.0025 0.0025 0.9775 0.0025 0.0025 0.0025 0.0025 0.0025 0.0025; % f D=5
0.0025 0.9775 0.0025 0.0025 0.0025 0.0025 0.0025 0.0025 0.0025 0.0025; % g D=5
0.2 0.01 0.01 0.01 0.365 0.01 0.01 0.01 0.375 0.01; % l D=5
0.012 0.012 0.012 0.012 0.332 0.305333333333333 0.012 0.012 0.278666666666667 0.012; % $ D=6
0.003 0.003 0.973 0.003 0.003 0.003 0.003 0.003 0.003 0.003; % D D=6
0.003 0.003 0.003 0.003 0.003 0.003 0.973 0.003 0.003 0.003; % G D=6
0.214 0.009 0.009 0.009 0.009 0.364 0.009 0.009 0.359 0.009; % J D=6
0.003 0.003 0.003 0.003 0.003 0.003 0.003 0.973 0.003 0.003; % P D=6
0.003 0.003 0.003 0.003 0.003 0.003 0.003 0.003 0.003 0.973; % Z D=6
0.279 0.009 0.009 0.009 0.329 0.329 0.009 0.009 0.009 0.009; % d D=6
0.003 0.003 0.003 0.973 0.003 0.003 0.003 0.003 0.003 0.003; % f D=6
0.003 0.973 0.003 0.003 0.003 0.003 0.003 0.003 0.003 0.003; % g D=6
0.197 0.012 0.012 0.012 0.362 0.012 0.012 0.012 0.372 0.012; % l D=6
0.016 0.016 0.016 0.016 0.322666666666667 0.296 0.016 0.016 0.269333333333333 0.016; % $ D=8
0.004 0.004 0.964 0.004 0.004 0.004 0.004 0.004 0.004 0.004; % D D=8
0.004 0.004 0.004 0.004 0.004 0.004 0.964 0.004 0.004 0.004; % G D=8
0.207 0.012 0.012 0.012 0.012 0.357 0.012 0.012 0.352 0.012; % J D=8
0.004 0.004 0.004 0.004 0.004 0.004 0.004 0.964 0.004 0.004; % P D=8
0.004 0.004 0.004 0.004 0.004 0.004 0.004 0.004 0.004 0.964; % Z D=8
0.272 0.012 0.012 0.012 0.322 0.322 0.012 0.012 0.012 0.012; % d D=8
0.004 0.004 0.004 0.964 0.004 0.004 0.004 0.004 0.004 0.004; % f D=8
0.004 0.964 0.004 0.004 0.004 0.004 0.004 0.004 0.004 0.004; % g D=8
0.191 0.016 0.016 0.016 0.356 0.016 0.016 0.016 0.366 0.016; % l D=8
0.02 0.02 0.02 0.02 0.313333333333333 0.286666666666667 0.02 0.02 0.26 0.02; % $ D=10
0.005 0.005 0.955 0.005 0.005 0.005 0.005 0.005 0.005 0.005; % D D=10
0.005 0.005 0.005 0.005 0.005 0.005 0.955 0.005 0.005 0.005; % G D=10
0.2 0.015 0.015 0.015 0.015 0.35 0.015 0.015 0.345 0.015; % J D=10
0.005 0.005 0.005 0.005 0.005 0.005 0.005 0.955 0.005 0.005; % P D=10
0.005 0.005 0.005 0.005 0.005 0.005 0.005 0.005 0.005 0.955; % Z D=10
0.265 0.015 0.015 0.015 0.315 0.315 0.015 0.015 0.015 0.015; % d D=10
0.005 0.005 0.005 0.955 0.005 0.005 0.005 0.005 0.005 0.005; % f D=10
0.005 0.955 0.005 0.005 0.005 0.005 0.005 0.005 0.005 0.005; % g D=10
0.185 0.02 0.02 0.02 0.35 0.02 0.02 0.02 0.36 0.02; % l D=10
0.03 0.03 0.03 0.03 0.29 0.263333333333333 0.03 0.03 0.236666666666667 0.03; % $ D=15
0.0075 0.0075 0.9325 0.0075 0.0075 0.0075 0.0075 0.0075 0.0075 0.0075; % D D=15
0.0075 0.0075 0.0075 0.0075 0.0075 0.0075 0.9325 0.0075 0.0075 0.0075; % G D=15
0.1825 0.0225 0.0225 0.0225 0.0225 0.3325 0.0225 0.0225 0.3275 0.0225; % J D=15
0.0075 0.0075 0.0075 0.0075 0.0075 0.0075 0.0075 0.9325 0.0075 0.0075; % P D=15
0.0075 0.0075 0.0075 0.0075 0.0075 0.0075 0.0075 0.0075 0.0075 0.9325; % Z D=15
0.2475 0.0225 0.0225 0.0225 0.2975 0.2975 0.0225 0.0225 0.0225 0.0225; % d D=15
0.0075 0.0075 0.0075 0.9325 0.0075 0.0075 0.0075 0.0075 0.0075 0.0075; % f D=15
0.0075 0.9325 0.0075 0.0075 0.0075 0.0075 0.0075 0.0075 0.0075 0.0075; % g D=15
0.17 0.03 0.03 0.03 0.335 0.03 0.03 0.03 0.345 0.03; % l D=15
0.04 0.04 0.04 0.04 0.266666666666667 0.24 0.04 0.04 0.213333333333333 0.04; % $ D=20
0.01 0.01 0.91 0.01 0.01 0.01 0.01 0.01 0.01 0.01; % D D=20
0.01 0.01 0.01 0.01 0.01 0.01 0.91 0.01 0.01 0.01; % G D=20
0.165 0.03 0.03 0.03 0.03 0.315 0.03 0.03 0.31 0.03; % J D=20
0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.91 0.01 0.01; % P D=20
0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.91; % Z D=20
0.23 0.03 0.03 0.03 0.28 0.28 0.03 0.03 0.03 0.03; % d D=20
0.01 0.01 0.01 0.91 0.01 0.01 0.01 0.01 0.01 0.01; % f D=20
0.01 0.91 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01; % g D=20
0.155 0.04 0.04 0.04 0.32 0.04 0.04 0.04 0.33 0.04; % l D=20
0.06 0.06 0.06 0.06 0.22 0.193333333333333 0.06 0.06 0.166666666666667 0.06; % $ D=30
0.015 0.015 0.865 0.015 0.015 0.015 0.015 0.015 0.015 0.015; % D D=30
0.015 0.015 0.015 0.015 0.015 0.015 0.865 0.015 0.015 0.015; % G D=30
0.13 0.045 0.045 0.045 0.045 0.28 0.045 0.045 0.275 0.045; % J D=30
0.015 0.015 0.015 0.015 0.015 0.015 0.015 0.865 0.015 0.015; % P D=30
0.015 0.015 0.015 0.015 0.015 0.015 0.015 0.015 0.015 0.865; % Z D=30
0.195 0.045 0.045 0.045 0.245 0.245 0.045 0.045 0.045 0.045; % d D=30
0.015 0.015 0.015 0.865 0.015 0.015 0.015 0.015 0.015 0.015; % f D=30
0.015 0.865 0.015 0.015 0.015 0.015 0.015 0.015 0.015 0.015; % g D=30
0.125 0.06 0.06 0.06 0.29 0.06 0.06 0.06 0.3 0.06; % l D=30
0.1 0.1 0.1 0.1 0.126666666666667 0.1 0.1 0.1 0.1 0.1; % $ D=50
0.025 0.025 0.775 0.025 0.025 0.025 0.025 0.025 0.025 0.025; % D D=50
0.025 0.025 0.025 0.025 0.025 0.025 0.775 0.025 0.025 0.025; % G D=50
0.075 0.075 0.075 0.075 0.075 0.21 0.075 0.075 0.205 0.075; % J D=50
0.025 0.025 0.025 0.025 0.025 0.025 0.025 0.775 0.025 0.025; % P D=50
0.025 0.025 0.025 0.025 0.025 0.025 0.025 0.025 0.025 0.775; % Z D=50
0.125 0.075 0.075 0.075 0.175 0.175 0.075 0.075 0.075 0.075; % d D=50
0.025 0.025 0.025 0.775 0.025 0.025 0.025 0.025 0.025 0.025; % f D=50
0.025 0.775 0.025 0.025 0.025 0.025 0.025 0.025 0.025 0.025; % g D=50
0.1 0.1 0.1 0.1 0.23 0.1 0.1 0.1 0.24 0.1]; % l D=50
