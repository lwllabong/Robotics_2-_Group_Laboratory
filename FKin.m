disp('manip')

syms a1 a2 a3 a4

%% Link lengths

a1 = 3;
a2 = 3;
a3 = 3;
a4 = 3;

%% D-H Parameters [theta, d, r, alpha, offset]

H1 = Link([0,0,0,0,1,a1]);
H1.qlim = [0 3];

H2 = Link([0,0,a2,0,0]);
H2.qlim = pi/180*[-90 90];

H3 = Link([0,a3,a4,0,0]);
H3.qlim = pi/180*[-90 90];

manip = SerialLink([H1 H2 H3], 'name', 'manip')
manip.plot([0 0 0], 'workspace', [-10 15 -10 15 0 20])
manip.teach