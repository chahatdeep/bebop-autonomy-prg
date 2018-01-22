function [ControlZBody, ControlYBody, ControlXBody] = ControlCommand(ImgSize, centerBest, Kp, MovementPub, DesiredRad, RadiusBest)
ControlZBody = -Kp(1)*(centerBest(2) - ImgSize(1)/2);
ControlYBody = -Kp(2)*(centerBest(1) - ImgSize(2)/2);
ControlXBody = Kp(3)*(DesiredRad - RadiusBest);
disp([ControlZBody, ControlYBody, ControlXBody]); 
% pause;
MovementCmd(MovementPub, [ControlXBody,ControlYBody,ControlZBody,0,0,0]');
pause(0.2);
end

