syllables = '$FGJKMNTVdfgmpr';
discounts = [0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 0.95];
kn_probs = [0.000416666666666667 0.19975 8.33333333333333e-05 0.239833333333333 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 0.153083333333333 8.33333333333333e-05 8.33333333333333e-05 0.233083333333333 8.33333333333333e-05 8.33333333333333e-05 0.173083333333333; % $ D=0.1
0.000104166666666667 0.000104166666666667 0.9991875 0.000125 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 0.000104166666666667 2.08333333333333e-05 2.08333333333333e-05 0.000104166666666667 2.08333333333333e-05 2.08333333333333e-05 0.000104166666666667; % F D=0.1
0.000104166666666667 0.000104166666666667 2.08333333333333e-05 0.000125 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 0.000104166666666667 0.9991875 2.08333333333333e-05 0.000104166666666667 2.08333333333333e-05 2.08333333333333e-05 0.000104166666666667; % G D=0.1
0.000104166666666667 0.000104166666666667 2.08333333333333e-05 0.000125 2.08333333333333e-05 0.9991875 2.08333333333333e-05 2.08333333333333e-05 0.000104166666666667 2.08333333333333e-05 2.08333333333333e-05 0.000104166666666667 2.08333333333333e-05 2.08333333333333e-05 0.000104166666666667; % J D=0.1
0.233020833333333 0.141354166666667 0.000104166666666667 0.199791666666667 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.191354166666667 0.000104166666666667 0.000104166666666667 0.000520833333333333 0.000104166666666667 0.000104166666666667 0.233020833333333; % K D=0.1
0.258125 0.183125 0.000125 0.00825 0.000125 0.000125 0.000125 0.000125 0.224791666666667 0.000125 0.000125 0.158125 0.000125 0.000125 0.166458333333333; % M D=0.1
0.266354166666667 0.183020833333333 0.000104166666666667 0.149791666666667 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000520833333333333 0.000104166666666667 0.000104166666666667 0.208020833333333 0.000104166666666667 0.000104166666666667 0.191354166666667; % N D=0.1
0.2246875 0.241354166666667 0.000104166666666667 0.174791666666667 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.183020833333333 0.000104166666666667 0.000104166666666667 0.1746875 0.000104166666666667 0.000104166666666667 0.000520833333333333; % T D=0.1
0.000104166666666667 0.000104166666666667 2.08333333333333e-05 0.000125 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 0.000104166666666667 2.08333333333333e-05 2.08333333333333e-05 0.000104166666666667 2.08333333333333e-05 0.9991875 0.000104166666666667; % V D=0.1
0.266354166666667 0.000520833333333333 0.000104166666666667 0.166458333333333 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.208020833333333 0.000104166666666667 0.000104166666666667 0.166354166666667 0.000104166666666667 0.000104166666666667 0.191354166666667; % d D=0.1
0.000104166666666667 0.000104166666666667 2.08333333333333e-05 0.000125 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 0.9991875 0.000104166666666667 2.08333333333333e-05 2.08333333333333e-05 0.000104166666666667 2.08333333333333e-05 2.08333333333333e-05 0.000104166666666667; % f D=0.1
0.000104166666666667 0.000104166666666667 2.08333333333333e-05 0.000125 0.9991875 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 0.000104166666666667 2.08333333333333e-05 2.08333333333333e-05 0.000104166666666667 2.08333333333333e-05 2.08333333333333e-05 0.000104166666666667; % g D=0.1
0.000104166666666667 0.000104166666666667 2.08333333333333e-05 0.000125 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 0.000104166666666667 2.08333333333333e-05 0.9991875 0.000104166666666667 2.08333333333333e-05 2.08333333333333e-05 0.000104166666666667; % m D=0.1
0.000104166666666667 0.000104166666666667 2.08333333333333e-05 0.000125 2.08333333333333e-05 2.08333333333333e-05 0.9991875 2.08333333333333e-05 0.000104166666666667 2.08333333333333e-05 2.08333333333333e-05 0.000104166666666667 2.08333333333333e-05 2.08333333333333e-05 0.000104166666666667; % p D=0.1
0.000104166666666667 0.000104166666666667 2.08333333333333e-05 0.000125 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 0.000104166666666667 2.08333333333333e-05 2.08333333333333e-05 0.000104166666666667 0.9991875 2.08333333333333e-05 0.000104166666666667; % r D=0.1
0.000833333333333333 0.1995 0.000166666666666667 0.239666666666667 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.152833333333333 0.000166666666666667 0.000166666666666667 0.232833333333333 0.000166666666666667 0.000166666666666667 0.172833333333333; % $ D=0.2
0.000208333333333333 0.000208333333333333 0.998375 0.00025 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 0.000208333333333333 4.16666666666667e-05 4.16666666666667e-05 0.000208333333333333 4.16666666666667e-05 4.16666666666667e-05 0.000208333333333333; % F D=0.2
0.000208333333333333 0.000208333333333333 4.16666666666667e-05 0.00025 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 0.000208333333333333 0.998375 4.16666666666667e-05 0.000208333333333333 4.16666666666667e-05 4.16666666666667e-05 0.000208333333333333; % G D=0.2
0.000208333333333333 0.000208333333333333 4.16666666666667e-05 0.00025 4.16666666666667e-05 0.998375 4.16666666666667e-05 4.16666666666667e-05 0.000208333333333333 4.16666666666667e-05 4.16666666666667e-05 0.000208333333333333 4.16666666666667e-05 4.16666666666667e-05 0.000208333333333333; % J D=0.2
0.232708333333333 0.141041666666667 0.000208333333333333 0.199583333333333 0.000208333333333333 0.000208333333333333 0.000208333333333333 0.000208333333333333 0.191041666666667 0.000208333333333333 0.000208333333333333 0.00104166666666667 0.000208333333333333 0.000208333333333333 0.232708333333333; % K D=0.2
0.257916666666667 0.182916666666667 0.00025 0.00816666666666667 0.00025 0.00025 0.00025 0.00025 0.224583333333333 0.00025 0.00025 0.157916666666667 0.00025 0.00025 0.16625; % M D=0.2
0.266041666666667 0.182708333333333 0.000208333333333333 0.149583333333333 0.000208333333333333 0.000208333333333333 0.000208333333333333 0.000208333333333333 0.00104166666666667 0.000208333333333333 0.000208333333333333 0.207708333333333 0.000208333333333333 0.000208333333333333 0.191041666666667; % N D=0.2
0.224375 0.241041666666667 0.000208333333333333 0.174583333333333 0.000208333333333333 0.000208333333333333 0.000208333333333333 0.000208333333333333 0.182708333333333 0.000208333333333333 0.000208333333333333 0.174375 0.000208333333333333 0.000208333333333333 0.00104166666666667; % T D=0.2
0.000208333333333333 0.000208333333333333 4.16666666666667e-05 0.00025 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 0.000208333333333333 4.16666666666667e-05 4.16666666666667e-05 0.000208333333333333 4.16666666666667e-05 0.998375 0.000208333333333333; % V D=0.2
0.266041666666667 0.00104166666666667 0.000208333333333333 0.16625 0.000208333333333333 0.000208333333333333 0.000208333333333333 0.000208333333333333 0.207708333333333 0.000208333333333333 0.000208333333333333 0.166041666666667 0.000208333333333333 0.000208333333333333 0.191041666666667; % d D=0.2
0.000208333333333333 0.000208333333333333 4.16666666666667e-05 0.00025 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 0.998375 0.000208333333333333 4.16666666666667e-05 4.16666666666667e-05 0.000208333333333333 4.16666666666667e-05 4.16666666666667e-05 0.000208333333333333; % f D=0.2
0.000208333333333333 0.000208333333333333 4.16666666666667e-05 0.00025 0.998375 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 0.000208333333333333 4.16666666666667e-05 4.16666666666667e-05 0.000208333333333333 4.16666666666667e-05 4.16666666666667e-05 0.000208333333333333; % g D=0.2
0.000208333333333333 0.000208333333333333 4.16666666666667e-05 0.00025 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 0.000208333333333333 4.16666666666667e-05 0.998375 0.000208333333333333 4.16666666666667e-05 4.16666666666667e-05 0.000208333333333333; % m D=0.2
0.000208333333333333 0.000208333333333333 4.16666666666667e-05 0.00025 4.16666666666667e-05 4.16666666666667e-05 0.998375 4.16666666666667e-05 0.000208333333333333 4.16666666666667e-05 4.16666666666667e-05 0.000208333333333333 4.16666666666667e-05 4.16666666666667e-05 0.000208333333333333; % p D=0.2
0.000208333333333333 0.000208333333333333 4.16666666666667e-05 0.00025 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 0.000208333333333333 4.16666666666667e-05 4.16666666666667e-05 0.000208333333333333 0.998375 4.16666666666667e-05 0.000208333333333333; % r D=0.2
0.00125 0.19925 0.00025 0.2395 0.00025 0.00025 0.00025 0.00025 0.152583333333333 0.00025 0.00025 0.232583333333333 0.00025 0.00025 0.172583333333333; % $ D=0.3
0.0003125 0.0003125 0.9975625 0.000375 6.25e-05 6.25e-05 6.25e-05 6.25e-05 0.0003125 6.25e-05 6.25e-05 0.0003125 6.25e-05 6.25e-05 0.0003125; % F D=0.3
0.0003125 0.0003125 6.25e-05 0.000375 6.25e-05 6.25e-05 6.25e-05 6.25e-05 0.0003125 0.9975625 6.25e-05 0.0003125 6.25e-05 6.25e-05 0.0003125; % G D=0.3
0.0003125 0.0003125 6.25e-05 0.000375 6.25e-05 0.9975625 6.25e-05 6.25e-05 0.0003125 6.25e-05 6.25e-05 0.0003125 6.25e-05 6.25e-05 0.0003125; % J D=0.3
0.232395833333333 0.140729166666667 0.0003125 0.199375 0.0003125 0.0003125 0.0003125 0.0003125 0.190729166666667 0.0003125 0.0003125 0.0015625 0.0003125 0.0003125 0.232395833333333; % K D=0.3
0.257708333333333 0.182708333333333 0.000375 0.00808333333333333 0.000375 0.000375 0.000375 0.000375 0.224375 0.000375 0.000375 0.157708333333333 0.000375 0.000375 0.166041666666667; % M D=0.3
0.265729166666667 0.182395833333333 0.0003125 0.149375 0.0003125 0.0003125 0.0003125 0.0003125 0.0015625 0.0003125 0.0003125 0.207395833333333 0.0003125 0.0003125 0.190729166666667; % N D=0.3
0.2240625 0.240729166666667 0.0003125 0.174375 0.0003125 0.0003125 0.0003125 0.0003125 0.182395833333333 0.0003125 0.0003125 0.1740625 0.0003125 0.0003125 0.0015625; % T D=0.3
0.0003125 0.0003125 6.25e-05 0.000375 6.25e-05 6.25e-05 6.25e-05 6.25e-05 0.0003125 6.25e-05 6.25e-05 0.0003125 6.25e-05 0.9975625 0.0003125; % V D=0.3
0.265729166666667 0.0015625 0.0003125 0.166041666666667 0.0003125 0.0003125 0.0003125 0.0003125 0.207395833333333 0.0003125 0.0003125 0.165729166666667 0.0003125 0.0003125 0.190729166666667; % d D=0.3
0.0003125 0.0003125 6.25e-05 0.000375 6.25e-05 6.25e-05 6.25e-05 0.9975625 0.0003125 6.25e-05 6.25e-05 0.0003125 6.25e-05 6.25e-05 0.0003125; % f D=0.3
0.0003125 0.0003125 6.25e-05 0.000375 0.9975625 6.25e-05 6.25e-05 6.25e-05 0.0003125 6.25e-05 6.25e-05 0.0003125 6.25e-05 6.25e-05 0.0003125; % g D=0.3
0.0003125 0.0003125 6.25e-05 0.000375 6.25e-05 6.25e-05 6.25e-05 6.25e-05 0.0003125 6.25e-05 0.9975625 0.0003125 6.25e-05 6.25e-05 0.0003125; % m D=0.3
0.0003125 0.0003125 6.25e-05 0.000375 6.25e-05 6.25e-05 0.9975625 6.25e-05 0.0003125 6.25e-05 6.25e-05 0.0003125 6.25e-05 6.25e-05 0.0003125; % p D=0.3
0.0003125 0.0003125 6.25e-05 0.000375 6.25e-05 6.25e-05 6.25e-05 6.25e-05 0.0003125 6.25e-05 6.25e-05 0.0003125 0.9975625 6.25e-05 0.0003125; % r D=0.3
0.00166666666666667 0.199 0.000333333333333333 0.239333333333333 0.000333333333333333 0.000333333333333333 0.000333333333333333 0.000333333333333333 0.152333333333333 0.000333333333333333 0.000333333333333333 0.232333333333333 0.000333333333333333 0.000333333333333333 0.172333333333333; % $ D=0.4
0.000416666666666667 0.000416666666666667 0.99675 0.0005 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 0.000416666666666667 8.33333333333333e-05 8.33333333333333e-05 0.000416666666666667 8.33333333333333e-05 8.33333333333333e-05 0.000416666666666667; % F D=0.4
0.000416666666666667 0.000416666666666667 8.33333333333333e-05 0.0005 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 0.000416666666666667 0.99675 8.33333333333333e-05 0.000416666666666667 8.33333333333333e-05 8.33333333333333e-05 0.000416666666666667; % G D=0.4
0.000416666666666667 0.000416666666666667 8.33333333333333e-05 0.0005 8.33333333333333e-05 0.99675 8.33333333333333e-05 8.33333333333333e-05 0.000416666666666667 8.33333333333333e-05 8.33333333333333e-05 0.000416666666666667 8.33333333333333e-05 8.33333333333333e-05 0.000416666666666667; % J D=0.4
0.232083333333333 0.140416666666667 0.000416666666666667 0.199166666666667 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.190416666666667 0.000416666666666667 0.000416666666666667 0.00208333333333333 0.000416666666666667 0.000416666666666667 0.232083333333333; % K D=0.4
0.2575 0.1825 0.0005 0.008 0.0005 0.0005 0.0005 0.0005 0.224166666666667 0.0005 0.0005 0.1575 0.0005 0.0005 0.165833333333333; % M D=0.4
0.265416666666667 0.182083333333333 0.000416666666666667 0.149166666666667 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.00208333333333333 0.000416666666666667 0.000416666666666667 0.207083333333333 0.000416666666666667 0.000416666666666667 0.190416666666667; % N D=0.4
0.22375 0.240416666666667 0.000416666666666667 0.174166666666667 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.182083333333333 0.000416666666666667 0.000416666666666667 0.17375 0.000416666666666667 0.000416666666666667 0.00208333333333333; % T D=0.4
0.000416666666666667 0.000416666666666667 8.33333333333333e-05 0.0005 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 0.000416666666666667 8.33333333333333e-05 8.33333333333333e-05 0.000416666666666667 8.33333333333333e-05 0.99675 0.000416666666666667; % V D=0.4
0.265416666666667 0.00208333333333333 0.000416666666666667 0.165833333333333 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.207083333333333 0.000416666666666667 0.000416666666666667 0.165416666666667 0.000416666666666667 0.000416666666666667 0.190416666666667; % d D=0.4
0.000416666666666667 0.000416666666666667 8.33333333333333e-05 0.0005 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 0.99675 0.000416666666666667 8.33333333333333e-05 8.33333333333333e-05 0.000416666666666667 8.33333333333333e-05 8.33333333333333e-05 0.000416666666666667; % f D=0.4
0.000416666666666667 0.000416666666666667 8.33333333333333e-05 0.0005 0.99675 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 0.000416666666666667 8.33333333333333e-05 8.33333333333333e-05 0.000416666666666667 8.33333333333333e-05 8.33333333333333e-05 0.000416666666666667; % g D=0.4
0.000416666666666667 0.000416666666666667 8.33333333333333e-05 0.0005 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 0.000416666666666667 8.33333333333333e-05 0.99675 0.000416666666666667 8.33333333333333e-05 8.33333333333333e-05 0.000416666666666667; % m D=0.4
0.000416666666666667 0.000416666666666667 8.33333333333333e-05 0.0005 8.33333333333333e-05 8.33333333333333e-05 0.99675 8.33333333333333e-05 0.000416666666666667 8.33333333333333e-05 8.33333333333333e-05 0.000416666666666667 8.33333333333333e-05 8.33333333333333e-05 0.000416666666666667; % p D=0.4
0.000416666666666667 0.000416666666666667 8.33333333333333e-05 0.0005 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 0.000416666666666667 8.33333333333333e-05 8.33333333333333e-05 0.000416666666666667 0.99675 8.33333333333333e-05 0.000416666666666667; % r D=0.4
0.00208333333333333 0.19875 0.000416666666666667 0.239166666666667 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.152083333333333 0.000416666666666667 0.000416666666666667 0.232083333333333 0.000416666666666667 0.000416666666666667 0.172083333333333; % $ D=0.5
0.000520833333333333 0.000520833333333333 0.9959375 0.000625 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000520833333333333 0.000104166666666667 0.000104166666666667 0.000520833333333333 0.000104166666666667 0.000104166666666667 0.000520833333333333; % F D=0.5
0.000520833333333333 0.000520833333333333 0.000104166666666667 0.000625 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000520833333333333 0.9959375 0.000104166666666667 0.000520833333333333 0.000104166666666667 0.000104166666666667 0.000520833333333333; % G D=0.5
0.000520833333333333 0.000520833333333333 0.000104166666666667 0.000625 0.000104166666666667 0.9959375 0.000104166666666667 0.000104166666666667 0.000520833333333333 0.000104166666666667 0.000104166666666667 0.000520833333333333 0.000104166666666667 0.000104166666666667 0.000520833333333333; % J D=0.5
0.231770833333333 0.140104166666667 0.000520833333333333 0.198958333333333 0.000520833333333333 0.000520833333333333 0.000520833333333333 0.000520833333333333 0.190104166666667 0.000520833333333333 0.000520833333333333 0.00260416666666667 0.000520833333333333 0.000520833333333333 0.231770833333333; % K D=0.5
0.257291666666667 0.182291666666667 0.000625 0.00791666666666667 0.000625 0.000625 0.000625 0.000625 0.223958333333333 0.000625 0.000625 0.157291666666667 0.000625 0.000625 0.165625; % M D=0.5
0.265104166666667 0.181770833333333 0.000520833333333333 0.148958333333333 0.000520833333333333 0.000520833333333333 0.000520833333333333 0.000520833333333333 0.00260416666666667 0.000520833333333333 0.000520833333333333 0.206770833333333 0.000520833333333333 0.000520833333333333 0.190104166666667; % N D=0.5
0.2234375 0.240104166666667 0.000520833333333333 0.173958333333333 0.000520833333333333 0.000520833333333333 0.000520833333333333 0.000520833333333333 0.181770833333333 0.000520833333333333 0.000520833333333333 0.1734375 0.000520833333333333 0.000520833333333333 0.00260416666666667; % T D=0.5
0.000520833333333333 0.000520833333333333 0.000104166666666667 0.000625 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000520833333333333 0.000104166666666667 0.000104166666666667 0.000520833333333333 0.000104166666666667 0.9959375 0.000520833333333333; % V D=0.5
0.265104166666667 0.00260416666666667 0.000520833333333333 0.165625 0.000520833333333333 0.000520833333333333 0.000520833333333333 0.000520833333333333 0.206770833333333 0.000520833333333333 0.000520833333333333 0.165104166666667 0.000520833333333333 0.000520833333333333 0.190104166666667; % d D=0.5
0.000520833333333333 0.000520833333333333 0.000104166666666667 0.000625 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.9959375 0.000520833333333333 0.000104166666666667 0.000104166666666667 0.000520833333333333 0.000104166666666667 0.000104166666666667 0.000520833333333333; % f D=0.5
0.000520833333333333 0.000520833333333333 0.000104166666666667 0.000625 0.9959375 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000520833333333333 0.000104166666666667 0.000104166666666667 0.000520833333333333 0.000104166666666667 0.000104166666666667 0.000520833333333333; % g D=0.5
0.000520833333333333 0.000520833333333333 0.000104166666666667 0.000625 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000520833333333333 0.000104166666666667 0.9959375 0.000520833333333333 0.000104166666666667 0.000104166666666667 0.000520833333333333; % m D=0.5
0.000520833333333333 0.000520833333333333 0.000104166666666667 0.000625 0.000104166666666667 0.000104166666666667 0.9959375 0.000104166666666667 0.000520833333333333 0.000104166666666667 0.000104166666666667 0.000520833333333333 0.000104166666666667 0.000104166666666667 0.000520833333333333; % p D=0.5
0.000520833333333333 0.000520833333333333 0.000104166666666667 0.000625 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000520833333333333 0.000104166666666667 0.000104166666666667 0.000520833333333333 0.9959375 0.000104166666666667 0.000520833333333333; % r D=0.5
0.0025 0.1985 0.0005 0.239 0.0005 0.0005 0.0005 0.0005 0.151833333333333 0.0005 0.0005 0.231833333333333 0.0005 0.0005 0.171833333333333; % $ D=0.6
0.000625 0.000625 0.995125 0.00075 0.000125 0.000125 0.000125 0.000125 0.000625 0.000125 0.000125 0.000625 0.000125 0.000125 0.000625; % F D=0.6
0.000625 0.000625 0.000125 0.00075 0.000125 0.000125 0.000125 0.000125 0.000625 0.995125 0.000125 0.000625 0.000125 0.000125 0.000625; % G D=0.6
0.000625 0.000625 0.000125 0.00075 0.000125 0.995125 0.000125 0.000125 0.000625 0.000125 0.000125 0.000625 0.000125 0.000125 0.000625; % J D=0.6
0.231458333333333 0.139791666666667 0.000625 0.19875 0.000625 0.000625 0.000625 0.000625 0.189791666666667 0.000625 0.000625 0.003125 0.000625 0.000625 0.231458333333333; % K D=0.6
0.257083333333333 0.182083333333333 0.00075 0.00783333333333333 0.00075 0.00075 0.00075 0.00075 0.22375 0.00075 0.00075 0.157083333333333 0.00075 0.00075 0.165416666666667; % M D=0.6
0.264791666666667 0.181458333333333 0.000625 0.14875 0.000625 0.000625 0.000625 0.000625 0.003125 0.000625 0.000625 0.206458333333333 0.000625 0.000625 0.189791666666667; % N D=0.6
0.223125 0.239791666666667 0.000625 0.17375 0.000625 0.000625 0.000625 0.000625 0.181458333333333 0.000625 0.000625 0.173125 0.000625 0.000625 0.003125; % T D=0.6
0.000625 0.000625 0.000125 0.00075 0.000125 0.000125 0.000125 0.000125 0.000625 0.000125 0.000125 0.000625 0.000125 0.995125 0.000625; % V D=0.6
0.264791666666667 0.003125 0.000625 0.165416666666667 0.000625 0.000625 0.000625 0.000625 0.206458333333333 0.000625 0.000625 0.164791666666667 0.000625 0.000625 0.189791666666667; % d D=0.6
0.000625 0.000625 0.000125 0.00075 0.000125 0.000125 0.000125 0.995125 0.000625 0.000125 0.000125 0.000625 0.000125 0.000125 0.000625; % f D=0.6
0.000625 0.000625 0.000125 0.00075 0.995125 0.000125 0.000125 0.000125 0.000625 0.000125 0.000125 0.000625 0.000125 0.000125 0.000625; % g D=0.6
0.000625 0.000625 0.000125 0.00075 0.000125 0.000125 0.000125 0.000125 0.000625 0.000125 0.995125 0.000625 0.000125 0.000125 0.000625; % m D=0.6
0.000625 0.000625 0.000125 0.00075 0.000125 0.000125 0.995125 0.000125 0.000625 0.000125 0.000125 0.000625 0.000125 0.000125 0.000625; % p D=0.6
0.000625 0.000625 0.000125 0.00075 0.000125 0.000125 0.000125 0.000125 0.000625 0.000125 0.000125 0.000625 0.995125 0.000125 0.000625; % r D=0.6
0.00291666666666667 0.19825 0.000583333333333333 0.238833333333333 0.000583333333333333 0.000583333333333333 0.000583333333333333 0.000583333333333333 0.151583333333333 0.000583333333333333 0.000583333333333333 0.231583333333333 0.000583333333333333 0.000583333333333333 0.171583333333333; % $ D=0.7
0.000729166666666667 0.000729166666666667 0.9943125 0.000875 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.000729166666666667 0.000145833333333333 0.000145833333333333 0.000729166666666667 0.000145833333333333 0.000145833333333333 0.000729166666666667; % F D=0.7
0.000729166666666667 0.000729166666666667 0.000145833333333333 0.000875 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.000729166666666667 0.9943125 0.000145833333333333 0.000729166666666667 0.000145833333333333 0.000145833333333333 0.000729166666666667; % G D=0.7
0.000729166666666667 0.000729166666666667 0.000145833333333333 0.000875 0.000145833333333333 0.9943125 0.000145833333333333 0.000145833333333333 0.000729166666666667 0.000145833333333333 0.000145833333333333 0.000729166666666667 0.000145833333333333 0.000145833333333333 0.000729166666666667; % J D=0.7
0.231145833333333 0.139479166666667 0.000729166666666667 0.198541666666667 0.000729166666666667 0.000729166666666667 0.000729166666666667 0.000729166666666667 0.189479166666667 0.000729166666666667 0.000729166666666667 0.00364583333333333 0.000729166666666667 0.000729166666666667 0.231145833333333; % K D=0.7
0.256875 0.181875 0.000875 0.00775 0.000875 0.000875 0.000875 0.000875 0.223541666666667 0.000875 0.000875 0.156875 0.000875 0.000875 0.165208333333333; % M D=0.7
0.264479166666667 0.181145833333333 0.000729166666666667 0.148541666666667 0.000729166666666667 0.000729166666666667 0.000729166666666667 0.000729166666666667 0.00364583333333333 0.000729166666666667 0.000729166666666667 0.206145833333333 0.000729166666666667 0.000729166666666667 0.189479166666667; % N D=0.7
0.2228125 0.239479166666667 0.000729166666666667 0.173541666666667 0.000729166666666667 0.000729166666666667 0.000729166666666667 0.000729166666666667 0.181145833333333 0.000729166666666667 0.000729166666666667 0.1728125 0.000729166666666667 0.000729166666666667 0.00364583333333333; % T D=0.7
0.000729166666666667 0.000729166666666667 0.000145833333333333 0.000875 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.000729166666666667 0.000145833333333333 0.000145833333333333 0.000729166666666667 0.000145833333333333 0.9943125 0.000729166666666667; % V D=0.7
0.264479166666667 0.00364583333333333 0.000729166666666667 0.165208333333333 0.000729166666666667 0.000729166666666667 0.000729166666666667 0.000729166666666667 0.206145833333333 0.000729166666666667 0.000729166666666667 0.164479166666667 0.000729166666666667 0.000729166666666667 0.189479166666667; % d D=0.7
0.000729166666666667 0.000729166666666667 0.000145833333333333 0.000875 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.9943125 0.000729166666666667 0.000145833333333333 0.000145833333333333 0.000729166666666667 0.000145833333333333 0.000145833333333333 0.000729166666666667; % f D=0.7
0.000729166666666667 0.000729166666666667 0.000145833333333333 0.000875 0.9943125 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.000729166666666667 0.000145833333333333 0.000145833333333333 0.000729166666666667 0.000145833333333333 0.000145833333333333 0.000729166666666667; % g D=0.7
0.000729166666666667 0.000729166666666667 0.000145833333333333 0.000875 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.000729166666666667 0.000145833333333333 0.9943125 0.000729166666666667 0.000145833333333333 0.000145833333333333 0.000729166666666667; % m D=0.7
0.000729166666666667 0.000729166666666667 0.000145833333333333 0.000875 0.000145833333333333 0.000145833333333333 0.9943125 0.000145833333333333 0.000729166666666667 0.000145833333333333 0.000145833333333333 0.000729166666666667 0.000145833333333333 0.000145833333333333 0.000729166666666667; % p D=0.7
0.000729166666666667 0.000729166666666667 0.000145833333333333 0.000875 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.000729166666666667 0.000145833333333333 0.000145833333333333 0.000729166666666667 0.9943125 0.000145833333333333 0.000729166666666667; % r D=0.7
0.00333333333333333 0.198 0.000666666666666667 0.238666666666667 0.000666666666666667 0.000666666666666667 0.000666666666666667 0.000666666666666667 0.151333333333333 0.000666666666666667 0.000666666666666667 0.231333333333333 0.000666666666666667 0.000666666666666667 0.171333333333333; % $ D=0.8
0.000833333333333333 0.000833333333333333 0.9935 0.001 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000833333333333333 0.000166666666666667 0.000166666666666667 0.000833333333333333 0.000166666666666667 0.000166666666666667 0.000833333333333333; % F D=0.8
0.000833333333333333 0.000833333333333333 0.000166666666666667 0.001 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000833333333333333 0.9935 0.000166666666666667 0.000833333333333333 0.000166666666666667 0.000166666666666667 0.000833333333333333; % G D=0.8
0.000833333333333333 0.000833333333333333 0.000166666666666667 0.001 0.000166666666666667 0.9935 0.000166666666666667 0.000166666666666667 0.000833333333333333 0.000166666666666667 0.000166666666666667 0.000833333333333333 0.000166666666666667 0.000166666666666667 0.000833333333333333; % J D=0.8
0.230833333333333 0.139166666666667 0.000833333333333333 0.198333333333333 0.000833333333333333 0.000833333333333333 0.000833333333333333 0.000833333333333333 0.189166666666667 0.000833333333333333 0.000833333333333333 0.00416666666666667 0.000833333333333333 0.000833333333333333 0.230833333333333; % K D=0.8
0.256666666666667 0.181666666666667 0.001 0.00766666666666667 0.001 0.001 0.001 0.001 0.223333333333333 0.001 0.001 0.156666666666667 0.001 0.001 0.165; % M D=0.8
0.264166666666667 0.180833333333333 0.000833333333333333 0.148333333333333 0.000833333333333333 0.000833333333333333 0.000833333333333333 0.000833333333333333 0.00416666666666667 0.000833333333333333 0.000833333333333333 0.205833333333333 0.000833333333333333 0.000833333333333333 0.189166666666667; % N D=0.8
0.2225 0.239166666666667 0.000833333333333333 0.173333333333333 0.000833333333333333 0.000833333333333333 0.000833333333333333 0.000833333333333333 0.180833333333333 0.000833333333333333 0.000833333333333333 0.1725 0.000833333333333333 0.000833333333333333 0.00416666666666667; % T D=0.8
0.000833333333333333 0.000833333333333333 0.000166666666666667 0.001 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000833333333333333 0.000166666666666667 0.000166666666666667 0.000833333333333333 0.000166666666666667 0.9935 0.000833333333333333; % V D=0.8
0.264166666666667 0.00416666666666667 0.000833333333333333 0.165 0.000833333333333333 0.000833333333333333 0.000833333333333333 0.000833333333333333 0.205833333333333 0.000833333333333333 0.000833333333333333 0.164166666666667 0.000833333333333333 0.000833333333333333 0.189166666666667; % d D=0.8
0.000833333333333333 0.000833333333333333 0.000166666666666667 0.001 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.9935 0.000833333333333333 0.000166666666666667 0.000166666666666667 0.000833333333333333 0.000166666666666667 0.000166666666666667 0.000833333333333333; % f D=0.8
0.000833333333333333 0.000833333333333333 0.000166666666666667 0.001 0.9935 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000833333333333333 0.000166666666666667 0.000166666666666667 0.000833333333333333 0.000166666666666667 0.000166666666666667 0.000833333333333333; % g D=0.8
0.000833333333333333 0.000833333333333333 0.000166666666666667 0.001 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000833333333333333 0.000166666666666667 0.9935 0.000833333333333333 0.000166666666666667 0.000166666666666667 0.000833333333333333; % m D=0.8
0.000833333333333333 0.000833333333333333 0.000166666666666667 0.001 0.000166666666666667 0.000166666666666667 0.9935 0.000166666666666667 0.000833333333333333 0.000166666666666667 0.000166666666666667 0.000833333333333333 0.000166666666666667 0.000166666666666667 0.000833333333333333; % p D=0.8
0.000833333333333333 0.000833333333333333 0.000166666666666667 0.001 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000833333333333333 0.000166666666666667 0.000166666666666667 0.000833333333333333 0.9935 0.000166666666666667 0.000833333333333333; % r D=0.8
0.00375 0.19775 0.00075 0.2385 0.00075 0.00075 0.00075 0.00075 0.151083333333333 0.00075 0.00075 0.231083333333333 0.00075 0.00075 0.171083333333333; % $ D=0.9
0.0009375 0.0009375 0.9926875 0.001125 0.0001875 0.0001875 0.0001875 0.0001875 0.0009375 0.0001875 0.0001875 0.0009375 0.0001875 0.0001875 0.0009375; % F D=0.9
0.0009375 0.0009375 0.0001875 0.001125 0.0001875 0.0001875 0.0001875 0.0001875 0.0009375 0.9926875 0.0001875 0.0009375 0.0001875 0.0001875 0.0009375; % G D=0.9
0.0009375 0.0009375 0.0001875 0.001125 0.0001875 0.9926875 0.0001875 0.0001875 0.0009375 0.0001875 0.0001875 0.0009375 0.0001875 0.0001875 0.0009375; % J D=0.9
0.230520833333333 0.138854166666667 0.0009375 0.198125 0.0009375 0.0009375 0.0009375 0.0009375 0.188854166666667 0.0009375 0.0009375 0.0046875 0.0009375 0.0009375 0.230520833333333; % K D=0.9
0.256458333333333 0.181458333333333 0.001125 0.00758333333333333 0.001125 0.001125 0.001125 0.001125 0.223125 0.001125 0.001125 0.156458333333333 0.001125 0.001125 0.164791666666667; % M D=0.9
0.263854166666667 0.180520833333333 0.0009375 0.148125 0.0009375 0.0009375 0.0009375 0.0009375 0.0046875 0.0009375 0.0009375 0.205520833333333 0.0009375 0.0009375 0.188854166666667; % N D=0.9
0.2221875 0.238854166666667 0.0009375 0.173125 0.0009375 0.0009375 0.0009375 0.0009375 0.180520833333333 0.0009375 0.0009375 0.1721875 0.0009375 0.0009375 0.0046875; % T D=0.9
0.0009375 0.0009375 0.0001875 0.001125 0.0001875 0.0001875 0.0001875 0.0001875 0.0009375 0.0001875 0.0001875 0.0009375 0.0001875 0.9926875 0.0009375; % V D=0.9
0.263854166666667 0.0046875 0.0009375 0.164791666666667 0.0009375 0.0009375 0.0009375 0.0009375 0.205520833333333 0.0009375 0.0009375 0.163854166666667 0.0009375 0.0009375 0.188854166666667; % d D=0.9
0.0009375 0.0009375 0.0001875 0.001125 0.0001875 0.0001875 0.0001875 0.9926875 0.0009375 0.0001875 0.0001875 0.0009375 0.0001875 0.0001875 0.0009375; % f D=0.9
0.0009375 0.0009375 0.0001875 0.001125 0.9926875 0.0001875 0.0001875 0.0001875 0.0009375 0.0001875 0.0001875 0.0009375 0.0001875 0.0001875 0.0009375; % g D=0.9
0.0009375 0.0009375 0.0001875 0.001125 0.0001875 0.0001875 0.0001875 0.0001875 0.0009375 0.0001875 0.9926875 0.0009375 0.0001875 0.0001875 0.0009375; % m D=0.9
0.0009375 0.0009375 0.0001875 0.001125 0.0001875 0.0001875 0.9926875 0.0001875 0.0009375 0.0001875 0.0001875 0.0009375 0.0001875 0.0001875 0.0009375; % p D=0.9
0.0009375 0.0009375 0.0001875 0.001125 0.0001875 0.0001875 0.0001875 0.0001875 0.0009375 0.0001875 0.0001875 0.0009375 0.9926875 0.0001875 0.0009375; % r D=0.9
0.00395833333333333 0.197625 0.000791666666666667 0.238416666666667 0.000791666666666667 0.000791666666666667 0.000791666666666667 0.000791666666666667 0.150958333333333 0.000791666666666667 0.000791666666666667 0.230958333333333 0.000791666666666667 0.000791666666666667 0.170958333333333; % $ D=0.95
0.000989583333333333 0.000989583333333333 0.99228125 0.0011875 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.000989583333333333 0.000197916666666667 0.000197916666666667 0.000989583333333333 0.000197916666666667 0.000197916666666667 0.000989583333333333; % F D=0.95
0.000989583333333333 0.000989583333333333 0.000197916666666667 0.0011875 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.000989583333333333 0.99228125 0.000197916666666667 0.000989583333333333 0.000197916666666667 0.000197916666666667 0.000989583333333333; % G D=0.95
0.000989583333333333 0.000989583333333333 0.000197916666666667 0.0011875 0.000197916666666667 0.99228125 0.000197916666666667 0.000197916666666667 0.000989583333333333 0.000197916666666667 0.000197916666666667 0.000989583333333333 0.000197916666666667 0.000197916666666667 0.000989583333333333; % J D=0.95
0.230364583333333 0.138697916666667 0.000989583333333333 0.198020833333333 0.000989583333333333 0.000989583333333333 0.000989583333333333 0.000989583333333333 0.188697916666667 0.000989583333333333 0.000989583333333333 0.00494791666666667 0.000989583333333333 0.000989583333333333 0.230364583333333; % K D=0.95
0.256354166666667 0.181354166666667 0.0011875 0.00754166666666667 0.0011875 0.0011875 0.0011875 0.0011875 0.223020833333333 0.0011875 0.0011875 0.156354166666667 0.0011875 0.0011875 0.1646875; % M D=0.95
0.263697916666667 0.180364583333333 0.000989583333333333 0.148020833333333 0.000989583333333333 0.000989583333333333 0.000989583333333333 0.000989583333333333 0.00494791666666667 0.000989583333333333 0.000989583333333333 0.205364583333333 0.000989583333333333 0.000989583333333333 0.188697916666667; % N D=0.95
0.22203125 0.238697916666667 0.000989583333333333 0.173020833333333 0.000989583333333333 0.000989583333333333 0.000989583333333333 0.000989583333333333 0.180364583333333 0.000989583333333333 0.000989583333333333 0.17203125 0.000989583333333333 0.000989583333333333 0.00494791666666667; % T D=0.95
0.000989583333333333 0.000989583333333333 0.000197916666666667 0.0011875 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.000989583333333333 0.000197916666666667 0.000197916666666667 0.000989583333333333 0.000197916666666667 0.99228125 0.000989583333333333; % V D=0.95
0.263697916666667 0.00494791666666667 0.000989583333333333 0.1646875 0.000989583333333333 0.000989583333333333 0.000989583333333333 0.000989583333333333 0.205364583333333 0.000989583333333333 0.000989583333333333 0.163697916666667 0.000989583333333333 0.000989583333333333 0.188697916666667; % d D=0.95
0.000989583333333333 0.000989583333333333 0.000197916666666667 0.0011875 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.99228125 0.000989583333333333 0.000197916666666667 0.000197916666666667 0.000989583333333333 0.000197916666666667 0.000197916666666667 0.000989583333333333; % f D=0.95
0.000989583333333333 0.000989583333333333 0.000197916666666667 0.0011875 0.99228125 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.000989583333333333 0.000197916666666667 0.000197916666666667 0.000989583333333333 0.000197916666666667 0.000197916666666667 0.000989583333333333; % g D=0.95
0.000989583333333333 0.000989583333333333 0.000197916666666667 0.0011875 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.000989583333333333 0.000197916666666667 0.99228125 0.000989583333333333 0.000197916666666667 0.000197916666666667 0.000989583333333333; % m D=0.95
0.000989583333333333 0.000989583333333333 0.000197916666666667 0.0011875 0.000197916666666667 0.000197916666666667 0.99228125 0.000197916666666667 0.000989583333333333 0.000197916666666667 0.000197916666666667 0.000989583333333333 0.000197916666666667 0.000197916666666667 0.000989583333333333; % p D=0.95
0.000989583333333333 0.000989583333333333 0.000197916666666667 0.0011875 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.000989583333333333 0.000197916666666667 0.000197916666666667 0.000989583333333333 0.99228125 0.000197916666666667 0.000989583333333333]; % r D=0.95