syllables = '$BFTVglrvz';
discounts = [0.01 0.02 0.05 0.1 0.2 0.5 1 2 5];
kn_probs = [2e-05 2e-05 2e-05 2e-05 2e-05 2e-05 0.28662 2e-05 0.313286666666667 0.399953333333333; % $ D=0.01
5e-06 5e-06 0.999955 5e-06 5e-06 5e-06 5e-06 5e-06 5e-06 5e-06; % B D=0.01
0.23497 2e-05 2e-05 2e-05 2e-05 2e-05 0.25997 2e-05 0.27497 0.22997; % F D=0.01
0.24497 2e-05 2e-05 2e-05 2e-05 2e-05 0.28497 2e-05 0.26997 0.19997; % T D=0.01
5e-06 5e-06 5e-06 5e-06 5e-06 5e-06 5e-06 0.999955 5e-06 5e-06; % V D=0.01
0.26997 2e-05 2e-05 2e-05 2e-05 2e-05 0.23997 2e-05 0.21997 0.26997; % g D=0.01
5e-06 0.999955 5e-06 5e-06 5e-06 5e-06 5e-06 5e-06 5e-06 5e-06; % l D=0.01
5e-06 5e-06 5e-06 5e-06 5e-06 0.999955 5e-06 5e-06 5e-06 5e-06; % r D=0.01
5e-06 5e-06 5e-06 5e-06 0.999955 5e-06 5e-06 5e-06 5e-06 5e-06; % v D=0.01
5e-06 5e-06 5e-06 0.999955 5e-06 5e-06 5e-06 5e-06 5e-06 5e-06; % z D=0.01
4e-05 4e-05 4e-05 4e-05 4e-05 4e-05 0.286573333333333 4e-05 0.31324 0.399906666666667; % $ D=0.02
1e-05 1e-05 0.99991 1e-05 1e-05 1e-05 1e-05 1e-05 1e-05 1e-05; % B D=0.02
0.23494 4e-05 4e-05 4e-05 4e-05 4e-05 0.25994 4e-05 0.27494 0.22994; % F D=0.02
0.24494 4e-05 4e-05 4e-05 4e-05 4e-05 0.28494 4e-05 0.26994 0.19994; % T D=0.02
1e-05 1e-05 1e-05 1e-05 1e-05 1e-05 1e-05 0.99991 1e-05 1e-05; % V D=0.02
0.26994 4e-05 4e-05 4e-05 4e-05 4e-05 0.23994 4e-05 0.21994 0.26994; % g D=0.02
1e-05 0.99991 1e-05 1e-05 1e-05 1e-05 1e-05 1e-05 1e-05 1e-05; % l D=0.02
1e-05 1e-05 1e-05 1e-05 1e-05 0.99991 1e-05 1e-05 1e-05 1e-05; % r D=0.02
1e-05 1e-05 1e-05 1e-05 0.99991 1e-05 1e-05 1e-05 1e-05 1e-05; % v D=0.02
1e-05 1e-05 1e-05 0.99991 1e-05 1e-05 1e-05 1e-05 1e-05 1e-05; % z D=0.02
0.0001 0.0001 0.0001 0.0001 0.0001 0.0001 0.286433333333333 0.0001 0.3131 0.399766666666667; % $ D=0.05
2.5e-05 2.5e-05 0.999775 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05; % B D=0.05
0.23485 0.0001 0.0001 0.0001 0.0001 0.0001 0.25985 0.0001 0.27485 0.22985; % F D=0.05
0.24485 0.0001 0.0001 0.0001 0.0001 0.0001 0.28485 0.0001 0.26985 0.19985; % T D=0.05
2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 0.999775 2.5e-05 2.5e-05; % V D=0.05
0.26985 0.0001 0.0001 0.0001 0.0001 0.0001 0.23985 0.0001 0.21985 0.26985; % g D=0.05
2.5e-05 0.999775 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05; % l D=0.05
2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 0.999775 2.5e-05 2.5e-05 2.5e-05 2.5e-05; % r D=0.05
2.5e-05 2.5e-05 2.5e-05 2.5e-05 0.999775 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05; % v D=0.05
2.5e-05 2.5e-05 2.5e-05 0.999775 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05 2.5e-05; % z D=0.05
0.0002 0.0002 0.0002 0.0002 0.0002 0.0002 0.2862 0.0002 0.312866666666667 0.399533333333333; % $ D=0.1
5e-05 5e-05 0.99955 5e-05 5e-05 5e-05 5e-05 5e-05 5e-05 5e-05; % B D=0.1
0.2347 0.0002 0.0002 0.0002 0.0002 0.0002 0.2597 0.0002 0.2747 0.2297; % F D=0.1
0.2447 0.0002 0.0002 0.0002 0.0002 0.0002 0.2847 0.0002 0.2697 0.1997; % T D=0.1
5e-05 5e-05 5e-05 5e-05 5e-05 5e-05 5e-05 0.99955 5e-05 5e-05; % V D=0.1
0.2697 0.0002 0.0002 0.0002 0.0002 0.0002 0.2397 0.0002 0.2197 0.2697; % g D=0.1
5e-05 0.99955 5e-05 5e-05 5e-05 5e-05 5e-05 5e-05 5e-05 5e-05; % l D=0.1
5e-05 5e-05 5e-05 5e-05 5e-05 0.99955 5e-05 5e-05 5e-05 5e-05; % r D=0.1
5e-05 5e-05 5e-05 5e-05 0.99955 5e-05 5e-05 5e-05 5e-05 5e-05; % v D=0.1
5e-05 5e-05 5e-05 0.99955 5e-05 5e-05 5e-05 5e-05 5e-05 5e-05; % z D=0.1
0.0004 0.0004 0.0004 0.0004 0.0004 0.0004 0.285733333333333 0.0004 0.3124 0.399066666666667; % $ D=0.2
0.0001 0.0001 0.9991 0.0001 0.0001 0.0001 0.0001 0.0001 0.0001 0.0001; % B D=0.2
0.2344 0.0004 0.0004 0.0004 0.0004 0.0004 0.2594 0.0004 0.2744 0.2294; % F D=0.2
0.2444 0.0004 0.0004 0.0004 0.0004 0.0004 0.2844 0.0004 0.2694 0.1994; % T D=0.2
0.0001 0.0001 0.0001 0.0001 0.0001 0.0001 0.0001 0.9991 0.0001 0.0001; % V D=0.2
0.2694 0.0004 0.0004 0.0004 0.0004 0.0004 0.2394 0.0004 0.2194 0.2694; % g D=0.2
0.0001 0.9991 0.0001 0.0001 0.0001 0.0001 0.0001 0.0001 0.0001 0.0001; % l D=0.2
0.0001 0.0001 0.0001 0.0001 0.0001 0.9991 0.0001 0.0001 0.0001 0.0001; % r D=0.2
0.0001 0.0001 0.0001 0.0001 0.9991 0.0001 0.0001 0.0001 0.0001 0.0001; % v D=0.2
0.0001 0.0001 0.0001 0.9991 0.0001 0.0001 0.0001 0.0001 0.0001 0.0001; % z D=0.2
0.001 0.001 0.001 0.001 0.001 0.001 0.284333333333333 0.001 0.311 0.397666666666667; % $ D=0.5
0.00025 0.00025 0.99775 0.00025 0.00025 0.00025 0.00025 0.00025 0.00025 0.00025; % B D=0.5
0.2335 0.001 0.001 0.001 0.001 0.001 0.2585 0.001 0.2735 0.2285; % F D=0.5
0.2435 0.001 0.001 0.001 0.001 0.001 0.2835 0.001 0.2685 0.1985; % T D=0.5
0.00025 0.00025 0.00025 0.00025 0.00025 0.00025 0.00025 0.99775 0.00025 0.00025; % V D=0.5
0.2685 0.001 0.001 0.001 0.001 0.001 0.2385 0.001 0.2185 0.2685; % g D=0.5
0.00025 0.99775 0.00025 0.00025 0.00025 0.00025 0.00025 0.00025 0.00025 0.00025; % l D=0.5
0.00025 0.00025 0.00025 0.00025 0.00025 0.99775 0.00025 0.00025 0.00025 0.00025; % r D=0.5
0.00025 0.00025 0.00025 0.00025 0.99775 0.00025 0.00025 0.00025 0.00025 0.00025; % v D=0.5
0.00025 0.00025 0.00025 0.99775 0.00025 0.00025 0.00025 0.00025 0.00025 0.00025; % z D=0.5
0.002 0.002 0.002 0.002 0.002 0.002 0.282 0.002 0.308666666666667 0.395333333333333; % $ D=1
0.0005 0.0005 0.9955 0.0005 0.0005 0.0005 0.0005 0.0005 0.0005 0.0005; % B D=1
0.232 0.002 0.002 0.002 0.002 0.002 0.257 0.002 0.272 0.227; % F D=1
0.242 0.002 0.002 0.002 0.002 0.002 0.282 0.002 0.267 0.197; % T D=1
0.0005 0.0005 0.0005 0.0005 0.0005 0.0005 0.0005 0.9955 0.0005 0.0005; % V D=1
0.267 0.002 0.002 0.002 0.002 0.002 0.237 0.002 0.217 0.267; % g D=1
0.0005 0.9955 0.0005 0.0005 0.0005 0.0005 0.0005 0.0005 0.0005 0.0005; % l D=1
0.0005 0.0005 0.0005 0.0005 0.0005 0.9955 0.0005 0.0005 0.0005 0.0005; % r D=1
0.0005 0.0005 0.0005 0.0005 0.9955 0.0005 0.0005 0.0005 0.0005 0.0005; % v D=1
0.0005 0.0005 0.0005 0.9955 0.0005 0.0005 0.0005 0.0005 0.0005 0.0005; % z D=1
0.004 0.004 0.004 0.004 0.004 0.004 0.277333333333333 0.004 0.304 0.390666666666667; % $ D=2
0.001 0.001 0.991 0.001 0.001 0.001 0.001 0.001 0.001 0.001; % B D=2
0.229 0.004 0.004 0.004 0.004 0.004 0.254 0.004 0.269 0.224; % F D=2
0.239 0.004 0.004 0.004 0.004 0.004 0.279 0.004 0.264 0.194; % T D=2
0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.991 0.001 0.001; % V D=2
0.264 0.004 0.004 0.004 0.004 0.004 0.234 0.004 0.214 0.264; % g D=2
0.001 0.991 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001; % l D=2
0.001 0.001 0.001 0.001 0.001 0.991 0.001 0.001 0.001 0.001; % r D=2
0.001 0.001 0.001 0.001 0.991 0.001 0.001 0.001 0.001 0.001; % v D=2
0.001 0.001 0.001 0.991 0.001 0.001 0.001 0.001 0.001 0.001; % z D=2
0.01 0.01 0.01 0.01 0.01 0.01 0.263333333333333 0.01 0.29 0.376666666666667; % $ D=5
0.0025 0.0025 0.9775 0.0025 0.0025 0.0025 0.0025 0.0025 0.0025 0.0025; % B D=5
0.22 0.01 0.01 0.01 0.01 0.01 0.245 0.01 0.26 0.215; % F D=5
0.23 0.01 0.01 0.01 0.01 0.01 0.27 0.01 0.255 0.185; % T D=5
0.0025 0.0025 0.0025 0.0025 0.0025 0.0025 0.0025 0.9775 0.0025 0.0025; % V D=5
0.255 0.01 0.01 0.01 0.01 0.01 0.225 0.01 0.205 0.255; % g D=5
0.0025 0.9775 0.0025 0.0025 0.0025 0.0025 0.0025 0.0025 0.0025 0.0025; % l D=5
0.0025 0.0025 0.0025 0.0025 0.0025 0.9775 0.0025 0.0025 0.0025 0.0025; % r D=5
0.0025 0.0025 0.0025 0.0025 0.9775 0.0025 0.0025 0.0025 0.0025 0.0025; % v D=5
0.0025 0.0025 0.0025 0.9775 0.0025 0.0025 0.0025 0.0025 0.0025 0.0025]; % z D=5