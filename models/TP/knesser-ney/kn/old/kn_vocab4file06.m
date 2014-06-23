syllables = '$BGLPTklmptz';
discounts = [0.01 0.02 0.05 0.1 0.2 0.5 1 2 5];
kn_probs = [2.22222222222222e-05 0.266622222222222 2.22222222222222e-05 0.239955555555556 2.22222222222222e-05 2.22222222222222e-05 2.22222222222222e-05 2.22222222222222e-05 0.266622222222222 0.226622222222222 2.22222222222222e-05 2.22222222222222e-05; % $ D=0.01
5.55555555555556e-06 5.55555555555556e-06 0.999938888888889 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06; % B D=0.01
5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 0.999938888888889 5.55555555555556e-06; % G D=0.01
5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 0.999938888888889 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06; % L D=0.01
0.359955555555556 0.239955555555556 2.22222222222222e-05 2.22222222222222e-05 2.22222222222222e-05 2.22222222222222e-05 2.22222222222222e-05 2.22222222222222e-05 0.199955555555556 0.199955555555556 2.22222222222222e-05 2.22222222222222e-05; % P D=0.01
0.219955555555556 0.233288888888889 2.22222222222222e-05 0.286622222222222 2.22222222222222e-05 2.22222222222222e-05 2.22222222222222e-05 2.22222222222222e-05 2.22222222222222e-05 0.259955555555556 2.22222222222222e-05 2.22222222222222e-05; % T D=0.01
5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 0.999938888888889 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06; % k D=0.01
0.213288888888889 2.22222222222222e-05 2.22222222222222e-05 0.206622222222222 2.22222222222222e-05 2.22222222222222e-05 2.22222222222222e-05 2.22222222222222e-05 0.266622222222222 0.313288888888889 2.22222222222222e-05 2.22222222222222e-05; % l D=0.01
5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 0.999938888888889 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06; % m D=0.01
5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 0.999938888888889; % p D=0.01
5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 0.999938888888889 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06; % t D=0.01
0.206622222222222 0.259955555555556 2.22222222222222e-05 0.266622222222222 2.22222222222222e-05 2.22222222222222e-05 2.22222222222222e-05 2.22222222222222e-05 0.266622222222222 2.22222222222222e-05 2.22222222222222e-05 2.22222222222222e-05; % z D=0.01
4.44444444444444e-05 0.266577777777778 4.44444444444444e-05 0.239911111111111 4.44444444444444e-05 4.44444444444444e-05 4.44444444444444e-05 4.44444444444444e-05 0.266577777777778 0.226577777777778 4.44444444444444e-05 4.44444444444444e-05; % $ D=0.02
1.11111111111111e-05 1.11111111111111e-05 0.999877777777778 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05; % B D=0.02
1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 0.999877777777778 1.11111111111111e-05; % G D=0.02
1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 0.999877777777778 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05; % L D=0.02
0.359911111111111 0.239911111111111 4.44444444444444e-05 4.44444444444444e-05 4.44444444444444e-05 4.44444444444444e-05 4.44444444444444e-05 4.44444444444444e-05 0.199911111111111 0.199911111111111 4.44444444444444e-05 4.44444444444444e-05; % P D=0.02
0.219911111111111 0.233244444444444 4.44444444444444e-05 0.286577777777778 4.44444444444444e-05 4.44444444444444e-05 4.44444444444444e-05 4.44444444444444e-05 4.44444444444444e-05 0.259911111111111 4.44444444444444e-05 4.44444444444444e-05; % T D=0.02
1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 0.999877777777778 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05; % k D=0.02
0.213244444444444 4.44444444444444e-05 4.44444444444444e-05 0.206577777777778 4.44444444444444e-05 4.44444444444444e-05 4.44444444444444e-05 4.44444444444444e-05 0.266577777777778 0.313244444444444 4.44444444444444e-05 4.44444444444444e-05; % l D=0.02
1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 0.999877777777778 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05; % m D=0.02
1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 0.999877777777778; % p D=0.02
1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 0.999877777777778 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05; % t D=0.02
0.206577777777778 0.259911111111111 4.44444444444444e-05 0.266577777777778 4.44444444444444e-05 4.44444444444444e-05 4.44444444444444e-05 4.44444444444444e-05 0.266577777777778 4.44444444444444e-05 4.44444444444444e-05 4.44444444444444e-05; % z D=0.02
0.000111111111111111 0.266444444444444 0.000111111111111111 0.239777777777778 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.266444444444444 0.226444444444444 0.000111111111111111 0.000111111111111111; % $ D=0.05
2.77777777777778e-05 2.77777777777778e-05 0.999694444444444 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05; % B D=0.05
2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 0.999694444444444 2.77777777777778e-05; % G D=0.05
2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 0.999694444444444 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05; % L D=0.05
0.359777777777778 0.239777777777778 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.199777777777778 0.199777777777778 0.000111111111111111 0.000111111111111111; % P D=0.05
0.219777777777778 0.233111111111111 0.000111111111111111 0.286444444444444 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.259777777777778 0.000111111111111111 0.000111111111111111; % T D=0.05
2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 0.999694444444444 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05; % k D=0.05
0.213111111111111 0.000111111111111111 0.000111111111111111 0.206444444444444 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.266444444444444 0.313111111111111 0.000111111111111111 0.000111111111111111; % l D=0.05
2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 0.999694444444444 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05; % m D=0.05
2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 0.999694444444444; % p D=0.05
2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 0.999694444444444 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05; % t D=0.05
0.206444444444444 0.259777777777778 0.000111111111111111 0.266444444444444 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.266444444444444 0.000111111111111111 0.000111111111111111 0.000111111111111111; % z D=0.05
0.000222222222222222 0.266222222222222 0.000222222222222222 0.239555555555556 0.000222222222222222 0.000222222222222222 0.000222222222222222 0.000222222222222222 0.266222222222222 0.226222222222222 0.000222222222222222 0.000222222222222222; % $ D=0.1
5.55555555555556e-05 5.55555555555556e-05 0.999388888888889 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05; % B D=0.1
5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 0.999388888888889 5.55555555555556e-05; % G D=0.1
5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 0.999388888888889 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05; % L D=0.1
0.359555555555556 0.239555555555556 0.000222222222222222 0.000222222222222222 0.000222222222222222 0.000222222222222222 0.000222222222222222 0.000222222222222222 0.199555555555556 0.199555555555556 0.000222222222222222 0.000222222222222222; % P D=0.1
0.219555555555556 0.232888888888889 0.000222222222222222 0.286222222222222 0.000222222222222222 0.000222222222222222 0.000222222222222222 0.000222222222222222 0.000222222222222222 0.259555555555556 0.000222222222222222 0.000222222222222222; % T D=0.1
5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 0.999388888888889 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05; % k D=0.1
0.212888888888889 0.000222222222222222 0.000222222222222222 0.206222222222222 0.000222222222222222 0.000222222222222222 0.000222222222222222 0.000222222222222222 0.266222222222222 0.312888888888889 0.000222222222222222 0.000222222222222222; % l D=0.1
5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 0.999388888888889 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05; % m D=0.1
5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 0.999388888888889; % p D=0.1
5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 0.999388888888889 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05; % t D=0.1
0.206222222222222 0.259555555555556 0.000222222222222222 0.266222222222222 0.000222222222222222 0.000222222222222222 0.000222222222222222 0.000222222222222222 0.266222222222222 0.000222222222222222 0.000222222222222222 0.000222222222222222; % z D=0.1
0.000444444444444444 0.265777777777778 0.000444444444444444 0.239111111111111 0.000444444444444444 0.000444444444444444 0.000444444444444444 0.000444444444444444 0.265777777777778 0.225777777777778 0.000444444444444444 0.000444444444444444; % $ D=0.2
0.000111111111111111 0.000111111111111111 0.998777777777778 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111; % B D=0.2
0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.998777777777778 0.000111111111111111; % G D=0.2
0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.998777777777778 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111; % L D=0.2
0.359111111111111 0.239111111111111 0.000444444444444444 0.000444444444444444 0.000444444444444444 0.000444444444444444 0.000444444444444444 0.000444444444444444 0.199111111111111 0.199111111111111 0.000444444444444444 0.000444444444444444; % P D=0.2
0.219111111111111 0.232444444444444 0.000444444444444444 0.285777777777778 0.000444444444444444 0.000444444444444444 0.000444444444444444 0.000444444444444444 0.000444444444444444 0.259111111111111 0.000444444444444444 0.000444444444444444; % T D=0.2
0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.998777777777778 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111; % k D=0.2
0.212444444444444 0.000444444444444444 0.000444444444444444 0.205777777777778 0.000444444444444444 0.000444444444444444 0.000444444444444444 0.000444444444444444 0.265777777777778 0.312444444444444 0.000444444444444444 0.000444444444444444; % l D=0.2
0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.998777777777778 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111; % m D=0.2
0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.998777777777778; % p D=0.2
0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.998777777777778 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111; % t D=0.2
0.205777777777778 0.259111111111111 0.000444444444444444 0.265777777777778 0.000444444444444444 0.000444444444444444 0.000444444444444444 0.000444444444444444 0.265777777777778 0.000444444444444444 0.000444444444444444 0.000444444444444444; % z D=0.2
0.00111111111111111 0.264444444444444 0.00111111111111111 0.237777777777778 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.264444444444444 0.224444444444444 0.00111111111111111 0.00111111111111111; % $ D=0.5
0.000277777777777778 0.000277777777777778 0.996944444444445 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778; % B D=0.5
0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.996944444444445 0.000277777777777778; % G D=0.5
0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.996944444444445 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778; % L D=0.5
0.357777777777778 0.237777777777778 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.197777777777778 0.197777777777778 0.00111111111111111 0.00111111111111111; % P D=0.5
0.217777777777778 0.231111111111111 0.00111111111111111 0.284444444444444 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.257777777777778 0.00111111111111111 0.00111111111111111; % T D=0.5
0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.996944444444445 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778; % k D=0.5
0.211111111111111 0.00111111111111111 0.00111111111111111 0.204444444444444 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.264444444444444 0.311111111111111 0.00111111111111111 0.00111111111111111; % l D=0.5
0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.996944444444445 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778; % m D=0.5
0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.996944444444445; % p D=0.5
0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.996944444444445 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778; % t D=0.5
0.204444444444444 0.257777777777778 0.00111111111111111 0.264444444444444 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.264444444444444 0.00111111111111111 0.00111111111111111 0.00111111111111111; % z D=0.5
0.00222222222222222 0.262222222222222 0.00222222222222222 0.235555555555556 0.00222222222222222 0.00222222222222222 0.00222222222222222 0.00222222222222222 0.262222222222222 0.222222222222222 0.00222222222222222 0.00222222222222222; % $ D=1
0.000555555555555556 0.000555555555555556 0.993888888888889 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556; % B D=1
0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.993888888888889 0.000555555555555556; % G D=1
0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.993888888888889 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556; % L D=1
0.355555555555556 0.235555555555556 0.00222222222222222 0.00222222222222222 0.00222222222222222 0.00222222222222222 0.00222222222222222 0.00222222222222222 0.195555555555556 0.195555555555556 0.00222222222222222 0.00222222222222222; % P D=1
0.215555555555556 0.228888888888889 0.00222222222222222 0.282222222222222 0.00222222222222222 0.00222222222222222 0.00222222222222222 0.00222222222222222 0.00222222222222222 0.255555555555556 0.00222222222222222 0.00222222222222222; % T D=1
0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.993888888888889 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556; % k D=1
0.208888888888889 0.00222222222222222 0.00222222222222222 0.202222222222222 0.00222222222222222 0.00222222222222222 0.00222222222222222 0.00222222222222222 0.262222222222222 0.308888888888889 0.00222222222222222 0.00222222222222222; % l D=1
0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.993888888888889 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556; % m D=1
0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.993888888888889; % p D=1
0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.993888888888889 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556; % t D=1
0.202222222222222 0.255555555555556 0.00222222222222222 0.262222222222222 0.00222222222222222 0.00222222222222222 0.00222222222222222 0.00222222222222222 0.262222222222222 0.00222222222222222 0.00222222222222222 0.00222222222222222; % z D=1
0.00444444444444444 0.257777777777778 0.00444444444444444 0.231111111111111 0.00444444444444444 0.00444444444444444 0.00444444444444444 0.00444444444444444 0.257777777777778 0.217777777777778 0.00444444444444444 0.00444444444444444; % $ D=2
0.00111111111111111 0.00111111111111111 0.987777777777778 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111; % B D=2
0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.987777777777778 0.00111111111111111; % G D=2
0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.987777777777778 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111; % L D=2
0.351111111111111 0.231111111111111 0.00444444444444444 0.00444444444444444 0.00444444444444444 0.00444444444444444 0.00444444444444444 0.00444444444444444 0.191111111111111 0.191111111111111 0.00444444444444444 0.00444444444444444; % P D=2
0.211111111111111 0.224444444444444 0.00444444444444444 0.277777777777778 0.00444444444444444 0.00444444444444444 0.00444444444444444 0.00444444444444444 0.00444444444444444 0.251111111111111 0.00444444444444444 0.00444444444444444; % T D=2
0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.987777777777778 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111; % k D=2
0.204444444444444 0.00444444444444444 0.00444444444444444 0.197777777777778 0.00444444444444444 0.00444444444444444 0.00444444444444444 0.00444444444444444 0.257777777777778 0.304444444444444 0.00444444444444444 0.00444444444444444; % l D=2
0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.987777777777778 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111; % m D=2
0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.987777777777778; % p D=2
0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.987777777777778 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111; % t D=2
0.197777777777778 0.251111111111111 0.00444444444444444 0.257777777777778 0.00444444444444444 0.00444444444444444 0.00444444444444444 0.00444444444444444 0.257777777777778 0.00444444444444444 0.00444444444444444 0.00444444444444444; % z D=2
0.0111111111111111 0.244444444444444 0.0111111111111111 0.217777777777778 0.0111111111111111 0.0111111111111111 0.0111111111111111 0.0111111111111111 0.244444444444444 0.204444444444444 0.0111111111111111 0.0111111111111111; % $ D=5
0.00277777777777778 0.00277777777777778 0.969444444444444 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778; % B D=5
0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.969444444444444 0.00277777777777778; % G D=5
0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.969444444444444 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778; % L D=5
0.337777777777778 0.217777777777778 0.0111111111111111 0.0111111111111111 0.0111111111111111 0.0111111111111111 0.0111111111111111 0.0111111111111111 0.177777777777778 0.177777777777778 0.0111111111111111 0.0111111111111111; % P D=5
0.197777777777778 0.211111111111111 0.0111111111111111 0.264444444444444 0.0111111111111111 0.0111111111111111 0.0111111111111111 0.0111111111111111 0.0111111111111111 0.237777777777778 0.0111111111111111 0.0111111111111111; % T D=5
0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.969444444444444 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778; % k D=5
0.191111111111111 0.0111111111111111 0.0111111111111111 0.184444444444444 0.0111111111111111 0.0111111111111111 0.0111111111111111 0.0111111111111111 0.244444444444444 0.291111111111111 0.0111111111111111 0.0111111111111111; % l D=5
0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.969444444444444 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778; % m D=5
0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.969444444444444; % p D=5
0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.969444444444444 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778; % t D=5
0.184444444444444 0.237777777777778 0.0111111111111111 0.244444444444444 0.0111111111111111 0.0111111111111111 0.0111111111111111 0.0111111111111111 0.244444444444444 0.0111111111111111 0.0111111111111111 0.0111111111111111]; % z D=5
