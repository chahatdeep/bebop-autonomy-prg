R = 2;
NumSteps = 8;
Ang = 2*pi;

Pos = zeros(NumSteps, 2);
for count = 1:NumSteps
Pos(count,:) = [R*cos(Ang*(count-1)/NumSteps), R*sin(Ang*(count-1)/NumSteps)];
end
Pos(count+1,:) = [R, 0];

Pos = Pos - [1, 0];
Pos(:,2) = -Pos(:,2);

close all
hold on;
for count = 1:size(Pos,1)-1
plot(Pos(count:count+1,1), Pos(count:count+1,2));
pause;
end

% DelPos = diff(Pos);

% close all
% hold on;
% DelPos = [[0,0]; DelPos];
% for count = 1:size(DelPos,1)-1
% plot(DelPos(count:count+1,1), DelPos(count:count+1,2));
% xlabel('Y');
% ylabel('Z');
% pause;
% end