syllables = '$FJPRVbdlprt';
discounts = [0.01 0.02 0.05 0.1 0.2 0.5 1 2 5];
kn_probs = [2.22222222222222e-05 0.239955555555556 2.22222222222222e-05 2.22222222222222e-05 2.22222222222222e-05 2.22222222222222e-05 2.22222222222222e-05 0.259955555555556 2.22222222222222e-05 2.22222222222222e-05 0.299955555555556 0.199955555555556; % $ D=0.01
5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 0.999938888888889 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06; % F D=0.01
0.246622222222222 0.293288888888889 2.22222222222222e-05 2.22222222222222e-05 2.22222222222222e-05 2.22222222222222e-05 2.22222222222222e-05 0.206622222222222 2.22222222222222e-05 2.22222222222222e-05 0.253288888888889 2.22222222222222e-05; % J D=0.01
0.226622222222222 0.266622222222222 2.22222222222222e-05 2.22222222222222e-05 2.22222222222222e-05 2.22222222222222e-05 2.22222222222222e-05 0.279955555555556 2.22222222222222e-05 2.22222222222222e-05 2.22222222222222e-05 0.226622222222222; % P D=0.01
5.55555555555556e-06 5.55555555555556e-06 0.999938888888889 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06; % R D=0.01
0.333288888888889 0.199955555555556 2.22222222222222e-05 2.22222222222222e-05 2.22222222222222e-05 2.22222222222222e-05 2.22222222222222e-05 2.22222222222222e-05 2.22222222222222e-05 2.22222222222222e-05 0.173288888888889 0.293288888888889; % V D=0.01
5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 0.999938888888889 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06; % b D=0.01
5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 0.999938888888889 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06; % d D=0.01
0.193288888888889 2.22222222222222e-05 2.22222222222222e-05 2.22222222222222e-05 2.22222222222222e-05 2.22222222222222e-05 2.22222222222222e-05 0.253288888888889 2.22222222222222e-05 2.22222222222222e-05 0.273288888888889 0.279955555555556; % l D=0.01
5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 0.999938888888889 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06; % p D=0.01
5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 0.999938888888889 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06; % r D=0.01
5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 5.55555555555556e-06 0.999938888888889 5.55555555555556e-06 5.55555555555556e-06; % t D=0.01
4.44444444444444e-05 0.239911111111111 4.44444444444444e-05 4.44444444444444e-05 4.44444444444444e-05 4.44444444444444e-05 4.44444444444444e-05 0.259911111111111 4.44444444444444e-05 4.44444444444444e-05 0.299911111111111 0.199911111111111; % $ D=0.02
1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 0.999877777777778 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05; % F D=0.02
0.246577777777778 0.293244444444444 4.44444444444444e-05 4.44444444444444e-05 4.44444444444444e-05 4.44444444444444e-05 4.44444444444444e-05 0.206577777777778 4.44444444444444e-05 4.44444444444444e-05 0.253244444444444 4.44444444444444e-05; % J D=0.02
0.226577777777778 0.266577777777778 4.44444444444444e-05 4.44444444444444e-05 4.44444444444444e-05 4.44444444444444e-05 4.44444444444444e-05 0.279911111111111 4.44444444444444e-05 4.44444444444444e-05 4.44444444444444e-05 0.226577777777778; % P D=0.02
1.11111111111111e-05 1.11111111111111e-05 0.999877777777778 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05; % R D=0.02
0.333244444444444 0.199911111111111 4.44444444444444e-05 4.44444444444444e-05 4.44444444444444e-05 4.44444444444444e-05 4.44444444444444e-05 4.44444444444444e-05 4.44444444444444e-05 4.44444444444444e-05 0.173244444444444 0.293244444444444; % V D=0.02
1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 0.999877777777778 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05; % b D=0.02
1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 0.999877777777778 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05; % d D=0.02
0.193244444444444 4.44444444444444e-05 4.44444444444444e-05 4.44444444444444e-05 4.44444444444444e-05 4.44444444444444e-05 4.44444444444444e-05 0.253244444444444 4.44444444444444e-05 4.44444444444444e-05 0.273244444444444 0.279911111111111; % l D=0.02
1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 0.999877777777778 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05; % p D=0.02
1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 0.999877777777778 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05; % r D=0.02
1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 1.11111111111111e-05 0.999877777777778 1.11111111111111e-05 1.11111111111111e-05; % t D=0.02
0.000111111111111111 0.239777777777778 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.259777777777778 0.000111111111111111 0.000111111111111111 0.299777777777778 0.199777777777778; % $ D=0.05
2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 0.999694444444444 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05; % F D=0.05
0.246444444444444 0.293111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.206444444444444 0.000111111111111111 0.000111111111111111 0.253111111111111 0.000111111111111111; % J D=0.05
0.226444444444444 0.266444444444444 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.279777777777778 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.226444444444444; % P D=0.05
2.77777777777778e-05 2.77777777777778e-05 0.999694444444444 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05; % R D=0.05
0.333111111111111 0.199777777777778 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.173111111111111 0.293111111111111; % V D=0.05
2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 0.999694444444444 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05; % b D=0.05
2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 0.999694444444444 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05; % d D=0.05
0.193111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.253111111111111 0.000111111111111111 0.000111111111111111 0.273111111111111 0.279777777777778; % l D=0.05
2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 0.999694444444444 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05; % p D=0.05
2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 0.999694444444444 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05; % r D=0.05
2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 0.999694444444444 2.77777777777778e-05 2.77777777777778e-05; % t D=0.05
0.000222222222222222 0.239555555555556 0.000222222222222222 0.000222222222222222 0.000222222222222222 0.000222222222222222 0.000222222222222222 0.259555555555556 0.000222222222222222 0.000222222222222222 0.299555555555556 0.199555555555556; % $ D=0.1
5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 0.999388888888889 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05; % F D=0.1
0.246222222222222 0.292888888888889 0.000222222222222222 0.000222222222222222 0.000222222222222222 0.000222222222222222 0.000222222222222222 0.206222222222222 0.000222222222222222 0.000222222222222222 0.252888888888889 0.000222222222222222; % J D=0.1
0.226222222222222 0.266222222222222 0.000222222222222222 0.000222222222222222 0.000222222222222222 0.000222222222222222 0.000222222222222222 0.279555555555556 0.000222222222222222 0.000222222222222222 0.000222222222222222 0.226222222222222; % P D=0.1
5.55555555555556e-05 5.55555555555556e-05 0.999388888888889 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05; % R D=0.1
0.332888888888889 0.199555555555556 0.000222222222222222 0.000222222222222222 0.000222222222222222 0.000222222222222222 0.000222222222222222 0.000222222222222222 0.000222222222222222 0.000222222222222222 0.172888888888889 0.292888888888889; % V D=0.1
5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 0.999388888888889 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05; % b D=0.1
5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 0.999388888888889 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05; % d D=0.1
0.192888888888889 0.000222222222222222 0.000222222222222222 0.000222222222222222 0.000222222222222222 0.000222222222222222 0.000222222222222222 0.252888888888889 0.000222222222222222 0.000222222222222222 0.272888888888889 0.279555555555556; % l D=0.1
5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 0.999388888888889 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05; % p D=0.1
5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 0.999388888888889 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05; % r D=0.1
5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 0.999388888888889 5.55555555555556e-05 5.55555555555556e-05; % t D=0.1
0.000444444444444444 0.239111111111111 0.000444444444444444 0.000444444444444444 0.000444444444444444 0.000444444444444444 0.000444444444444444 0.259111111111111 0.000444444444444444 0.000444444444444444 0.299111111111111 0.199111111111111; % $ D=0.2
0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.998777777777778 0.000111111111111111 0.000111111111111111 0.000111111111111111; % F D=0.2
0.245777777777778 0.292444444444444 0.000444444444444444 0.000444444444444444 0.000444444444444444 0.000444444444444444 0.000444444444444444 0.205777777777778 0.000444444444444444 0.000444444444444444 0.252444444444444 0.000444444444444444; % J D=0.2
0.225777777777778 0.265777777777778 0.000444444444444444 0.000444444444444444 0.000444444444444444 0.000444444444444444 0.000444444444444444 0.279111111111111 0.000444444444444444 0.000444444444444444 0.000444444444444444 0.225777777777778; % P D=0.2
0.000111111111111111 0.000111111111111111 0.998777777777778 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111; % R D=0.2
0.332444444444444 0.199111111111111 0.000444444444444444 0.000444444444444444 0.000444444444444444 0.000444444444444444 0.000444444444444444 0.000444444444444444 0.000444444444444444 0.000444444444444444 0.172444444444444 0.292444444444444; % V D=0.2
0.000111111111111111 0.000111111111111111 0.000111111111111111 0.998777777777778 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111; % b D=0.2
0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.998777777777778 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111; % d D=0.2
0.192444444444444 0.000444444444444444 0.000444444444444444 0.000444444444444444 0.000444444444444444 0.000444444444444444 0.000444444444444444 0.252444444444444 0.000444444444444444 0.000444444444444444 0.272444444444444 0.279111111111111; % l D=0.2
0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.998777777777778 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111; % p D=0.2
0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.998777777777778 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111; % r D=0.2
0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.998777777777778 0.000111111111111111 0.000111111111111111; % t D=0.2
0.00111111111111111 0.237777777777778 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.257777777777778 0.00111111111111111 0.00111111111111111 0.297777777777778 0.197777777777778; % $ D=0.5
0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.996944444444445 0.000277777777777778 0.000277777777777778 0.000277777777777778; % F D=0.5
0.244444444444444 0.291111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.204444444444444 0.00111111111111111 0.00111111111111111 0.251111111111111 0.00111111111111111; % J D=0.5
0.224444444444444 0.264444444444444 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.277777777777778 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.224444444444444; % P D=0.5
0.000277777777777778 0.000277777777777778 0.996944444444445 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778; % R D=0.5
0.331111111111111 0.197777777777778 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.171111111111111 0.291111111111111; % V D=0.5
0.000277777777777778 0.000277777777777778 0.000277777777777778 0.996944444444445 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778; % b D=0.5
0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.996944444444445 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778; % d D=0.5
0.191111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.251111111111111 0.00111111111111111 0.00111111111111111 0.271111111111111 0.277777777777778; % l D=0.5
0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.996944444444445 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778; % p D=0.5
0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.996944444444445 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778; % r D=0.5
0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.000277777777777778 0.996944444444445 0.000277777777777778 0.000277777777777778; % t D=0.5
0.00222222222222222 0.235555555555556 0.00222222222222222 0.00222222222222222 0.00222222222222222 0.00222222222222222 0.00222222222222222 0.255555555555556 0.00222222222222222 0.00222222222222222 0.295555555555556 0.195555555555556; % $ D=1
0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.993888888888889 0.000555555555555556 0.000555555555555556 0.000555555555555556; % F D=1
0.242222222222222 0.288888888888889 0.00222222222222222 0.00222222222222222 0.00222222222222222 0.00222222222222222 0.00222222222222222 0.202222222222222 0.00222222222222222 0.00222222222222222 0.248888888888889 0.00222222222222222; % J D=1
0.222222222222222 0.262222222222222 0.00222222222222222 0.00222222222222222 0.00222222222222222 0.00222222222222222 0.00222222222222222 0.275555555555556 0.00222222222222222 0.00222222222222222 0.00222222222222222 0.222222222222222; % P D=1
0.000555555555555556 0.000555555555555556 0.993888888888889 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556; % R D=1
0.328888888888889 0.195555555555556 0.00222222222222222 0.00222222222222222 0.00222222222222222 0.00222222222222222 0.00222222222222222 0.00222222222222222 0.00222222222222222 0.00222222222222222 0.168888888888889 0.288888888888889; % V D=1
0.000555555555555556 0.000555555555555556 0.000555555555555556 0.993888888888889 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556; % b D=1
0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.993888888888889 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556; % d D=1
0.188888888888889 0.00222222222222222 0.00222222222222222 0.00222222222222222 0.00222222222222222 0.00222222222222222 0.00222222222222222 0.248888888888889 0.00222222222222222 0.00222222222222222 0.268888888888889 0.275555555555556; % l D=1
0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.993888888888889 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556; % p D=1
0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.993888888888889 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556; % r D=1
0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.993888888888889 0.000555555555555556 0.000555555555555556; % t D=1
0.00444444444444444 0.231111111111111 0.00444444444444444 0.00444444444444444 0.00444444444444444 0.00444444444444444 0.00444444444444444 0.251111111111111 0.00444444444444444 0.00444444444444444 0.291111111111111 0.191111111111111; % $ D=2
0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.987777777777778 0.00111111111111111 0.00111111111111111 0.00111111111111111; % F D=2
0.237777777777778 0.284444444444444 0.00444444444444444 0.00444444444444444 0.00444444444444444 0.00444444444444444 0.00444444444444444 0.197777777777778 0.00444444444444444 0.00444444444444444 0.244444444444444 0.00444444444444444; % J D=2
0.217777777777778 0.257777777777778 0.00444444444444444 0.00444444444444444 0.00444444444444444 0.00444444444444444 0.00444444444444444 0.271111111111111 0.00444444444444444 0.00444444444444444 0.00444444444444444 0.217777777777778; % P D=2
0.00111111111111111 0.00111111111111111 0.987777777777778 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111; % R D=2
0.324444444444444 0.191111111111111 0.00444444444444444 0.00444444444444444 0.00444444444444444 0.00444444444444444 0.00444444444444444 0.00444444444444444 0.00444444444444444 0.00444444444444444 0.164444444444444 0.284444444444444; % V D=2
0.00111111111111111 0.00111111111111111 0.00111111111111111 0.987777777777778 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111; % b D=2
0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.987777777777778 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111; % d D=2
0.184444444444444 0.00444444444444444 0.00444444444444444 0.00444444444444444 0.00444444444444444 0.00444444444444444 0.00444444444444444 0.244444444444444 0.00444444444444444 0.00444444444444444 0.264444444444444 0.271111111111111; % l D=2
0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.987777777777778 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111; % p D=2
0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.987777777777778 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111; % r D=2
0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.00111111111111111 0.987777777777778 0.00111111111111111 0.00111111111111111; % t D=2
0.0111111111111111 0.217777777777778 0.0111111111111111 0.0111111111111111 0.0111111111111111 0.0111111111111111 0.0111111111111111 0.237777777777778 0.0111111111111111 0.0111111111111111 0.277777777777778 0.177777777777778; % $ D=5
0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.969444444444444 0.00277777777777778 0.00277777777777778 0.00277777777777778; % F D=5
0.224444444444444 0.271111111111111 0.0111111111111111 0.0111111111111111 0.0111111111111111 0.0111111111111111 0.0111111111111111 0.184444444444444 0.0111111111111111 0.0111111111111111 0.231111111111111 0.0111111111111111; % J D=5
0.204444444444444 0.244444444444444 0.0111111111111111 0.0111111111111111 0.0111111111111111 0.0111111111111111 0.0111111111111111 0.257777777777778 0.0111111111111111 0.0111111111111111 0.0111111111111111 0.204444444444444; % P D=5
0.00277777777777778 0.00277777777777778 0.969444444444444 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778; % R D=5
0.311111111111111 0.177777777777778 0.0111111111111111 0.0111111111111111 0.0111111111111111 0.0111111111111111 0.0111111111111111 0.0111111111111111 0.0111111111111111 0.0111111111111111 0.151111111111111 0.271111111111111; % V D=5
0.00277777777777778 0.00277777777777778 0.00277777777777778 0.969444444444444 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778; % b D=5
0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.969444444444444 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778; % d D=5
0.171111111111111 0.0111111111111111 0.0111111111111111 0.0111111111111111 0.0111111111111111 0.0111111111111111 0.0111111111111111 0.231111111111111 0.0111111111111111 0.0111111111111111 0.251111111111111 0.257777777777778; % l D=5
0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.969444444444444 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778; % p D=5
0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.969444444444444 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778; % r D=5
0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.00277777777777778 0.969444444444444 0.00277777777777778 0.00277777777777778]; % t D=5
