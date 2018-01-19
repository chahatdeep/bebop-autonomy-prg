%% Plotting function:

clc; clear;
close all;
new_pos = 0;

radius = 0.5;
nSteps = 16;
half_pi = pi/2;

for count = 1:nSteps
pos_change = [radius*cos(half_pi*count/nSteps), radius*sin(half_pi*count/nSteps)];
new_pos = new_pos + pos_change;
pause(0.2);
plot(pos_change(2), pos_change(1),'+');
hold on;
disp(pos_change)
end
