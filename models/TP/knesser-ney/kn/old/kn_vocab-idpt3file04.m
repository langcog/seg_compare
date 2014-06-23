syllables = '$BFVbdkmrv';
discounts = [0.01 0.02 0.05 0.1 0.2 0.5 1 2 5];
kn_probs = [2e-05 2e-05 0.32662 2e-05 2e-05 2e-05 0.36662 2e-05 0.30662 2e-05; % $ D=0.01
5e-06 5e-06 5e-06 5e-06 5e-06 5e-06 5e-06 0.999955 5e-06 5e-06; % B D=0.01
5e-06 0.999955 5e-06 5e-06 5e-06 5e-06 5e-06 5e-06 5e-06 5e-06; % F D=0.01
0.22997 2e-05 0.30497 2e-05 2e-05 2e-05 0.29997 2e-05 0.16497 2e-05; % V D=0.01
0.25497 2e-05 0.26497 2e-05 2e-05 2e-05 0.19997 2e-05 0.27997 2e-05; % b D=0.01
5e-06 5e-06 5e-06 5e-06 5e-06 5e-06 5e-06 5e-06 5e-06 0.999955; % d D=0.01
5e-06 5e-06 5e-06 5e-06 5e-06 0.999955 5e-06 5e-06 5e-06 5e-06; % k D=0.01
0.26497 2e-05 0.18497 2e-05 2e-05 2e-05 0.22497 2e-05 0.32497 2e-05; % m D=0.01
5e-06 5e-06 5e-06 0.999955 5e-06 5e-06 5e-06 5e-06 5e-06 5e-06; % r D=0.01
5e-06 5e-06 5e-06 5e-06 0.999955 5e-06 5e-06 5e-06 5e-06 5e-06; % v D=0.01
4e-05 4e-05 0.326573333333333 4e-05 4e-05 4e-05 0.366573333333333 4e-05 0.306573333333333 4e-05; % $ D=0.02
1e-05 1e-05 1e-05 1e-05 1e-05 1e-05 1e-05 0.99991 1e-05 1e-05; % B D=0.02
1e-05 0.99991 1e-05 1e-05 1e-05 1e-05 1e-05 1e-05 1e-05 1e-05; % F D=0.02
0.22994 4e-05 0.30494 4e-05 4e-05 4e-05 0.29994 4e-05 0.16494 4e-05; % V D=0.02
0.25494 4e-05 0.26494 4e-05 4e-05 4e-05 0.19994 4e-05 0.27994 4e-05; % b D=0.02
1e-05 1e-05 1e-05 1e-05 1e-05 1e-05 1e-05 1e-05 1e-05 0.99991; % d D=0.02
1e-05 1e-05 1e-05 1e-05 1e-05 0.99991 1e-05 1e-05 1e-05 1e-05; % k D=0.02
0.26494 4e-05 0.18494 4e-05 4e-05 4e-05 0.22494 4e-05 0.32494 4e-05; % m D=0.02
1e-05 1e-05 1e-05 0.99991 1e-05 1e-05 1e-05 1e-05 1e-05 1e-05; % r D=0.02
1e-05 1e-05 1e-05 1e-05 0.99991 1e-05 1e-05 1e-05 1e-05 1e-05; % v D=0.02
0.0001 0.0001 0.326433333333333 0.0001 0.0001 0.0001 0.366433333333333 0.0001 0.306433333333333 0.0001; % $ D=0.05
2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 0.999775 2.5e-05 2.5e-05; % B D=0.05
2.5e-05 0.999775 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05; % F D=0.05
0.22985 0.0001 0.30485 0.0001 0.0001 0.0001 0.29985 0.0001 0.16485 0.0001; % V D=0.05
0.25485 0.0001 0.26485 0.0001 0.0001 0.0001 0.19985 0.0001 0.27985 0.0001; % b D=0.05
2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 0.999775; % d D=0.05
2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 0.999775 2.5e-05 2.5e-05 2.5e-05 2.5e-05; % k D=0.05
0.26485 0.0001 0.18485 0.0001 0.0001 0.0001 0.22485 0.0001 0.32485 0.0001; % m D=0.05
2.5e-05 2.5e-05 2.5e-05 0.999775 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05; % r D=0.05
2.5e-05 2.5e-05 2.5e-05 2.5e-05 0.999775 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05; % v D=0.05
0.0002 0.0002 0.3262 0.0002 0.0002 0.0002 0.3662 0.0002 0.3062 0.0002; % $ D=0.1
5e-05 5e-05 5e-05 5e-05 5e-05 5e-05 5e-05 0.99955 5e-05 5e-05; % B D=0.1
5e-05 0.99955 5e-05 5e-05 5e-05 5e-05 5e-05 5e-05 5e-05 5e-05; % F D=0.1
0.2297 0.0002 0.3047 0.0002 0.0002 0.0002 0.2997 0.0002 0.1647 0.0002; % V D=0.1
0.2547 0.0002 0.2647 0.0002 0.0002 0.0002 0.1997 0.0002 0.2797 0.0002; % b D=0.1
5e-05 5e-05 5e-05 5e-05 5e-05 5e-05 5e-05 5e-05 5e-05 0.99955; % d D=0.1
5e-05 5e-05 5e-05 5e-05 5e-05 0.99955 5e-05 5e-05 5e-05 5e-05; % k D=0.1
0.2647 0.0002 0.1847 0.0002 0.0002 0.0002 0.2247 0.0002 0.3247 0.0002; % m D=0.1
5e-05 5e-05 5e-05 0.99955 5e-05 5e-05 5e-05 5e-05 5e-05 5e-05; % r D=0.1
5e-05 5e-05 5e-05 5e-05 0.99955 5e-05 5e-05 5e-05 5e-05 5e-05; % v D=0.1
0.0004 0.0004 0.325733333333333 0.0004 0.0004 0.0004 0.365733333333333 0.0004 0.305733333333333 0.0004; % $ D=0.2
0.0001 0.0001 0.0001 0.0001 0.0001 0.0001 0.0001 0.9991 0.0001 0.0001; % B D=0.2
0.0001 0.9991 0.0001 0.0001 0.0001 0.0001 0.0001 0.0001 0.0001 0.0001; % F D=0.2
0.2294 0.0004 0.3044 0.0004 0.0004 0.0004 0.2994 0.0004 0.1644 0.0004; % V D=0.2
0.2544 0.0004 0.2644 0.0004 0.0004 0.0004 0.1994 0.0004 0.2794 0.0004; % b D=0.2
0.0001 0.0001 0.0001 0.0001 0.0001 0.0001 0.0001 0.0001 0.0001 0.9991; % d D=0.2
0.0001 0.0001 0.0001 0.0001 0.0001 0.9991 0.0001 0.0001 0.0001 0.0001; % k D=0.2
0.2644 0.0004 0.1844 0.0004 0.0004 0.0004 0.2244 0.0004 0.3244 0.0004; % m D=0.2
0.0001 0.0001 0.0001 0.9991 0.0001 0.0001 0.0001 0.0001 0.0001 0.0001; % r D=0.2
0.0001 0.0001 0.0001 0.0001 0.9991 0.0001 0.0001 0.0001 0.0001 0.0001; % v D=0.2
0.001 0.001 0.324333333333333 0.001 0.001 0.001 0.364333333333333 0.001 0.304333333333333 0.001; % $ D=0.5
0.00025 0.00025 0.00025 0.00025 0.00025 0.00025 0.00025 0.99775 0.00025 0.00025; % B D=0.5
0.00025 0.99775 0.00025 0.00025 0.00025 0.00025 0.00025 0.00025 0.00025 0.00025; % F D=0.5
0.2285 0.001 0.3035 0.001 0.001 0.001 0.2985 0.001 0.1635 0.001; % V D=0.5
0.2535 0.001 0.2635 0.001 0.001 0.001 0.1985 0.001 0.2785 0.001; % b D=0.5
0.00025 0.00025 0.00025 0.00025 0.00025 0.00025 0.00025 0.00025 0.00025 0.99775; % d D=0.5
0.00025 0.00025 0.00025 0.00025 0.00025 0.99775 0.00025 0.00025 0.00025 0.00025; % k D=0.5
0.2635 0.001 0.1835 0.001 0.001 0.001 0.2235 0.001 0.3235 0.001; % m D=0.5
0.00025 0.00025 0.00025 0.99775 0.00025 0.00025 0.00025 0.00025 0.00025 0.00025; % r D=0.5
0.00025 0.00025 0.00025 0.00025 0.99775 0.00025 0.00025 0.00025 0.00025 0.00025; % v D=0.5
0.002 0.002 0.322 0.002 0.002 0.002 0.362 0.002 0.302 0.002; % $ D=1
0.0005 0.0005 0.0005 0.0005 0.0005 0.0005 0.0005 0.9955 0.0005 0.0005; % B D=1
0.0005 0.9955 0.0005 0.0005 0.0005 0.0005 0.0005 0.0005 0.0005 0.0005; % F D=1
0.227 0.002 0.302 0.002 0.002 0.002 0.297 0.002 0.162 0.002; % V D=1
0.252 0.002 0.262 0.002 0.002 0.002 0.197 0.002 0.277 0.002; % b D=1
0.0005 0.0005 0.0005 0.0005 0.0005 0.0005 0.0005 0.0005 0.0005 0.9955; % d D=1
0.0005 0.0005 0.0005 0.0005 0.0005 0.9955 0.0005 0.0005 0.0005 0.0005; % k D=1
0.262 0.002 0.182 0.002 0.002 0.002 0.222 0.002 0.322 0.002; % m D=1
0.0005 0.0005 0.0005 0.9955 0.0005 0.0005 0.0005 0.0005 0.0005 0.0005; % r D=1
0.0005 0.0005 0.0005 0.0005 0.9955 0.0005 0.0005 0.0005 0.0005 0.0005; % v D=1
0.004 0.004 0.317333333333333 0.004 0.004 0.004 0.357333333333333 0.004 0.297333333333333 0.004; % $ D=2
0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.991 0.001 0.001; % B D=2
0.001 0.991 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001; % F D=2
0.224 0.004 0.299 0.004 0.004 0.004 0.294 0.004 0.159 0.004; % V D=2
0.249 0.004 0.259 0.004 0.004 0.004 0.194 0.004 0.274 0.004; % b D=2
0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.991; % d D=2
0.001 0.001 0.001 0.001 0.001 0.991 0.001 0.001 0.001 0.001; % k D=2
0.259 0.004 0.179 0.004 0.004 0.004 0.219 0.004 0.319 0.004; % m D=2
0.001 0.001 0.001 0.991 0.001 0.001 0.001 0.001 0.001 0.001; % r D=2
0.001 0.001 0.001 0.001 0.991 0.001 0.001 0.001 0.001 0.001; % v D=2
0.01 0.01 0.303333333333333 0.01 0.01 0.01 0.343333333333333 0.01 0.283333333333333 0.01; % $ D=5
0.0025 0.0025 0.0025 0.0025 0.0025 0.0025 0.0025 0.9775 0.0025 0.0025; % B D=5
0.0025 0.9775 0.0025 0.0025 0.0025 0.0025 0.0025 0.0025 0.0025 0.0025; % F D=5
0.215 0.01 0.29 0.01 0.01 0.01 0.285 0.01 0.15 0.01; % V D=5
0.24 0.01 0.25 0.01 0.01 0.01 0.185 0.01 0.265 0.01; % b D=5
0.0025 0.0025 0.0025 0.0025 0.0025 0.0025 0.0025 0.0025 0.0025 0.9775; % d D=5
0.0025 0.0025 0.0025 0.0025 0.0025 0.9775 0.0025 0.0025 0.0025 0.0025; % k D=5
0.25 0.01 0.17 0.01 0.01 0.01 0.21 0.01 0.31 0.01; % m D=5
0.0025 0.0025 0.0025 0.9775 0.0025 0.0025 0.0025 0.0025 0.0025 0.0025; % r D=5
0.0025 0.0025 0.0025 0.0025 0.9775 0.0025 0.0025 0.0025 0.0025 0.0025]; % v D=5
