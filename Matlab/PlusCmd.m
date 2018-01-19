function PlusCmd(MovementPub)
for count = 1:10
MovementCmd(MovementPub, [0,0,0.1,0,0,0]');
pause(0.2);
end

for count = 1:40
MovementCmd(MovementPub, [0,0,-0.1,0,0,0]');
pause(0.2);
end

% MovementCmd(MovementPub, [0,0,-1,0,0,0]');
% pause(2);
% MovementCmd(MovementPub, [0,0,0.5,0,0,0]');
% pause(2);
% MovementCmd(MovementPub, [0,0.5,0,0,0,0]');
% pause(2);
% MovementCmd(MovementPub, [0,-1,0,0,0,0]');
% pause(2);
% MovementCmd(MovementPub, [0,0.5,0,0,0,0]');
% pause(2);
end
