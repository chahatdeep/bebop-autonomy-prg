function CircleCmd(MovementPub)
% Move up first
for count = 1:10
MovementCmd(MovementPub, [0,0,0.1,0,0,0]');
pause(0.2);
end

% Circle Command
R = 1;
NumSteps = 4;
Ang = 2*pi;

Pos = zeros(NumSteps, 2);
for count = 1:NumSteps
Pos(count,:) = [R*cos(Ang*(count-1)/NumSteps), R*sin(Ang*(count-1)/NumSteps)];
end
Pos(count+1,:) = [R, 0];

Pos = Pos - [1, 0];
Pos(:,2) = -Pos(:,2);
DelPos = diff(Pos);

for count = 1:NumSteps-1
MovementCmd(MovementPub, [0,DelPos(count,1),DelPos(count,2),0,0,0]');
pause(1);
end
end
