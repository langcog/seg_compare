syllables = '$BDGJPRTVglrtvz';
discounts = [0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 0.95];
kn_probs = [0.000416666666666667 8.33333333333333e-05 0.246416666666667 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 0.15975 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 0.213083333333333 0.213083333333333 8.33333333333333e-05 0.1665 8.33333333333333e-05; % $ D=0.1
0.000104166666666667 2.08333333333333e-05 0.000104166666666667 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 0.000104166666666667 0.9991875 2.08333333333333e-05 2.08333333333333e-05 0.000104166666666667 0.000104166666666667 2.08333333333333e-05 0.000125 2.08333333333333e-05; % B D=0.1
0.000104166666666667 2.08333333333333e-05 0.000104166666666667 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 0.000104166666666667 2.08333333333333e-05 2.08333333333333e-05 0.9991875 0.000104166666666667 0.000104166666666667 2.08333333333333e-05 0.000125 2.08333333333333e-05; % D D=0.1
0.216354166666667 0.000104166666666667 0.000520833333333333 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.166354166666667 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.233020833333333 0.1996875 0.000104166666666667 0.183125 0.000104166666666667; % G D=0.1
0.283020833333333 0.000104166666666667 0.183020833333333 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000520833333333333 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.1496875 0.191354166666667 0.000104166666666667 0.191458333333333 0.000104166666666667; % J D=0.1
0.000104166666666667 2.08333333333333e-05 0.000104166666666667 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 0.000104166666666667 2.08333333333333e-05 0.9991875 2.08333333333333e-05 0.000104166666666667 0.000104166666666667 2.08333333333333e-05 0.000125 2.08333333333333e-05; % P D=0.1
0.000104166666666667 0.9991875 0.000104166666666667 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 0.000104166666666667 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 0.000104166666666667 0.000104166666666667 2.08333333333333e-05 0.000125 2.08333333333333e-05; % R D=0.1
0.000104166666666667 2.08333333333333e-05 0.000104166666666667 2.08333333333333e-05 0.9991875 2.08333333333333e-05 0.000104166666666667 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 0.000104166666666667 0.000104166666666667 2.08333333333333e-05 0.000125 2.08333333333333e-05; % T D=0.1
0.266354166666667 0.000104166666666667 0.1746875 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.183020833333333 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000520833333333333 0.1746875 0.000104166666666667 0.199791666666667 0.000104166666666667; % V D=0.1
0.000104166666666667 2.08333333333333e-05 0.000104166666666667 0.9991875 2.08333333333333e-05 2.08333333333333e-05 0.000104166666666667 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 0.000104166666666667 0.000104166666666667 2.08333333333333e-05 0.000125 2.08333333333333e-05; % g D=0.1
0.000104166666666667 2.08333333333333e-05 0.000104166666666667 2.08333333333333e-05 2.08333333333333e-05 0.9991875 0.000104166666666667 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 0.000104166666666667 0.000104166666666667 2.08333333333333e-05 0.000125 2.08333333333333e-05; % l D=0.1
0.000104166666666667 2.08333333333333e-05 0.000104166666666667 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 0.000104166666666667 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 0.000104166666666667 0.000104166666666667 2.08333333333333e-05 0.000125 0.9991875; % r D=0.1
0.274791666666667 0.000125 0.191458333333333 0.000125 0.000125 0.000125 0.233125 0.000125 0.000125 0.000125 0.124791666666667 0.166458333333333 0.000125 0.00825 0.000125; % t D=0.1
0.000104166666666667 2.08333333333333e-05 0.000104166666666667 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 0.000104166666666667 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 0.000104166666666667 0.000104166666666667 0.9991875 0.000125 2.08333333333333e-05; % v D=0.1
0.208020833333333 0.000104166666666667 0.141354166666667 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.216354166666667 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.2246875 0.000520833333333333 0.000104166666666667 0.208125 0.000104166666666667; % z D=0.1
0.000833333333333333 0.000166666666666667 0.246166666666667 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.1595 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.212833333333333 0.212833333333333 0.000166666666666667 0.166333333333333 0.000166666666666667; % $ D=0.2
0.000208333333333333 4.16666666666667e-05 0.000208333333333333 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 0.000208333333333333 0.998375 4.16666666666667e-05 4.16666666666667e-05 0.000208333333333333 0.000208333333333333 4.16666666666667e-05 0.00025 4.16666666666667e-05; % B D=0.2
0.000208333333333333 4.16666666666667e-05 0.000208333333333333 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 0.000208333333333333 4.16666666666667e-05 4.16666666666667e-05 0.998375 0.000208333333333333 0.000208333333333333 4.16666666666667e-05 0.00025 4.16666666666667e-05; % D D=0.2
0.216041666666667 0.000208333333333333 0.00104166666666667 0.000208333333333333 0.000208333333333333 0.000208333333333333 0.166041666666667 0.000208333333333333 0.000208333333333333 0.000208333333333333 0.232708333333333 0.199375 0.000208333333333333 0.182916666666667 0.000208333333333333; % G D=0.2
0.282708333333333 0.000208333333333333 0.182708333333333 0.000208333333333333 0.000208333333333333 0.000208333333333333 0.00104166666666667 0.000208333333333333 0.000208333333333333 0.000208333333333333 0.149375 0.191041666666667 0.000208333333333333 0.19125 0.000208333333333333; % J D=0.2
0.000208333333333333 4.16666666666667e-05 0.000208333333333333 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 0.000208333333333333 4.16666666666667e-05 0.998375 4.16666666666667e-05 0.000208333333333333 0.000208333333333333 4.16666666666667e-05 0.00025 4.16666666666667e-05; % P D=0.2
0.000208333333333333 0.998375 0.000208333333333333 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 0.000208333333333333 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 0.000208333333333333 0.000208333333333333 4.16666666666667e-05 0.00025 4.16666666666667e-05; % R D=0.2
0.000208333333333333 4.16666666666667e-05 0.000208333333333333 4.16666666666667e-05 0.998375 4.16666666666667e-05 0.000208333333333333 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 0.000208333333333333 0.000208333333333333 4.16666666666667e-05 0.00025 4.16666666666667e-05; % T D=0.2
0.266041666666667 0.000208333333333333 0.174375 0.000208333333333333 0.000208333333333333 0.000208333333333333 0.182708333333333 0.000208333333333333 0.000208333333333333 0.000208333333333333 0.00104166666666667 0.174375 0.000208333333333333 0.199583333333333 0.000208333333333333; % V D=0.2
0.000208333333333333 4.16666666666667e-05 0.000208333333333333 0.998375 4.16666666666667e-05 4.16666666666667e-05 0.000208333333333333 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 0.000208333333333333 0.000208333333333333 4.16666666666667e-05 0.00025 4.16666666666667e-05; % g D=0.2
0.000208333333333333 4.16666666666667e-05 0.000208333333333333 4.16666666666667e-05 4.16666666666667e-05 0.998375 0.000208333333333333 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 0.000208333333333333 0.000208333333333333 4.16666666666667e-05 0.00025 4.16666666666667e-05; % l D=0.2
0.000208333333333333 4.16666666666667e-05 0.000208333333333333 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 0.000208333333333333 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 0.000208333333333333 0.000208333333333333 4.16666666666667e-05 0.00025 0.998375; % r D=0.2
0.274583333333333 0.00025 0.19125 0.00025 0.00025 0.00025 0.232916666666667 0.00025 0.00025 0.00025 0.124583333333333 0.16625 0.00025 0.00816666666666667 0.00025; % t D=0.2
0.000208333333333333 4.16666666666667e-05 0.000208333333333333 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 0.000208333333333333 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 0.000208333333333333 0.000208333333333333 0.998375 0.00025 4.16666666666667e-05; % v D=0.2
0.207708333333333 0.000208333333333333 0.141041666666667 0.000208333333333333 0.000208333333333333 0.000208333333333333 0.216041666666667 0.000208333333333333 0.000208333333333333 0.000208333333333333 0.224375 0.00104166666666667 0.000208333333333333 0.207916666666667 0.000208333333333333; % z D=0.2
0.00125 0.00025 0.245916666666667 0.00025 0.00025 0.00025 0.15925 0.00025 0.00025 0.00025 0.212583333333333 0.212583333333333 0.00025 0.166166666666667 0.00025; % $ D=0.3
0.0003125 6.25e-05 0.0003125 6.25e-05 6.25e-05 6.25e-05 0.0003125 0.9975625 6.25e-05 6.25e-05 0.0003125 0.0003125 6.25e-05 0.000375 6.25e-05; % B D=0.3
0.0003125 6.25e-05 0.0003125 6.25e-05 6.25e-05 6.25e-05 0.0003125 6.25e-05 6.25e-05 0.9975625 0.0003125 0.0003125 6.25e-05 0.000375 6.25e-05; % D D=0.3
0.215729166666667 0.0003125 0.0015625 0.0003125 0.0003125 0.0003125 0.165729166666667 0.0003125 0.0003125 0.0003125 0.232395833333333 0.1990625 0.0003125 0.182708333333333 0.0003125; % G D=0.3
0.282395833333333 0.0003125 0.182395833333333 0.0003125 0.0003125 0.0003125 0.0015625 0.0003125 0.0003125 0.0003125 0.1490625 0.190729166666667 0.0003125 0.191041666666667 0.0003125; % J D=0.3
0.0003125 6.25e-05 0.0003125 6.25e-05 6.25e-05 6.25e-05 0.0003125 6.25e-05 0.9975625 6.25e-05 0.0003125 0.0003125 6.25e-05 0.000375 6.25e-05; % P D=0.3
0.0003125 0.9975625 0.0003125 6.25e-05 6.25e-05 6.25e-05 0.0003125 6.25e-05 6.25e-05 6.25e-05 0.0003125 0.0003125 6.25e-05 0.000375 6.25e-05; % R D=0.3
0.0003125 6.25e-05 0.0003125 6.25e-05 0.9975625 6.25e-05 0.0003125 6.25e-05 6.25e-05 6.25e-05 0.0003125 0.0003125 6.25e-05 0.000375 6.25e-05; % T D=0.3
0.265729166666667 0.0003125 0.1740625 0.0003125 0.0003125 0.0003125 0.182395833333333 0.0003125 0.0003125 0.0003125 0.0015625 0.1740625 0.0003125 0.199375 0.0003125; % V D=0.3
0.0003125 6.25e-05 0.0003125 0.9975625 6.25e-05 6.25e-05 0.0003125 6.25e-05 6.25e-05 6.25e-05 0.0003125 0.0003125 6.25e-05 0.000375 6.25e-05; % g D=0.3
0.0003125 6.25e-05 0.0003125 6.25e-05 6.25e-05 0.9975625 0.0003125 6.25e-05 6.25e-05 6.25e-05 0.0003125 0.0003125 6.25e-05 0.000375 6.25e-05; % l D=0.3
0.0003125 6.25e-05 0.0003125 6.25e-05 6.25e-05 6.25e-05 0.0003125 6.25e-05 6.25e-05 6.25e-05 0.0003125 0.0003125 6.25e-05 0.000375 0.9975625; % r D=0.3
0.274375 0.000375 0.191041666666667 0.000375 0.000375 0.000375 0.232708333333333 0.000375 0.000375 0.000375 0.124375 0.166041666666667 0.000375 0.00808333333333333 0.000375; % t D=0.3
0.0003125 6.25e-05 0.0003125 6.25e-05 6.25e-05 6.25e-05 0.0003125 6.25e-05 6.25e-05 6.25e-05 0.0003125 0.0003125 0.9975625 0.000375 6.25e-05; % v D=0.3
0.207395833333333 0.0003125 0.140729166666667 0.0003125 0.0003125 0.0003125 0.215729166666667 0.0003125 0.0003125 0.0003125 0.2240625 0.0015625 0.0003125 0.207708333333333 0.0003125; % z D=0.3
0.00166666666666667 0.000333333333333333 0.245666666666667 0.000333333333333333 0.000333333333333333 0.000333333333333333 0.159 0.000333333333333333 0.000333333333333333 0.000333333333333333 0.212333333333333 0.212333333333333 0.000333333333333333 0.166 0.000333333333333333; % $ D=0.4
0.000416666666666667 8.33333333333333e-05 0.000416666666666667 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 0.000416666666666667 0.99675 8.33333333333333e-05 8.33333333333333e-05 0.000416666666666667 0.000416666666666667 8.33333333333333e-05 0.0005 8.33333333333333e-05; % B D=0.4
0.000416666666666667 8.33333333333333e-05 0.000416666666666667 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 0.000416666666666667 8.33333333333333e-05 8.33333333333333e-05 0.99675 0.000416666666666667 0.000416666666666667 8.33333333333333e-05 0.0005 8.33333333333333e-05; % D D=0.4
0.215416666666667 0.000416666666666667 0.00208333333333333 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.165416666666667 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.232083333333333 0.19875 0.000416666666666667 0.1825 0.000416666666666667; % G D=0.4
0.282083333333333 0.000416666666666667 0.182083333333333 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.00208333333333333 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.14875 0.190416666666667 0.000416666666666667 0.190833333333333 0.000416666666666667; % J D=0.4
0.000416666666666667 8.33333333333333e-05 0.000416666666666667 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 0.000416666666666667 8.33333333333333e-05 0.99675 8.33333333333333e-05 0.000416666666666667 0.000416666666666667 8.33333333333333e-05 0.0005 8.33333333333333e-05; % P D=0.4
0.000416666666666667 0.99675 0.000416666666666667 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 0.000416666666666667 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 0.000416666666666667 0.000416666666666667 8.33333333333333e-05 0.0005 8.33333333333333e-05; % R D=0.4
0.000416666666666667 8.33333333333333e-05 0.000416666666666667 8.33333333333333e-05 0.99675 8.33333333333333e-05 0.000416666666666667 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 0.000416666666666667 0.000416666666666667 8.33333333333333e-05 0.0005 8.33333333333333e-05; % T D=0.4
0.265416666666667 0.000416666666666667 0.17375 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.182083333333333 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.00208333333333333 0.17375 0.000416666666666667 0.199166666666667 0.000416666666666667; % V D=0.4
0.000416666666666667 8.33333333333333e-05 0.000416666666666667 0.99675 8.33333333333333e-05 8.33333333333333e-05 0.000416666666666667 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 0.000416666666666667 0.000416666666666667 8.33333333333333e-05 0.0005 8.33333333333333e-05; % g D=0.4
0.000416666666666667 8.33333333333333e-05 0.000416666666666667 8.33333333333333e-05 8.33333333333333e-05 0.99675 0.000416666666666667 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 0.000416666666666667 0.000416666666666667 8.33333333333333e-05 0.0005 8.33333333333333e-05; % l D=0.4
0.000416666666666667 8.33333333333333e-05 0.000416666666666667 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 0.000416666666666667 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 0.000416666666666667 0.000416666666666667 8.33333333333333e-05 0.0005 0.99675; % r D=0.4
0.274166666666667 0.0005 0.190833333333333 0.0005 0.0005 0.0005 0.2325 0.0005 0.0005 0.0005 0.124166666666667 0.165833333333333 0.0005 0.008 0.0005; % t D=0.4
0.000416666666666667 8.33333333333333e-05 0.000416666666666667 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 0.000416666666666667 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 0.000416666666666667 0.000416666666666667 0.99675 0.0005 8.33333333333333e-05; % v D=0.4
0.207083333333333 0.000416666666666667 0.140416666666667 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.215416666666667 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.22375 0.00208333333333333 0.000416666666666667 0.2075 0.000416666666666667; % z D=0.4
0.00208333333333333 0.000416666666666667 0.245416666666667 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.15875 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.212083333333333 0.212083333333333 0.000416666666666667 0.165833333333333 0.000416666666666667; % $ D=0.5
0.000520833333333333 0.000104166666666667 0.000520833333333333 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000520833333333333 0.9959375 0.000104166666666667 0.000104166666666667 0.000520833333333333 0.000520833333333333 0.000104166666666667 0.000625 0.000104166666666667; % B D=0.5
0.000520833333333333 0.000104166666666667 0.000520833333333333 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000520833333333333 0.000104166666666667 0.000104166666666667 0.9959375 0.000520833333333333 0.000520833333333333 0.000104166666666667 0.000625 0.000104166666666667; % D D=0.5
0.215104166666667 0.000520833333333333 0.00260416666666667 0.000520833333333333 0.000520833333333333 0.000520833333333333 0.165104166666667 0.000520833333333333 0.000520833333333333 0.000520833333333333 0.231770833333333 0.1984375 0.000520833333333333 0.182291666666667 0.000520833333333333; % G D=0.5
0.281770833333333 0.000520833333333333 0.181770833333333 0.000520833333333333 0.000520833333333333 0.000520833333333333 0.00260416666666667 0.000520833333333333 0.000520833333333333 0.000520833333333333 0.1484375 0.190104166666667 0.000520833333333333 0.190625 0.000520833333333333; % J D=0.5
0.000520833333333333 0.000104166666666667 0.000520833333333333 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000520833333333333 0.000104166666666667 0.9959375 0.000104166666666667 0.000520833333333333 0.000520833333333333 0.000104166666666667 0.000625 0.000104166666666667; % P D=0.5
0.000520833333333333 0.9959375 0.000520833333333333 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000520833333333333 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000520833333333333 0.000520833333333333 0.000104166666666667 0.000625 0.000104166666666667; % R D=0.5
0.000520833333333333 0.000104166666666667 0.000520833333333333 0.000104166666666667 0.9959375 0.000104166666666667 0.000520833333333333 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000520833333333333 0.000520833333333333 0.000104166666666667 0.000625 0.000104166666666667; % T D=0.5
0.265104166666667 0.000520833333333333 0.1734375 0.000520833333333333 0.000520833333333333 0.000520833333333333 0.181770833333333 0.000520833333333333 0.000520833333333333 0.000520833333333333 0.00260416666666667 0.1734375 0.000520833333333333 0.198958333333333 0.000520833333333333; % V D=0.5
0.000520833333333333 0.000104166666666667 0.000520833333333333 0.9959375 0.000104166666666667 0.000104166666666667 0.000520833333333333 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000520833333333333 0.000520833333333333 0.000104166666666667 0.000625 0.000104166666666667; % g D=0.5
0.000520833333333333 0.000104166666666667 0.000520833333333333 0.000104166666666667 0.000104166666666667 0.9959375 0.000520833333333333 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000520833333333333 0.000520833333333333 0.000104166666666667 0.000625 0.000104166666666667; % l D=0.5
0.000520833333333333 0.000104166666666667 0.000520833333333333 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000520833333333333 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000520833333333333 0.000520833333333333 0.000104166666666667 0.000625 0.9959375; % r D=0.5
0.273958333333333 0.000625 0.190625 0.000625 0.000625 0.000625 0.232291666666667 0.000625 0.000625 0.000625 0.123958333333333 0.165625 0.000625 0.00791666666666667 0.000625; % t D=0.5
0.000520833333333333 0.000104166666666667 0.000520833333333333 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000520833333333333 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000520833333333333 0.000520833333333333 0.9959375 0.000625 0.000104166666666667; % v D=0.5
0.206770833333333 0.000520833333333333 0.140104166666667 0.000520833333333333 0.000520833333333333 0.000520833333333333 0.215104166666667 0.000520833333333333 0.000520833333333333 0.000520833333333333 0.2234375 0.00260416666666667 0.000520833333333333 0.207291666666667 0.000520833333333333; % z D=0.5
0.0025 0.0005 0.245166666666667 0.0005 0.0005 0.0005 0.1585 0.0005 0.0005 0.0005 0.211833333333333 0.211833333333333 0.0005 0.165666666666667 0.0005; % $ D=0.6
0.000625 0.000125 0.000625 0.000125 0.000125 0.000125 0.000625 0.995125 0.000125 0.000125 0.000625 0.000625 0.000125 0.00075 0.000125; % B D=0.6
0.000625 0.000125 0.000625 0.000125 0.000125 0.000125 0.000625 0.000125 0.000125 0.995125 0.000625 0.000625 0.000125 0.00075 0.000125; % D D=0.6
0.214791666666667 0.000625 0.003125 0.000625 0.000625 0.000625 0.164791666666667 0.000625 0.000625 0.000625 0.231458333333333 0.198125 0.000625 0.182083333333333 0.000625; % G D=0.6
0.281458333333333 0.000625 0.181458333333333 0.000625 0.000625 0.000625 0.003125 0.000625 0.000625 0.000625 0.148125 0.189791666666667 0.000625 0.190416666666667 0.000625; % J D=0.6
0.000625 0.000125 0.000625 0.000125 0.000125 0.000125 0.000625 0.000125 0.995125 0.000125 0.000625 0.000625 0.000125 0.00075 0.000125; % P D=0.6
0.000625 0.995125 0.000625 0.000125 0.000125 0.000125 0.000625 0.000125 0.000125 0.000125 0.000625 0.000625 0.000125 0.00075 0.000125; % R D=0.6
0.000625 0.000125 0.000625 0.000125 0.995125 0.000125 0.000625 0.000125 0.000125 0.000125 0.000625 0.000625 0.000125 0.00075 0.000125; % T D=0.6
0.264791666666667 0.000625 0.173125 0.000625 0.000625 0.000625 0.181458333333333 0.000625 0.000625 0.000625 0.003125 0.173125 0.000625 0.19875 0.000625; % V D=0.6
0.000625 0.000125 0.000625 0.995125 0.000125 0.000125 0.000625 0.000125 0.000125 0.000125 0.000625 0.000625 0.000125 0.00075 0.000125; % g D=0.6
0.000625 0.000125 0.000625 0.000125 0.000125 0.995125 0.000625 0.000125 0.000125 0.000125 0.000625 0.000625 0.000125 0.00075 0.000125; % l D=0.6
0.000625 0.000125 0.000625 0.000125 0.000125 0.000125 0.000625 0.000125 0.000125 0.000125 0.000625 0.000625 0.000125 0.00075 0.995125; % r D=0.6
0.27375 0.00075 0.190416666666667 0.00075 0.00075 0.00075 0.232083333333333 0.00075 0.00075 0.00075 0.12375 0.165416666666667 0.00075 0.00783333333333333 0.00075; % t D=0.6
0.000625 0.000125 0.000625 0.000125 0.000125 0.000125 0.000625 0.000125 0.000125 0.000125 0.000625 0.000625 0.995125 0.00075 0.000125; % v D=0.6
0.206458333333333 0.000625 0.139791666666667 0.000625 0.000625 0.000625 0.214791666666667 0.000625 0.000625 0.000625 0.223125 0.003125 0.000625 0.207083333333333 0.000625; % z D=0.6
0.00291666666666667 0.000583333333333333 0.244916666666667 0.000583333333333333 0.000583333333333333 0.000583333333333333 0.15825 0.000583333333333333 0.000583333333333333 0.000583333333333333 0.211583333333333 0.211583333333333 0.000583333333333333 0.1655 0.000583333333333333; % $ D=0.7
0.000729166666666667 0.000145833333333333 0.000729166666666667 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.000729166666666667 0.9943125 0.000145833333333333 0.000145833333333333 0.000729166666666667 0.000729166666666667 0.000145833333333333 0.000875 0.000145833333333333; % B D=0.7
0.000729166666666667 0.000145833333333333 0.000729166666666667 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.000729166666666667 0.000145833333333333 0.000145833333333333 0.9943125 0.000729166666666667 0.000729166666666667 0.000145833333333333 0.000875 0.000145833333333333; % D D=0.7
0.214479166666667 0.000729166666666667 0.00364583333333333 0.000729166666666667 0.000729166666666667 0.000729166666666667 0.164479166666667 0.000729166666666667 0.000729166666666667 0.000729166666666667 0.231145833333333 0.1978125 0.000729166666666667 0.181875 0.000729166666666667; % G D=0.7
0.281145833333333 0.000729166666666667 0.181145833333333 0.000729166666666667 0.000729166666666667 0.000729166666666667 0.00364583333333333 0.000729166666666667 0.000729166666666667 0.000729166666666667 0.1478125 0.189479166666667 0.000729166666666667 0.190208333333333 0.000729166666666667; % J D=0.7
0.000729166666666667 0.000145833333333333 0.000729166666666667 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.000729166666666667 0.000145833333333333 0.9943125 0.000145833333333333 0.000729166666666667 0.000729166666666667 0.000145833333333333 0.000875 0.000145833333333333; % P D=0.7
0.000729166666666667 0.9943125 0.000729166666666667 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.000729166666666667 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.000729166666666667 0.000729166666666667 0.000145833333333333 0.000875 0.000145833333333333; % R D=0.7
0.000729166666666667 0.000145833333333333 0.000729166666666667 0.000145833333333333 0.9943125 0.000145833333333333 0.000729166666666667 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.000729166666666667 0.000729166666666667 0.000145833333333333 0.000875 0.000145833333333333; % T D=0.7
0.264479166666667 0.000729166666666667 0.1728125 0.000729166666666667 0.000729166666666667 0.000729166666666667 0.181145833333333 0.000729166666666667 0.000729166666666667 0.000729166666666667 0.00364583333333333 0.1728125 0.000729166666666667 0.198541666666667 0.000729166666666667; % V D=0.7
0.000729166666666667 0.000145833333333333 0.000729166666666667 0.9943125 0.000145833333333333 0.000145833333333333 0.000729166666666667 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.000729166666666667 0.000729166666666667 0.000145833333333333 0.000875 0.000145833333333333; % g D=0.7
0.000729166666666667 0.000145833333333333 0.000729166666666667 0.000145833333333333 0.000145833333333333 0.9943125 0.000729166666666667 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.000729166666666667 0.000729166666666667 0.000145833333333333 0.000875 0.000145833333333333; % l D=0.7
0.000729166666666667 0.000145833333333333 0.000729166666666667 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.000729166666666667 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.000729166666666667 0.000729166666666667 0.000145833333333333 0.000875 0.9943125; % r D=0.7
0.273541666666667 0.000875 0.190208333333333 0.000875 0.000875 0.000875 0.231875 0.000875 0.000875 0.000875 0.123541666666667 0.165208333333333 0.000875 0.00775 0.000875; % t D=0.7
0.000729166666666667 0.000145833333333333 0.000729166666666667 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.000729166666666667 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.000729166666666667 0.000729166666666667 0.9943125 0.000875 0.000145833333333333; % v D=0.7
0.206145833333333 0.000729166666666667 0.139479166666667 0.000729166666666667 0.000729166666666667 0.000729166666666667 0.214479166666667 0.000729166666666667 0.000729166666666667 0.000729166666666667 0.2228125 0.00364583333333333 0.000729166666666667 0.206875 0.000729166666666667; % z D=0.7
0.00333333333333333 0.000666666666666667 0.244666666666667 0.000666666666666667 0.000666666666666667 0.000666666666666667 0.158 0.000666666666666667 0.000666666666666667 0.000666666666666667 0.211333333333333 0.211333333333333 0.000666666666666667 0.165333333333333 0.000666666666666667; % $ D=0.8
0.000833333333333333 0.000166666666666667 0.000833333333333333 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000833333333333333 0.9935 0.000166666666666667 0.000166666666666667 0.000833333333333333 0.000833333333333333 0.000166666666666667 0.001 0.000166666666666667; % B D=0.8
0.000833333333333333 0.000166666666666667 0.000833333333333333 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000833333333333333 0.000166666666666667 0.000166666666666667 0.9935 0.000833333333333333 0.000833333333333333 0.000166666666666667 0.001 0.000166666666666667; % D D=0.8
0.214166666666667 0.000833333333333333 0.00416666666666667 0.000833333333333333 0.000833333333333333 0.000833333333333333 0.164166666666667 0.000833333333333333 0.000833333333333333 0.000833333333333333 0.230833333333333 0.1975 0.000833333333333333 0.181666666666667 0.000833333333333333; % G D=0.8
0.280833333333333 0.000833333333333333 0.180833333333333 0.000833333333333333 0.000833333333333333 0.000833333333333333 0.00416666666666667 0.000833333333333333 0.000833333333333333 0.000833333333333333 0.1475 0.189166666666667 0.000833333333333333 0.19 0.000833333333333333; % J D=0.8
0.000833333333333333 0.000166666666666667 0.000833333333333333 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000833333333333333 0.000166666666666667 0.9935 0.000166666666666667 0.000833333333333333 0.000833333333333333 0.000166666666666667 0.001 0.000166666666666667; % P D=0.8
0.000833333333333333 0.9935 0.000833333333333333 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000833333333333333 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000833333333333333 0.000833333333333333 0.000166666666666667 0.001 0.000166666666666667; % R D=0.8
0.000833333333333333 0.000166666666666667 0.000833333333333333 0.000166666666666667 0.9935 0.000166666666666667 0.000833333333333333 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000833333333333333 0.000833333333333333 0.000166666666666667 0.001 0.000166666666666667; % T D=0.8
0.264166666666667 0.000833333333333333 0.1725 0.000833333333333333 0.000833333333333333 0.000833333333333333 0.180833333333333 0.000833333333333333 0.000833333333333333 0.000833333333333333 0.00416666666666667 0.1725 0.000833333333333333 0.198333333333333 0.000833333333333333; % V D=0.8
0.000833333333333333 0.000166666666666667 0.000833333333333333 0.9935 0.000166666666666667 0.000166666666666667 0.000833333333333333 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000833333333333333 0.000833333333333333 0.000166666666666667 0.001 0.000166666666666667; % g D=0.8
0.000833333333333333 0.000166666666666667 0.000833333333333333 0.000166666666666667 0.000166666666666667 0.9935 0.000833333333333333 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000833333333333333 0.000833333333333333 0.000166666666666667 0.001 0.000166666666666667; % l D=0.8
0.000833333333333333 0.000166666666666667 0.000833333333333333 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000833333333333333 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000833333333333333 0.000833333333333333 0.000166666666666667 0.001 0.9935; % r D=0.8
0.273333333333333 0.001 0.19 0.001 0.001 0.001 0.231666666666667 0.001 0.001 0.001 0.123333333333333 0.165 0.001 0.00766666666666667 0.001; % t D=0.8
0.000833333333333333 0.000166666666666667 0.000833333333333333 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000833333333333333 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000833333333333333 0.000833333333333333 0.9935 0.001 0.000166666666666667; % v D=0.8
0.205833333333333 0.000833333333333333 0.139166666666667 0.000833333333333333 0.000833333333333333 0.000833333333333333 0.214166666666667 0.000833333333333333 0.000833333333333333 0.000833333333333333 0.2225 0.00416666666666667 0.000833333333333333 0.206666666666667 0.000833333333333333; % z D=0.8
0.00375 0.00075 0.244416666666667 0.00075 0.00075 0.00075 0.15775 0.00075 0.00075 0.00075 0.211083333333333 0.211083333333333 0.00075 0.165166666666667 0.00075; % $ D=0.9
0.0009375 0.0001875 0.0009375 0.0001875 0.0001875 0.0001875 0.0009375 0.9926875 0.0001875 0.0001875 0.0009375 0.0009375 0.0001875 0.001125 0.0001875; % B D=0.9
0.0009375 0.0001875 0.0009375 0.0001875 0.0001875 0.0001875 0.0009375 0.0001875 0.0001875 0.9926875 0.0009375 0.0009375 0.0001875 0.001125 0.0001875; % D D=0.9
0.213854166666667 0.0009375 0.0046875 0.0009375 0.0009375 0.0009375 0.163854166666667 0.0009375 0.0009375 0.0009375 0.230520833333333 0.1971875 0.0009375 0.181458333333333 0.0009375; % G D=0.9
0.280520833333333 0.0009375 0.180520833333333 0.0009375 0.0009375 0.0009375 0.0046875 0.0009375 0.0009375 0.0009375 0.1471875 0.188854166666667 0.0009375 0.189791666666667 0.0009375; % J D=0.9
0.0009375 0.0001875 0.0009375 0.0001875 0.0001875 0.0001875 0.0009375 0.0001875 0.9926875 0.0001875 0.0009375 0.0009375 0.0001875 0.001125 0.0001875; % P D=0.9
0.0009375 0.9926875 0.0009375 0.0001875 0.0001875 0.0001875 0.0009375 0.0001875 0.0001875 0.0001875 0.0009375 0.0009375 0.0001875 0.001125 0.0001875; % R D=0.9
0.0009375 0.0001875 0.0009375 0.0001875 0.9926875 0.0001875 0.0009375 0.0001875 0.0001875 0.0001875 0.0009375 0.0009375 0.0001875 0.001125 0.0001875; % T D=0.9
0.263854166666667 0.0009375 0.1721875 0.0009375 0.0009375 0.0009375 0.180520833333333 0.0009375 0.0009375 0.0009375 0.0046875 0.1721875 0.0009375 0.198125 0.0009375; % V D=0.9
0.0009375 0.0001875 0.0009375 0.9926875 0.0001875 0.0001875 0.0009375 0.0001875 0.0001875 0.0001875 0.0009375 0.0009375 0.0001875 0.001125 0.0001875; % g D=0.9
0.0009375 0.0001875 0.0009375 0.0001875 0.0001875 0.9926875 0.0009375 0.0001875 0.0001875 0.0001875 0.0009375 0.0009375 0.0001875 0.001125 0.0001875; % l D=0.9
0.0009375 0.0001875 0.0009375 0.0001875 0.0001875 0.0001875 0.0009375 0.0001875 0.0001875 0.0001875 0.0009375 0.0009375 0.0001875 0.001125 0.9926875; % r D=0.9
0.273125 0.001125 0.189791666666667 0.001125 0.001125 0.001125 0.231458333333333 0.001125 0.001125 0.001125 0.123125 0.164791666666667 0.001125 0.00758333333333333 0.001125; % t D=0.9
0.0009375 0.0001875 0.0009375 0.0001875 0.0001875 0.0001875 0.0009375 0.0001875 0.0001875 0.0001875 0.0009375 0.0009375 0.9926875 0.001125 0.0001875; % v D=0.9
0.205520833333333 0.0009375 0.138854166666667 0.0009375 0.0009375 0.0009375 0.213854166666667 0.0009375 0.0009375 0.0009375 0.2221875 0.0046875 0.0009375 0.206458333333333 0.0009375; % z D=0.9
0.00395833333333333 0.000791666666666667 0.244291666666667 0.000791666666666667 0.000791666666666667 0.000791666666666667 0.157625 0.000791666666666667 0.000791666666666667 0.000791666666666667 0.210958333333333 0.210958333333333 0.000791666666666667 0.165083333333333 0.000791666666666667; % $ D=0.95
0.000989583333333333 0.000197916666666667 0.000989583333333333 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.000989583333333333 0.99228125 0.000197916666666667 0.000197916666666667 0.000989583333333333 0.000989583333333333 0.000197916666666667 0.0011875 0.000197916666666667; % B D=0.95
0.000989583333333333 0.000197916666666667 0.000989583333333333 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.000989583333333333 0.000197916666666667 0.000197916666666667 0.99228125 0.000989583333333333 0.000989583333333333 0.000197916666666667 0.0011875 0.000197916666666667; % D D=0.95
0.213697916666667 0.000989583333333333 0.00494791666666667 0.000989583333333333 0.000989583333333333 0.000989583333333333 0.163697916666667 0.000989583333333333 0.000989583333333333 0.000989583333333333 0.230364583333333 0.19703125 0.000989583333333333 0.181354166666667 0.000989583333333333; % G D=0.95
0.280364583333333 0.000989583333333333 0.180364583333333 0.000989583333333333 0.000989583333333333 0.000989583333333333 0.00494791666666667 0.000989583333333333 0.000989583333333333 0.000989583333333333 0.14703125 0.188697916666667 0.000989583333333333 0.1896875 0.000989583333333333; % J D=0.95
0.000989583333333333 0.000197916666666667 0.000989583333333333 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.000989583333333333 0.000197916666666667 0.99228125 0.000197916666666667 0.000989583333333333 0.000989583333333333 0.000197916666666667 0.0011875 0.000197916666666667; % P D=0.95
0.000989583333333333 0.99228125 0.000989583333333333 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.000989583333333333 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.000989583333333333 0.000989583333333333 0.000197916666666667 0.0011875 0.000197916666666667; % R D=0.95
0.000989583333333333 0.000197916666666667 0.000989583333333333 0.000197916666666667 0.99228125 0.000197916666666667 0.000989583333333333 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.000989583333333333 0.000989583333333333 0.000197916666666667 0.0011875 0.000197916666666667; % T D=0.95
0.263697916666667 0.000989583333333333 0.17203125 0.000989583333333333 0.000989583333333333 0.000989583333333333 0.180364583333333 0.000989583333333333 0.000989583333333333 0.000989583333333333 0.00494791666666667 0.17203125 0.000989583333333333 0.198020833333333 0.000989583333333333; % V D=0.95
0.000989583333333333 0.000197916666666667 0.000989583333333333 0.99228125 0.000197916666666667 0.000197916666666667 0.000989583333333333 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.000989583333333333 0.000989583333333333 0.000197916666666667 0.0011875 0.000197916666666667; % g D=0.95
0.000989583333333333 0.000197916666666667 0.000989583333333333 0.000197916666666667 0.000197916666666667 0.99228125 0.000989583333333333 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.000989583333333333 0.000989583333333333 0.000197916666666667 0.0011875 0.000197916666666667; % l D=0.95
0.000989583333333333 0.000197916666666667 0.000989583333333333 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.000989583333333333 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.000989583333333333 0.000989583333333333 0.000197916666666667 0.0011875 0.99228125; % r D=0.95
0.273020833333333 0.0011875 0.1896875 0.0011875 0.0011875 0.0011875 0.231354166666667 0.0011875 0.0011875 0.0011875 0.123020833333333 0.1646875 0.0011875 0.00754166666666667 0.0011875; % t D=0.95
0.000989583333333333 0.000197916666666667 0.000989583333333333 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.000989583333333333 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.000989583333333333 0.000989583333333333 0.99228125 0.0011875 0.000197916666666667; % v D=0.95
0.205364583333333 0.000989583333333333 0.138697916666667 0.000989583333333333 0.000989583333333333 0.000989583333333333 0.213697916666667 0.000989583333333333 0.000989583333333333 0.000989583333333333 0.22203125 0.00494791666666667 0.000989583333333333 0.206354166666667 0.000989583333333333]; % z D=0.95