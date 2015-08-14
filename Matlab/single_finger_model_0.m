% constants
l1 = 4; % Length of first link
l2 = 5; % Length of second link
l3 = 6; % Length of third link

% state variables
theta1 = pi/3; % Angle in radians between ground and l1
theta2 = pi/4; % Angle in radians between l1 and l2
theta3 = pi/5; % Angle in radians between l2 and l3

%=========================================================

% Kinematic equations
% First Link
x1 = l1*cos(theta1);
y1 = l1*sin(theta1);
z1 = 0;

% Second Link
x2 = l2*cos(theta1 + theta2);
y2 = l2*sin(theta1 + theta2);
z2 = 0;

% Third Link
x3 = l3*cos(theta1 + theta2 + theta3);
y3 = l3*sin(theta1 + theta2 + theta3);
z3 = 0;

% Single fingertip
x = x1 + x2 + x3;
y = y1 + y2 + y3;
z = z1 + z2 + z3;
L_x = [0, x1, x2; x1, x2, x3]';
L_y = [0, y1, y2; y1, y2, y3]';
L_z = [0, z1, z2; z1, z2, z3]';
%=========================================================
% drawing single whole finger
% For 3d: plot3(L_x, L_y, L_z, 'red')
plot(L_x,L_y, 'red')

