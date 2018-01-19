function OctagonCmd(MovementPub)
% Move up to have enough space
for count = 1:10
MovementCmd(MovementPub, [0,0,0.1,0,0,0]');
pause(0.2);
end

pause(2);

% Octagon
% Bottom to Right Bottom
for count = 1:3
MovementCmd(MovementPub, [0,-0.2,0.15,0,0,0]');
pause(0.2);
end

% pause(0.2);

% Right Bottom to Right Mid
for count = 1:3
MovementCmd(MovementPub, [0,-0.1,0.3,0,0,0]');
pause(0.2);
end

% pause(2);


% for count = 1:10
% MovementCmd(MovementPub, [0,0.1,-0.3,0,0,0]');
% pause(0.2);
% end
% 
% pause(2);
% 
% 
% for count = 1:10
% MovementCmd(MovementPub, [0,-0.1,-0.3,0,0,0]');
% pause(0.2);
% end
% 
% pause(2);

pause(2);
% Move down for safety
for count = 1:20
MovementCmd(MovementPub, [0,0,-0.1,0,0,0]');
pause(0.2);
end

pause(2);

end
