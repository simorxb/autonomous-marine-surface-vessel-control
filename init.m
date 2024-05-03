%% Vessel parameters

% Inertia matrix
M = [   26.4272    0           0;
        0          51.3671     -0.7372;
        0          -0.7372     1.2645];

% Damping matrix
D = [   4.3411      0       0;
        0           6.2983  0;
        0           0       1.2577];

d = 0.4;

% Allocation matrix
B = [1 1; 0 0; d/2 -d/2];

%% Control system

% Sample time
tSamp = 0.1;

% Allocation matrix
B0 = [1 1; d/2 -d/2];