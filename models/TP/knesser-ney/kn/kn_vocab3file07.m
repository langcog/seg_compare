syllables = '$JKPRTVZlp';
discounts = [0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 0.95];
kn_probs = [0.000333333333333333 0.000111111111111111 0.293 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.379666666666667 0.326333333333333; % $ D=0.1
8.33333333333333e-05 2.77777777777778e-05 8.33333333333333e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 0.999527777777778 2.77777777777778e-05 8.33333333333333e-05 8.33333333333333e-05; % J D=0.1
8.33333333333333e-05 2.77777777777778e-05 8.33333333333333e-05 2.77777777777778e-05 2.77777777777778e-05 0.999527777777778 2.77777777777778e-05 2.77777777777778e-05 8.33333333333333e-05 8.33333333333333e-05; % K D=0.1
0.24975 8.33333333333333e-05 0.42475 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 0.32475 0.00025; % P D=0.1
0.25475 8.33333333333333e-05 0.35475 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 0.00025 0.38975; % R D=0.1
0.24475 8.33333333333333e-05 0.00025 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 0.38975 0.36475; % T D=0.1
8.33333333333333e-05 2.77777777777778e-05 8.33333333333333e-05 0.999527777777778 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 8.33333333333333e-05 8.33333333333333e-05; % V D=0.1
8.33333333333333e-05 2.77777777777778e-05 8.33333333333333e-05 2.77777777777778e-05 0.999527777777778 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 8.33333333333333e-05 8.33333333333333e-05; % Z D=0.1
8.33333333333333e-05 2.77777777777778e-05 8.33333333333333e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 0.999527777777778 8.33333333333333e-05 8.33333333333333e-05; % l D=0.1
8.33333333333333e-05 0.999527777777778 8.33333333333333e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 2.77777777777778e-05 8.33333333333333e-05 8.33333333333333e-05; % p D=0.1
0.000666666666666667 0.000222222222222222 0.292666666666667 0.000222222222222222 0.000222222222222222 0.000222222222222222 0.000222222222222222 0.000222222222222222 0.379333333333333 0.326; % $ D=0.2
0.000166666666666667 5.55555555555556e-05 0.000166666666666667 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 0.999055555555556 5.55555555555556e-05 0.000166666666666667 0.000166666666666667; % J D=0.2
0.000166666666666667 5.55555555555556e-05 0.000166666666666667 5.55555555555556e-05 5.55555555555556e-05 0.999055555555556 5.55555555555556e-05 5.55555555555556e-05 0.000166666666666667 0.000166666666666667; % K D=0.2
0.2495 0.000166666666666667 0.4245 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.3245 0.0005; % P D=0.2
0.2545 0.000166666666666667 0.3545 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.0005 0.3895; % R D=0.2
0.2445 0.000166666666666667 0.0005 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.3895 0.3645; % T D=0.2
0.000166666666666667 5.55555555555556e-05 0.000166666666666667 0.999055555555556 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 0.000166666666666667 0.000166666666666667; % V D=0.2
0.000166666666666667 5.55555555555556e-05 0.000166666666666667 5.55555555555556e-05 0.999055555555556 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 0.000166666666666667 0.000166666666666667; % Z D=0.2
0.000166666666666667 5.55555555555556e-05 0.000166666666666667 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 0.999055555555556 0.000166666666666667 0.000166666666666667; % l D=0.2
0.000166666666666667 0.999055555555556 0.000166666666666667 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 5.55555555555556e-05 0.000166666666666667 0.000166666666666667; % p D=0.2
0.001 0.000333333333333333 0.292333333333333 0.000333333333333333 0.000333333333333333 0.000333333333333333 0.000333333333333333 0.000333333333333333 0.379 0.325666666666667; % $ D=0.3
0.00025 8.33333333333333e-05 0.00025 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 0.998583333333333 8.33333333333333e-05 0.00025 0.00025; % J D=0.3
0.00025 8.33333333333333e-05 0.00025 8.33333333333333e-05 8.33333333333333e-05 0.998583333333333 8.33333333333333e-05 8.33333333333333e-05 0.00025 0.00025; % K D=0.3
0.24925 0.00025 0.42425 0.00025 0.00025 0.00025 0.00025 0.00025 0.32425 0.00075; % P D=0.3
0.25425 0.00025 0.35425 0.00025 0.00025 0.00025 0.00025 0.00025 0.00075 0.38925; % R D=0.3
0.24425 0.00025 0.00075 0.00025 0.00025 0.00025 0.00025 0.00025 0.38925 0.36425; % T D=0.3
0.00025 8.33333333333333e-05 0.00025 0.998583333333333 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 0.00025 0.00025; % V D=0.3
0.00025 8.33333333333333e-05 0.00025 8.33333333333333e-05 0.998583333333333 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 0.00025 0.00025; % Z D=0.3
0.00025 8.33333333333333e-05 0.00025 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 0.998583333333333 0.00025 0.00025; % l D=0.3
0.00025 0.998583333333333 0.00025 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 0.00025 0.00025; % p D=0.3
0.00133333333333333 0.000444444444444445 0.292 0.000444444444444445 0.000444444444444445 0.000444444444444445 0.000444444444444445 0.000444444444444445 0.378666666666667 0.325333333333333; % $ D=0.4
0.000333333333333333 0.000111111111111111 0.000333333333333333 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.998111111111111 0.000111111111111111 0.000333333333333333 0.000333333333333333; % J D=0.4
0.000333333333333333 0.000111111111111111 0.000333333333333333 0.000111111111111111 0.000111111111111111 0.998111111111111 0.000111111111111111 0.000111111111111111 0.000333333333333333 0.000333333333333333; % K D=0.4
0.249 0.000333333333333333 0.424 0.000333333333333333 0.000333333333333333 0.000333333333333333 0.000333333333333333 0.000333333333333333 0.324 0.001; % P D=0.4
0.254 0.000333333333333333 0.354 0.000333333333333333 0.000333333333333333 0.000333333333333333 0.000333333333333333 0.000333333333333333 0.001 0.389; % R D=0.4
0.244 0.000333333333333333 0.001 0.000333333333333333 0.000333333333333333 0.000333333333333333 0.000333333333333333 0.000333333333333333 0.389 0.364; % T D=0.4
0.000333333333333333 0.000111111111111111 0.000333333333333333 0.998111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000333333333333333 0.000333333333333333; % V D=0.4
0.000333333333333333 0.000111111111111111 0.000333333333333333 0.000111111111111111 0.998111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000333333333333333 0.000333333333333333; % Z D=0.4
0.000333333333333333 0.000111111111111111 0.000333333333333333 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.998111111111111 0.000333333333333333 0.000333333333333333; % l D=0.4
0.000333333333333333 0.998111111111111 0.000333333333333333 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000111111111111111 0.000333333333333333 0.000333333333333333; % p D=0.4
0.00166666666666667 0.000555555555555556 0.291666666666667 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.000555555555555556 0.378333333333333 0.325; % $ D=0.5
0.000416666666666667 0.000138888888888889 0.000416666666666667 0.000138888888888889 0.000138888888888889 0.000138888888888889 0.997638888888889 0.000138888888888889 0.000416666666666667 0.000416666666666667; % J D=0.5
0.000416666666666667 0.000138888888888889 0.000416666666666667 0.000138888888888889 0.000138888888888889 0.997638888888889 0.000138888888888889 0.000138888888888889 0.000416666666666667 0.000416666666666667; % K D=0.5
0.24875 0.000416666666666667 0.42375 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.32375 0.00125; % P D=0.5
0.25375 0.000416666666666667 0.35375 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.00125 0.38875; % R D=0.5
0.24375 0.000416666666666667 0.00125 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.38875 0.36375; % T D=0.5
0.000416666666666667 0.000138888888888889 0.000416666666666667 0.997638888888889 0.000138888888888889 0.000138888888888889 0.000138888888888889 0.000138888888888889 0.000416666666666667 0.000416666666666667; % V D=0.5
0.000416666666666667 0.000138888888888889 0.000416666666666667 0.000138888888888889 0.997638888888889 0.000138888888888889 0.000138888888888889 0.000138888888888889 0.000416666666666667 0.000416666666666667; % Z D=0.5
0.000416666666666667 0.000138888888888889 0.000416666666666667 0.000138888888888889 0.000138888888888889 0.000138888888888889 0.000138888888888889 0.997638888888889 0.000416666666666667 0.000416666666666667; % l D=0.5
0.000416666666666667 0.997638888888889 0.000416666666666667 0.000138888888888889 0.000138888888888889 0.000138888888888889 0.000138888888888889 0.000138888888888889 0.000416666666666667 0.000416666666666667; % p D=0.5
0.002 0.000666666666666667 0.291333333333333 0.000666666666666667 0.000666666666666667 0.000666666666666667 0.000666666666666667 0.000666666666666667 0.378 0.324666666666667; % $ D=0.6
0.0005 0.000166666666666667 0.0005 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.997166666666667 0.000166666666666667 0.0005 0.0005; % J D=0.6
0.0005 0.000166666666666667 0.0005 0.000166666666666667 0.000166666666666667 0.997166666666667 0.000166666666666667 0.000166666666666667 0.0005 0.0005; % K D=0.6
0.2485 0.0005 0.4235 0.0005 0.0005 0.0005 0.0005 0.0005 0.3235 0.0015; % P D=0.6
0.2535 0.0005 0.3535 0.0005 0.0005 0.0005 0.0005 0.0005 0.0015 0.3885; % R D=0.6
0.2435 0.0005 0.0015 0.0005 0.0005 0.0005 0.0005 0.0005 0.3885 0.3635; % T D=0.6
0.0005 0.000166666666666667 0.0005 0.997166666666667 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.0005 0.0005; % V D=0.6
0.0005 0.000166666666666667 0.0005 0.000166666666666667 0.997166666666667 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.0005 0.0005; % Z D=0.6
0.0005 0.000166666666666667 0.0005 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.997166666666667 0.0005 0.0005; % l D=0.6
0.0005 0.997166666666667 0.0005 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.0005 0.0005; % p D=0.6
0.00233333333333333 0.000777777777777778 0.291 0.000777777777777778 0.000777777777777778 0.000777777777777778 0.000777777777777778 0.000777777777777778 0.377666666666667 0.324333333333333; % $ D=0.7
0.000583333333333333 0.000194444444444444 0.000583333333333333 0.000194444444444444 0.000194444444444444 0.000194444444444444 0.996694444444445 0.000194444444444444 0.000583333333333333 0.000583333333333333; % J D=0.7
0.000583333333333333 0.000194444444444444 0.000583333333333333 0.000194444444444444 0.000194444444444444 0.996694444444445 0.000194444444444444 0.000194444444444444 0.000583333333333333 0.000583333333333333; % K D=0.7
0.24825 0.000583333333333333 0.42325 0.000583333333333333 0.000583333333333333 0.000583333333333333 0.000583333333333333 0.000583333333333333 0.32325 0.00175; % P D=0.7
0.25325 0.000583333333333333 0.35325 0.000583333333333333 0.000583333333333333 0.000583333333333333 0.000583333333333333 0.000583333333333333 0.00175 0.38825; % R D=0.7
0.24325 0.000583333333333333 0.00175 0.000583333333333333 0.000583333333333333 0.000583333333333333 0.000583333333333333 0.000583333333333333 0.38825 0.36325; % T D=0.7
0.000583333333333333 0.000194444444444444 0.000583333333333333 0.996694444444445 0.000194444444444444 0.000194444444444444 0.000194444444444444 0.000194444444444444 0.000583333333333333 0.000583333333333333; % V D=0.7
0.000583333333333333 0.000194444444444444 0.000583333333333333 0.000194444444444444 0.996694444444445 0.000194444444444444 0.000194444444444444 0.000194444444444444 0.000583333333333333 0.000583333333333333; % Z D=0.7
0.000583333333333333 0.000194444444444444 0.000583333333333333 0.000194444444444444 0.000194444444444444 0.000194444444444444 0.000194444444444444 0.996694444444445 0.000583333333333333 0.000583333333333333; % l D=0.7
0.000583333333333333 0.996694444444445 0.000583333333333333 0.000194444444444444 0.000194444444444444 0.000194444444444444 0.000194444444444444 0.000194444444444444 0.000583333333333333 0.000583333333333333; % p D=0.7
0.00266666666666667 0.000888888888888889 0.290666666666667 0.000888888888888889 0.000888888888888889 0.000888888888888889 0.000888888888888889 0.000888888888888889 0.377333333333333 0.324; % $ D=0.8
0.000666666666666667 0.000222222222222222 0.000666666666666667 0.000222222222222222 0.000222222222222222 0.000222222222222222 0.996222222222222 0.000222222222222222 0.000666666666666667 0.000666666666666667; % J D=0.8
0.000666666666666667 0.000222222222222222 0.000666666666666667 0.000222222222222222 0.000222222222222222 0.996222222222222 0.000222222222222222 0.000222222222222222 0.000666666666666667 0.000666666666666667; % K D=0.8
0.248 0.000666666666666667 0.423 0.000666666666666667 0.000666666666666667 0.000666666666666667 0.000666666666666667 0.000666666666666667 0.323 0.002; % P D=0.8
0.253 0.000666666666666667 0.353 0.000666666666666667 0.000666666666666667 0.000666666666666667 0.000666666666666667 0.000666666666666667 0.002 0.388; % R D=0.8
0.243 0.000666666666666667 0.002 0.000666666666666667 0.000666666666666667 0.000666666666666667 0.000666666666666667 0.000666666666666667 0.388 0.363; % T D=0.8
0.000666666666666667 0.000222222222222222 0.000666666666666667 0.996222222222222 0.000222222222222222 0.000222222222222222 0.000222222222222222 0.000222222222222222 0.000666666666666667 0.000666666666666667; % V D=0.8
0.000666666666666667 0.000222222222222222 0.000666666666666667 0.000222222222222222 0.996222222222222 0.000222222222222222 0.000222222222222222 0.000222222222222222 0.000666666666666667 0.000666666666666667; % Z D=0.8
0.000666666666666667 0.000222222222222222 0.000666666666666667 0.000222222222222222 0.000222222222222222 0.000222222222222222 0.000222222222222222 0.996222222222222 0.000666666666666667 0.000666666666666667; % l D=0.8
0.000666666666666667 0.996222222222222 0.000666666666666667 0.000222222222222222 0.000222222222222222 0.000222222222222222 0.000222222222222222 0.000222222222222222 0.000666666666666667 0.000666666666666667; % p D=0.8
0.003 0.001 0.290333333333333 0.001 0.001 0.001 0.001 0.001 0.377 0.323666666666667; % $ D=0.9
0.00075 0.00025 0.00075 0.00025 0.00025 0.00025 0.99575 0.00025 0.00075 0.00075; % J D=0.9
0.00075 0.00025 0.00075 0.00025 0.00025 0.99575 0.00025 0.00025 0.00075 0.00075; % K D=0.9
0.24775 0.00075 0.42275 0.00075 0.00075 0.00075 0.00075 0.00075 0.32275 0.00225; % P D=0.9
0.25275 0.00075 0.35275 0.00075 0.00075 0.00075 0.00075 0.00075 0.00225 0.38775; % R D=0.9
0.24275 0.00075 0.00225 0.00075 0.00075 0.00075 0.00075 0.00075 0.38775 0.36275; % T D=0.9
0.00075 0.00025 0.00075 0.99575 0.00025 0.00025 0.00025 0.00025 0.00075 0.00075; % V D=0.9
0.00075 0.00025 0.00075 0.00025 0.99575 0.00025 0.00025 0.00025 0.00075 0.00075; % Z D=0.9
0.00075 0.00025 0.00075 0.00025 0.00025 0.00025 0.00025 0.99575 0.00075 0.00075; % l D=0.9
0.00075 0.99575 0.00075 0.00025 0.00025 0.00025 0.00025 0.00025 0.00075 0.00075; % p D=0.9
0.00316666666666667 0.00105555555555556 0.290166666666667 0.00105555555555556 0.00105555555555556 0.00105555555555556 0.00105555555555556 0.00105555555555556 0.376833333333333 0.3235; % $ D=0.95
0.000791666666666667 0.000263888888888889 0.000791666666666667 0.000263888888888889 0.000263888888888889 0.000263888888888889 0.995513888888889 0.000263888888888889 0.000791666666666667 0.000791666666666667; % J D=0.95
0.000791666666666667 0.000263888888888889 0.000791666666666667 0.000263888888888889 0.000263888888888889 0.995513888888889 0.000263888888888889 0.000263888888888889 0.000791666666666667 0.000791666666666667; % K D=0.95
0.247625 0.000791666666666667 0.422625 0.000791666666666667 0.000791666666666667 0.000791666666666667 0.000791666666666667 0.000791666666666667 0.322625 0.002375; % P D=0.95
0.252625 0.000791666666666667 0.352625 0.000791666666666667 0.000791666666666667 0.000791666666666667 0.000791666666666667 0.000791666666666667 0.002375 0.387625; % R D=0.95
0.242625 0.000791666666666667 0.002375 0.000791666666666667 0.000791666666666667 0.000791666666666667 0.000791666666666667 0.000791666666666667 0.387625 0.362625; % T D=0.95
0.000791666666666667 0.000263888888888889 0.000791666666666667 0.995513888888889 0.000263888888888889 0.000263888888888889 0.000263888888888889 0.000263888888888889 0.000791666666666667 0.000791666666666667; % V D=0.95
0.000791666666666667 0.000263888888888889 0.000791666666666667 0.000263888888888889 0.995513888888889 0.000263888888888889 0.000263888888888889 0.000263888888888889 0.000791666666666667 0.000791666666666667; % Z D=0.95
0.000791666666666667 0.000263888888888889 0.000791666666666667 0.000263888888888889 0.000263888888888889 0.000263888888888889 0.000263888888888889 0.995513888888889 0.000791666666666667 0.000791666666666667; % l D=0.95
0.000791666666666667 0.995513888888889 0.000791666666666667 0.000263888888888889 0.000263888888888889 0.000263888888888889 0.000263888888888889 0.000263888888888889 0.000791666666666667 0.000791666666666667]; % p D=0.95