function DiamondCmd(MovementPub)
% Move up to have enough space
for count = 1:10
MovementCmd(MovementPub, [0,0,0.1,0,0,0]');
pause(0.2);
end

pause(2);

% Diamond
for count = 1:5
MovementCmd(MovementPub, [0,-0.1,0.3,0,0,0]');
pause(0.2);
end

pause(0.5);

for count = 1:5
MovementCmd(MovementPub, [0,0.1,0.3,0,0,0]');
pause(0.2);
end

pause(0.5);


for count = 1:5
MovementCmd(MovementPub, [0,0.1,-0.3,0,0,0]');
pause(0.2);
end

pause(0.5);


for count = 1:5
MovementCmd(MovementPub, [0,-0.1,-0.3,0,0,0]');
pause(0.2);
end

pause(2);

% Move down for safety
for count = 1:20
MovementCmd(MovementPub, [0,0,-0.1,0,0,0]');
pause(0.2);
end

pause(2);

end
