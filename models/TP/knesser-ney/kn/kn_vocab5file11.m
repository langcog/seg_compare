syllables = '$DJKLRVZbfgknpt';
discounts = [0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 0.95];
kn_probs = [0.000416666666666667 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 0.13975 0.21975 0.1665 0.19975 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 0.273083333333333; % $ D=0.1
0.000104166666666667 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 0.000104166666666667 0.000104166666666667 0.000125 0.000104166666666667 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 0.9991875 2.08333333333333e-05 0.000104166666666667; % D D=0.1
0.283020833333333 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.216354166666667 0.000520833333333333 0.241458333333333 0.1496875 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.108020833333333; % J D=0.1
0.299791666666667 0.000125 0.000125 0.000125 0.183125 0.133125 0.00825 0.199791666666667 0.000125 0.000125 0.000125 0.000125 0.000125 0.000125 0.174791666666667; % K D=0.1
0.000104166666666667 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 0.000104166666666667 0.000104166666666667 0.000125 0.000104166666666667 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 0.9991875 0.000104166666666667; % L D=0.1
0.000104166666666667 2.08333333333333e-05 0.9991875 2.08333333333333e-05 0.000104166666666667 0.000104166666666667 0.000125 0.000104166666666667 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 0.000104166666666667; % R D=0.1
0.000104166666666667 2.08333333333333e-05 2.08333333333333e-05 0.9991875 0.000104166666666667 0.000104166666666667 0.000125 0.000104166666666667 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 0.000104166666666667; % V D=0.1
0.000104166666666667 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 0.000104166666666667 0.000104166666666667 0.000125 0.000104166666666667 0.9991875 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 0.000104166666666667; % Z D=0.1
0.000104166666666667 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 0.000104166666666667 0.000104166666666667 0.000125 0.000104166666666667 2.08333333333333e-05 2.08333333333333e-05 0.9991875 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 0.000104166666666667; % b D=0.1
0.1996875 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.1996875 0.2246875 0.174791666666667 0.000520833333333333 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.1996875; % f D=0.1
0.000104166666666667 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 0.000104166666666667 0.000104166666666667 0.000125 0.000104166666666667 2.08333333333333e-05 0.9991875 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 0.000104166666666667; % g D=0.1
0.291354166666667 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000520833333333333 0.158020833333333 0.174791666666667 0.1996875 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.1746875; % k D=0.1
0.1746875 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.2246875 0.208020833333333 0.191458333333333 0.1996875 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000520833333333333; % n D=0.1
0.000104166666666667 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 0.000104166666666667 0.000104166666666667 0.000125 0.000104166666666667 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 0.9991875 2.08333333333333e-05 2.08333333333333e-05 0.000104166666666667; % p D=0.1
0.000104166666666667 0.9991875 2.08333333333333e-05 2.08333333333333e-05 0.000104166666666667 0.000104166666666667 0.000125 0.000104166666666667 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 2.08333333333333e-05 0.000104166666666667; % t D=0.1
0.000833333333333333 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.1395 0.2195 0.166333333333333 0.1995 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.272833333333333; % $ D=0.2
0.000208333333333333 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 0.000208333333333333 0.000208333333333333 0.00025 0.000208333333333333 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 0.998375 4.16666666666667e-05 0.000208333333333333; % D D=0.2
0.282708333333333 0.000208333333333333 0.000208333333333333 0.000208333333333333 0.216041666666667 0.00104166666666667 0.24125 0.149375 0.000208333333333333 0.000208333333333333 0.000208333333333333 0.000208333333333333 0.000208333333333333 0.000208333333333333 0.107708333333333; % J D=0.2
0.299583333333333 0.00025 0.00025 0.00025 0.182916666666667 0.132916666666667 0.00816666666666667 0.199583333333333 0.00025 0.00025 0.00025 0.00025 0.00025 0.00025 0.174583333333333; % K D=0.2
0.000208333333333333 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 0.000208333333333333 0.000208333333333333 0.00025 0.000208333333333333 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 0.998375 0.000208333333333333; % L D=0.2
0.000208333333333333 4.16666666666667e-05 0.998375 4.16666666666667e-05 0.000208333333333333 0.000208333333333333 0.00025 0.000208333333333333 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 0.000208333333333333; % R D=0.2
0.000208333333333333 4.16666666666667e-05 4.16666666666667e-05 0.998375 0.000208333333333333 0.000208333333333333 0.00025 0.000208333333333333 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 0.000208333333333333; % V D=0.2
0.000208333333333333 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 0.000208333333333333 0.000208333333333333 0.00025 0.000208333333333333 0.998375 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 0.000208333333333333; % Z D=0.2
0.000208333333333333 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 0.000208333333333333 0.000208333333333333 0.00025 0.000208333333333333 4.16666666666667e-05 4.16666666666667e-05 0.998375 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 0.000208333333333333; % b D=0.2
0.199375 0.000208333333333333 0.000208333333333333 0.000208333333333333 0.199375 0.224375 0.174583333333333 0.00104166666666667 0.000208333333333333 0.000208333333333333 0.000208333333333333 0.000208333333333333 0.000208333333333333 0.000208333333333333 0.199375; % f D=0.2
0.000208333333333333 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 0.000208333333333333 0.000208333333333333 0.00025 0.000208333333333333 4.16666666666667e-05 0.998375 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 0.000208333333333333; % g D=0.2
0.291041666666667 0.000208333333333333 0.000208333333333333 0.000208333333333333 0.00104166666666667 0.157708333333333 0.174583333333333 0.199375 0.000208333333333333 0.000208333333333333 0.000208333333333333 0.000208333333333333 0.000208333333333333 0.000208333333333333 0.174375; % k D=0.2
0.174375 0.000208333333333333 0.000208333333333333 0.000208333333333333 0.224375 0.207708333333333 0.19125 0.199375 0.000208333333333333 0.000208333333333333 0.000208333333333333 0.000208333333333333 0.000208333333333333 0.000208333333333333 0.00104166666666667; % n D=0.2
0.000208333333333333 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 0.000208333333333333 0.000208333333333333 0.00025 0.000208333333333333 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 0.998375 4.16666666666667e-05 4.16666666666667e-05 0.000208333333333333; % p D=0.2
0.000208333333333333 0.998375 4.16666666666667e-05 4.16666666666667e-05 0.000208333333333333 0.000208333333333333 0.00025 0.000208333333333333 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 4.16666666666667e-05 0.000208333333333333; % t D=0.2
0.00125 0.00025 0.00025 0.00025 0.13925 0.21925 0.166166666666667 0.19925 0.00025 0.00025 0.00025 0.00025 0.00025 0.00025 0.272583333333333; % $ D=0.3
0.0003125 6.25e-05 6.25e-05 6.25e-05 0.0003125 0.0003125 0.000375 0.0003125 6.25e-05 6.25e-05 6.25e-05 6.25e-05 0.9975625 6.25e-05 0.0003125; % D D=0.3
0.282395833333333 0.0003125 0.0003125 0.0003125 0.215729166666667 0.0015625 0.241041666666667 0.1490625 0.0003125 0.0003125 0.0003125 0.0003125 0.0003125 0.0003125 0.107395833333333; % J D=0.3
0.299375 0.000375 0.000375 0.000375 0.182708333333333 0.132708333333333 0.00808333333333333 0.199375 0.000375 0.000375 0.000375 0.000375 0.000375 0.000375 0.174375; % K D=0.3
0.0003125 6.25e-05 6.25e-05 6.25e-05 0.0003125 0.0003125 0.000375 0.0003125 6.25e-05 6.25e-05 6.25e-05 6.25e-05 6.25e-05 0.9975625 0.0003125; % L D=0.3
0.0003125 6.25e-05 0.9975625 6.25e-05 0.0003125 0.0003125 0.000375 0.0003125 6.25e-05 6.25e-05 6.25e-05 6.25e-05 6.25e-05 6.25e-05 0.0003125; % R D=0.3
0.0003125 6.25e-05 6.25e-05 0.9975625 0.0003125 0.0003125 0.000375 0.0003125 6.25e-05 6.25e-05 6.25e-05 6.25e-05 6.25e-05 6.25e-05 0.0003125; % V D=0.3
0.0003125 6.25e-05 6.25e-05 6.25e-05 0.0003125 0.0003125 0.000375 0.0003125 0.9975625 6.25e-05 6.25e-05 6.25e-05 6.25e-05 6.25e-05 0.0003125; % Z D=0.3
0.0003125 6.25e-05 6.25e-05 6.25e-05 0.0003125 0.0003125 0.000375 0.0003125 6.25e-05 6.25e-05 0.9975625 6.25e-05 6.25e-05 6.25e-05 0.0003125; % b D=0.3
0.1990625 0.0003125 0.0003125 0.0003125 0.1990625 0.2240625 0.174375 0.0015625 0.0003125 0.0003125 0.0003125 0.0003125 0.0003125 0.0003125 0.1990625; % f D=0.3
0.0003125 6.25e-05 6.25e-05 6.25e-05 0.0003125 0.0003125 0.000375 0.0003125 6.25e-05 0.9975625 6.25e-05 6.25e-05 6.25e-05 6.25e-05 0.0003125; % g D=0.3
0.290729166666667 0.0003125 0.0003125 0.0003125 0.0015625 0.157395833333333 0.174375 0.1990625 0.0003125 0.0003125 0.0003125 0.0003125 0.0003125 0.0003125 0.1740625; % k D=0.3
0.1740625 0.0003125 0.0003125 0.0003125 0.2240625 0.207395833333333 0.191041666666667 0.1990625 0.0003125 0.0003125 0.0003125 0.0003125 0.0003125 0.0003125 0.0015625; % n D=0.3
0.0003125 6.25e-05 6.25e-05 6.25e-05 0.0003125 0.0003125 0.000375 0.0003125 6.25e-05 6.25e-05 6.25e-05 0.9975625 6.25e-05 6.25e-05 0.0003125; % p D=0.3
0.0003125 0.9975625 6.25e-05 6.25e-05 0.0003125 0.0003125 0.000375 0.0003125 6.25e-05 6.25e-05 6.25e-05 6.25e-05 6.25e-05 6.25e-05 0.0003125; % t D=0.3
0.00166666666666667 0.000333333333333333 0.000333333333333333 0.000333333333333333 0.139 0.219 0.166 0.199 0.000333333333333333 0.000333333333333333 0.000333333333333333 0.000333333333333333 0.000333333333333333 0.000333333333333333 0.272333333333333; % $ D=0.4
0.000416666666666667 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 0.000416666666666667 0.000416666666666667 0.0005 0.000416666666666667 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 0.99675 8.33333333333333e-05 0.000416666666666667; % D D=0.4
0.282083333333333 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.215416666666667 0.00208333333333333 0.240833333333333 0.14875 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.107083333333333; % J D=0.4
0.299166666666667 0.0005 0.0005 0.0005 0.1825 0.1325 0.008 0.199166666666667 0.0005 0.0005 0.0005 0.0005 0.0005 0.0005 0.174166666666667; % K D=0.4
0.000416666666666667 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 0.000416666666666667 0.000416666666666667 0.0005 0.000416666666666667 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 0.99675 0.000416666666666667; % L D=0.4
0.000416666666666667 8.33333333333333e-05 0.99675 8.33333333333333e-05 0.000416666666666667 0.000416666666666667 0.0005 0.000416666666666667 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 0.000416666666666667; % R D=0.4
0.000416666666666667 8.33333333333333e-05 8.33333333333333e-05 0.99675 0.000416666666666667 0.000416666666666667 0.0005 0.000416666666666667 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 0.000416666666666667; % V D=0.4
0.000416666666666667 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 0.000416666666666667 0.000416666666666667 0.0005 0.000416666666666667 0.99675 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 0.000416666666666667; % Z D=0.4
0.000416666666666667 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 0.000416666666666667 0.000416666666666667 0.0005 0.000416666666666667 8.33333333333333e-05 8.33333333333333e-05 0.99675 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 0.000416666666666667; % b D=0.4
0.19875 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.19875 0.22375 0.174166666666667 0.00208333333333333 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.19875; % f D=0.4
0.000416666666666667 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 0.000416666666666667 0.000416666666666667 0.0005 0.000416666666666667 8.33333333333333e-05 0.99675 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 0.000416666666666667; % g D=0.4
0.290416666666667 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.00208333333333333 0.157083333333333 0.174166666666667 0.19875 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.17375; % k D=0.4
0.17375 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.22375 0.207083333333333 0.190833333333333 0.19875 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.00208333333333333; % n D=0.4
0.000416666666666667 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 0.000416666666666667 0.000416666666666667 0.0005 0.000416666666666667 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 0.99675 8.33333333333333e-05 8.33333333333333e-05 0.000416666666666667; % p D=0.4
0.000416666666666667 0.99675 8.33333333333333e-05 8.33333333333333e-05 0.000416666666666667 0.000416666666666667 0.0005 0.000416666666666667 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 8.33333333333333e-05 0.000416666666666667; % t D=0.4
0.00208333333333333 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.13875 0.21875 0.165833333333333 0.19875 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.000416666666666667 0.272083333333333; % $ D=0.5
0.000520833333333333 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000520833333333333 0.000520833333333333 0.000625 0.000520833333333333 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.9959375 0.000104166666666667 0.000520833333333333; % D D=0.5
0.281770833333333 0.000520833333333333 0.000520833333333333 0.000520833333333333 0.215104166666667 0.00260416666666667 0.240625 0.1484375 0.000520833333333333 0.000520833333333333 0.000520833333333333 0.000520833333333333 0.000520833333333333 0.000520833333333333 0.106770833333333; % J D=0.5
0.298958333333333 0.000625 0.000625 0.000625 0.182291666666667 0.132291666666667 0.00791666666666667 0.198958333333333 0.000625 0.000625 0.000625 0.000625 0.000625 0.000625 0.173958333333333; % K D=0.5
0.000520833333333333 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000520833333333333 0.000520833333333333 0.000625 0.000520833333333333 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.9959375 0.000520833333333333; % L D=0.5
0.000520833333333333 0.000104166666666667 0.9959375 0.000104166666666667 0.000520833333333333 0.000520833333333333 0.000625 0.000520833333333333 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000520833333333333; % R D=0.5
0.000520833333333333 0.000104166666666667 0.000104166666666667 0.9959375 0.000520833333333333 0.000520833333333333 0.000625 0.000520833333333333 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000520833333333333; % V D=0.5
0.000520833333333333 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000520833333333333 0.000520833333333333 0.000625 0.000520833333333333 0.9959375 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000520833333333333; % Z D=0.5
0.000520833333333333 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000520833333333333 0.000520833333333333 0.000625 0.000520833333333333 0.000104166666666667 0.000104166666666667 0.9959375 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000520833333333333; % b D=0.5
0.1984375 0.000520833333333333 0.000520833333333333 0.000520833333333333 0.1984375 0.2234375 0.173958333333333 0.00260416666666667 0.000520833333333333 0.000520833333333333 0.000520833333333333 0.000520833333333333 0.000520833333333333 0.000520833333333333 0.1984375; % f D=0.5
0.000520833333333333 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000520833333333333 0.000520833333333333 0.000625 0.000520833333333333 0.000104166666666667 0.9959375 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000520833333333333; % g D=0.5
0.290104166666667 0.000520833333333333 0.000520833333333333 0.000520833333333333 0.00260416666666667 0.156770833333333 0.173958333333333 0.1984375 0.000520833333333333 0.000520833333333333 0.000520833333333333 0.000520833333333333 0.000520833333333333 0.000520833333333333 0.1734375; % k D=0.5
0.1734375 0.000520833333333333 0.000520833333333333 0.000520833333333333 0.2234375 0.206770833333333 0.190625 0.1984375 0.000520833333333333 0.000520833333333333 0.000520833333333333 0.000520833333333333 0.000520833333333333 0.000520833333333333 0.00260416666666667; % n D=0.5
0.000520833333333333 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000520833333333333 0.000520833333333333 0.000625 0.000520833333333333 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.9959375 0.000104166666666667 0.000104166666666667 0.000520833333333333; % p D=0.5
0.000520833333333333 0.9959375 0.000104166666666667 0.000104166666666667 0.000520833333333333 0.000520833333333333 0.000625 0.000520833333333333 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000104166666666667 0.000520833333333333; % t D=0.5
0.0025 0.0005 0.0005 0.0005 0.1385 0.2185 0.165666666666667 0.1985 0.0005 0.0005 0.0005 0.0005 0.0005 0.0005 0.271833333333333; % $ D=0.6
0.000625 0.000125 0.000125 0.000125 0.000625 0.000625 0.00075 0.000625 0.000125 0.000125 0.000125 0.000125 0.995125 0.000125 0.000625; % D D=0.6
0.281458333333333 0.000625 0.000625 0.000625 0.214791666666667 0.003125 0.240416666666667 0.148125 0.000625 0.000625 0.000625 0.000625 0.000625 0.000625 0.106458333333333; % J D=0.6
0.29875 0.00075 0.00075 0.00075 0.182083333333333 0.132083333333333 0.00783333333333333 0.19875 0.00075 0.00075 0.00075 0.00075 0.00075 0.00075 0.17375; % K D=0.6
0.000625 0.000125 0.000125 0.000125 0.000625 0.000625 0.00075 0.000625 0.000125 0.000125 0.000125 0.000125 0.000125 0.995125 0.000625; % L D=0.6
0.000625 0.000125 0.995125 0.000125 0.000625 0.000625 0.00075 0.000625 0.000125 0.000125 0.000125 0.000125 0.000125 0.000125 0.000625; % R D=0.6
0.000625 0.000125 0.000125 0.995125 0.000625 0.000625 0.00075 0.000625 0.000125 0.000125 0.000125 0.000125 0.000125 0.000125 0.000625; % V D=0.6
0.000625 0.000125 0.000125 0.000125 0.000625 0.000625 0.00075 0.000625 0.995125 0.000125 0.000125 0.000125 0.000125 0.000125 0.000625; % Z D=0.6
0.000625 0.000125 0.000125 0.000125 0.000625 0.000625 0.00075 0.000625 0.000125 0.000125 0.995125 0.000125 0.000125 0.000125 0.000625; % b D=0.6
0.198125 0.000625 0.000625 0.000625 0.198125 0.223125 0.17375 0.003125 0.000625 0.000625 0.000625 0.000625 0.000625 0.000625 0.198125; % f D=0.6
0.000625 0.000125 0.000125 0.000125 0.000625 0.000625 0.00075 0.000625 0.000125 0.995125 0.000125 0.000125 0.000125 0.000125 0.000625; % g D=0.6
0.289791666666667 0.000625 0.000625 0.000625 0.003125 0.156458333333333 0.17375 0.198125 0.000625 0.000625 0.000625 0.000625 0.000625 0.000625 0.173125; % k D=0.6
0.173125 0.000625 0.000625 0.000625 0.223125 0.206458333333333 0.190416666666667 0.198125 0.000625 0.000625 0.000625 0.000625 0.000625 0.000625 0.003125; % n D=0.6
0.000625 0.000125 0.000125 0.000125 0.000625 0.000625 0.00075 0.000625 0.000125 0.000125 0.000125 0.995125 0.000125 0.000125 0.000625; % p D=0.6
0.000625 0.995125 0.000125 0.000125 0.000625 0.000625 0.00075 0.000625 0.000125 0.000125 0.000125 0.000125 0.000125 0.000125 0.000625; % t D=0.6
0.00291666666666667 0.000583333333333333 0.000583333333333333 0.000583333333333333 0.13825 0.21825 0.1655 0.19825 0.000583333333333333 0.000583333333333333 0.000583333333333333 0.000583333333333333 0.000583333333333333 0.000583333333333333 0.271583333333333; % $ D=0.7
0.000729166666666667 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.000729166666666667 0.000729166666666667 0.000875 0.000729166666666667 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.9943125 0.000145833333333333 0.000729166666666667; % D D=0.7
0.281145833333333 0.000729166666666667 0.000729166666666667 0.000729166666666667 0.214479166666667 0.00364583333333333 0.240208333333333 0.1478125 0.000729166666666667 0.000729166666666667 0.000729166666666667 0.000729166666666667 0.000729166666666667 0.000729166666666667 0.106145833333333; % J D=0.7
0.298541666666667 0.000875 0.000875 0.000875 0.181875 0.131875 0.00775 0.198541666666667 0.000875 0.000875 0.000875 0.000875 0.000875 0.000875 0.173541666666667; % K D=0.7
0.000729166666666667 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.000729166666666667 0.000729166666666667 0.000875 0.000729166666666667 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.9943125 0.000729166666666667; % L D=0.7
0.000729166666666667 0.000145833333333333 0.9943125 0.000145833333333333 0.000729166666666667 0.000729166666666667 0.000875 0.000729166666666667 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.000729166666666667; % R D=0.7
0.000729166666666667 0.000145833333333333 0.000145833333333333 0.9943125 0.000729166666666667 0.000729166666666667 0.000875 0.000729166666666667 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.000729166666666667; % V D=0.7
0.000729166666666667 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.000729166666666667 0.000729166666666667 0.000875 0.000729166666666667 0.9943125 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.000729166666666667; % Z D=0.7
0.000729166666666667 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.000729166666666667 0.000729166666666667 0.000875 0.000729166666666667 0.000145833333333333 0.000145833333333333 0.9943125 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.000729166666666667; % b D=0.7
0.1978125 0.000729166666666667 0.000729166666666667 0.000729166666666667 0.1978125 0.2228125 0.173541666666667 0.00364583333333333 0.000729166666666667 0.000729166666666667 0.000729166666666667 0.000729166666666667 0.000729166666666667 0.000729166666666667 0.1978125; % f D=0.7
0.000729166666666667 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.000729166666666667 0.000729166666666667 0.000875 0.000729166666666667 0.000145833333333333 0.9943125 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.000729166666666667; % g D=0.7
0.289479166666667 0.000729166666666667 0.000729166666666667 0.000729166666666667 0.00364583333333333 0.156145833333333 0.173541666666667 0.1978125 0.000729166666666667 0.000729166666666667 0.000729166666666667 0.000729166666666667 0.000729166666666667 0.000729166666666667 0.1728125; % k D=0.7
0.1728125 0.000729166666666667 0.000729166666666667 0.000729166666666667 0.2228125 0.206145833333333 0.190208333333333 0.1978125 0.000729166666666667 0.000729166666666667 0.000729166666666667 0.000729166666666667 0.000729166666666667 0.000729166666666667 0.00364583333333333; % n D=0.7
0.000729166666666667 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.000729166666666667 0.000729166666666667 0.000875 0.000729166666666667 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.9943125 0.000145833333333333 0.000145833333333333 0.000729166666666667; % p D=0.7
0.000729166666666667 0.9943125 0.000145833333333333 0.000145833333333333 0.000729166666666667 0.000729166666666667 0.000875 0.000729166666666667 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.000145833333333333 0.000729166666666667; % t D=0.7
0.00333333333333333 0.000666666666666667 0.000666666666666667 0.000666666666666667 0.138 0.218 0.165333333333333 0.198 0.000666666666666667 0.000666666666666667 0.000666666666666667 0.000666666666666667 0.000666666666666667 0.000666666666666667 0.271333333333333; % $ D=0.8
0.000833333333333333 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000833333333333333 0.000833333333333333 0.001 0.000833333333333333 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.9935 0.000166666666666667 0.000833333333333333; % D D=0.8
0.280833333333333 0.000833333333333333 0.000833333333333333 0.000833333333333333 0.214166666666667 0.00416666666666667 0.24 0.1475 0.000833333333333333 0.000833333333333333 0.000833333333333333 0.000833333333333333 0.000833333333333333 0.000833333333333333 0.105833333333333; % J D=0.8
0.298333333333333 0.001 0.001 0.001 0.181666666666667 0.131666666666667 0.00766666666666667 0.198333333333333 0.001 0.001 0.001 0.001 0.001 0.001 0.173333333333333; % K D=0.8
0.000833333333333333 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000833333333333333 0.000833333333333333 0.001 0.000833333333333333 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.9935 0.000833333333333333; % L D=0.8
0.000833333333333333 0.000166666666666667 0.9935 0.000166666666666667 0.000833333333333333 0.000833333333333333 0.001 0.000833333333333333 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000833333333333333; % R D=0.8
0.000833333333333333 0.000166666666666667 0.000166666666666667 0.9935 0.000833333333333333 0.000833333333333333 0.001 0.000833333333333333 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000833333333333333; % V D=0.8
0.000833333333333333 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000833333333333333 0.000833333333333333 0.001 0.000833333333333333 0.9935 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000833333333333333; % Z D=0.8
0.000833333333333333 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000833333333333333 0.000833333333333333 0.001 0.000833333333333333 0.000166666666666667 0.000166666666666667 0.9935 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000833333333333333; % b D=0.8
0.1975 0.000833333333333333 0.000833333333333333 0.000833333333333333 0.1975 0.2225 0.173333333333333 0.00416666666666667 0.000833333333333333 0.000833333333333333 0.000833333333333333 0.000833333333333333 0.000833333333333333 0.000833333333333333 0.1975; % f D=0.8
0.000833333333333333 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000833333333333333 0.000833333333333333 0.001 0.000833333333333333 0.000166666666666667 0.9935 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000833333333333333; % g D=0.8
0.289166666666667 0.000833333333333333 0.000833333333333333 0.000833333333333333 0.00416666666666667 0.155833333333333 0.173333333333333 0.1975 0.000833333333333333 0.000833333333333333 0.000833333333333333 0.000833333333333333 0.000833333333333333 0.000833333333333333 0.1725; % k D=0.8
0.1725 0.000833333333333333 0.000833333333333333 0.000833333333333333 0.2225 0.205833333333333 0.19 0.1975 0.000833333333333333 0.000833333333333333 0.000833333333333333 0.000833333333333333 0.000833333333333333 0.000833333333333333 0.00416666666666667; % n D=0.8
0.000833333333333333 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000833333333333333 0.000833333333333333 0.001 0.000833333333333333 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.9935 0.000166666666666667 0.000166666666666667 0.000833333333333333; % p D=0.8
0.000833333333333333 0.9935 0.000166666666666667 0.000166666666666667 0.000833333333333333 0.000833333333333333 0.001 0.000833333333333333 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000166666666666667 0.000833333333333333; % t D=0.8
0.00375 0.00075 0.00075 0.00075 0.13775 0.21775 0.165166666666667 0.19775 0.00075 0.00075 0.00075 0.00075 0.00075 0.00075 0.271083333333333; % $ D=0.9
0.0009375 0.0001875 0.0001875 0.0001875 0.0009375 0.0009375 0.001125 0.0009375 0.0001875 0.0001875 0.0001875 0.0001875 0.9926875 0.0001875 0.0009375; % D D=0.9
0.280520833333333 0.0009375 0.0009375 0.0009375 0.213854166666667 0.0046875 0.239791666666667 0.1471875 0.0009375 0.0009375 0.0009375 0.0009375 0.0009375 0.0009375 0.105520833333333; % J D=0.9
0.298125 0.001125 0.001125 0.001125 0.181458333333333 0.131458333333333 0.00758333333333333 0.198125 0.001125 0.001125 0.001125 0.001125 0.001125 0.001125 0.173125; % K D=0.9
0.0009375 0.0001875 0.0001875 0.0001875 0.0009375 0.0009375 0.001125 0.0009375 0.0001875 0.0001875 0.0001875 0.0001875 0.0001875 0.9926875 0.0009375; % L D=0.9
0.0009375 0.0001875 0.9926875 0.0001875 0.0009375 0.0009375 0.001125 0.0009375 0.0001875 0.0001875 0.0001875 0.0001875 0.0001875 0.0001875 0.0009375; % R D=0.9
0.0009375 0.0001875 0.0001875 0.9926875 0.0009375 0.0009375 0.001125 0.0009375 0.0001875 0.0001875 0.0001875 0.0001875 0.0001875 0.0001875 0.0009375; % V D=0.9
0.0009375 0.0001875 0.0001875 0.0001875 0.0009375 0.0009375 0.001125 0.0009375 0.9926875 0.0001875 0.0001875 0.0001875 0.0001875 0.0001875 0.0009375; % Z D=0.9
0.0009375 0.0001875 0.0001875 0.0001875 0.0009375 0.0009375 0.001125 0.0009375 0.0001875 0.0001875 0.9926875 0.0001875 0.0001875 0.0001875 0.0009375; % b D=0.9
0.1971875 0.0009375 0.0009375 0.0009375 0.1971875 0.2221875 0.173125 0.0046875 0.0009375 0.0009375 0.0009375 0.0009375 0.0009375 0.0009375 0.1971875; % f D=0.9
0.0009375 0.0001875 0.0001875 0.0001875 0.0009375 0.0009375 0.001125 0.0009375 0.0001875 0.9926875 0.0001875 0.0001875 0.0001875 0.0001875 0.0009375; % g D=0.9
0.288854166666667 0.0009375 0.0009375 0.0009375 0.0046875 0.155520833333333 0.173125 0.1971875 0.0009375 0.0009375 0.0009375 0.0009375 0.0009375 0.0009375 0.1721875; % k D=0.9
0.1721875 0.0009375 0.0009375 0.0009375 0.2221875 0.205520833333333 0.189791666666667 0.1971875 0.0009375 0.0009375 0.0009375 0.0009375 0.0009375 0.0009375 0.0046875; % n D=0.9
0.0009375 0.0001875 0.0001875 0.0001875 0.0009375 0.0009375 0.001125 0.0009375 0.0001875 0.0001875 0.0001875 0.9926875 0.0001875 0.0001875 0.0009375; % p D=0.9
0.0009375 0.9926875 0.0001875 0.0001875 0.0009375 0.0009375 0.001125 0.0009375 0.0001875 0.0001875 0.0001875 0.0001875 0.0001875 0.0001875 0.0009375; % t D=0.9
0.00395833333333333 0.000791666666666667 0.000791666666666667 0.000791666666666667 0.137625 0.217625 0.165083333333333 0.197625 0.000791666666666667 0.000791666666666667 0.000791666666666667 0.000791666666666667 0.000791666666666667 0.000791666666666667 0.270958333333333; % $ D=0.95
0.000989583333333333 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.000989583333333333 0.000989583333333333 0.0011875 0.000989583333333333 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.99228125 0.000197916666666667 0.000989583333333333; % D D=0.95
0.280364583333333 0.000989583333333333 0.000989583333333333 0.000989583333333333 0.213697916666667 0.00494791666666667 0.2396875 0.14703125 0.000989583333333333 0.000989583333333333 0.000989583333333333 0.000989583333333333 0.000989583333333333 0.000989583333333333 0.105364583333333; % J D=0.95
0.298020833333333 0.0011875 0.0011875 0.0011875 0.181354166666667 0.131354166666667 0.00754166666666667 0.198020833333333 0.0011875 0.0011875 0.0011875 0.0011875 0.0011875 0.0011875 0.173020833333333; % K D=0.95
0.000989583333333333 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.000989583333333333 0.000989583333333333 0.0011875 0.000989583333333333 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.99228125 0.000989583333333333; % L D=0.95
0.000989583333333333 0.000197916666666667 0.99228125 0.000197916666666667 0.000989583333333333 0.000989583333333333 0.0011875 0.000989583333333333 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.000989583333333333; % R D=0.95
0.000989583333333333 0.000197916666666667 0.000197916666666667 0.99228125 0.000989583333333333 0.000989583333333333 0.0011875 0.000989583333333333 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.000989583333333333; % V D=0.95
0.000989583333333333 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.000989583333333333 0.000989583333333333 0.0011875 0.000989583333333333 0.99228125 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.000989583333333333; % Z D=0.95
0.000989583333333333 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.000989583333333333 0.000989583333333333 0.0011875 0.000989583333333333 0.000197916666666667 0.000197916666666667 0.99228125 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.000989583333333333; % b D=0.95
0.19703125 0.000989583333333333 0.000989583333333333 0.000989583333333333 0.19703125 0.22203125 0.173020833333333 0.00494791666666667 0.000989583333333333 0.000989583333333333 0.000989583333333333 0.000989583333333333 0.000989583333333333 0.000989583333333333 0.19703125; % f D=0.95
0.000989583333333333 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.000989583333333333 0.000989583333333333 0.0011875 0.000989583333333333 0.000197916666666667 0.99228125 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.000989583333333333; % g D=0.95
0.288697916666667 0.000989583333333333 0.000989583333333333 0.000989583333333333 0.00494791666666667 0.155364583333333 0.173020833333333 0.19703125 0.000989583333333333 0.000989583333333333 0.000989583333333333 0.000989583333333333 0.000989583333333333 0.000989583333333333 0.17203125; % k D=0.95
0.17203125 0.000989583333333333 0.000989583333333333 0.000989583333333333 0.22203125 0.205364583333333 0.1896875 0.19703125 0.000989583333333333 0.000989583333333333 0.000989583333333333 0.000989583333333333 0.000989583333333333 0.000989583333333333 0.00494791666666667; % n D=0.95
0.000989583333333333 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.000989583333333333 0.000989583333333333 0.0011875 0.000989583333333333 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.99228125 0.000197916666666667 0.000197916666666667 0.000989583333333333; % p D=0.95
0.000989583333333333 0.99228125 0.000197916666666667 0.000197916666666667 0.000989583333333333 0.000989583333333333 0.0011875 0.000989583333333333 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.000197916666666667 0.000989583333333333]; % t D=0.95