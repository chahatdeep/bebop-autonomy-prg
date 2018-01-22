% clc
% clear all
% close all

%% Initialize
% Kill all old ros
% rosshutdown
<<<<<<< HEAD
try
rosinit
catch
    rosshutdown
    pause(2);
    rosinit
end
=======
rosinit
>>>>>>> f834c4515e8cc313d37640e4cacaaf3de5c3f16c

%% Image Subscriber
ImageSub = rossubscriber('/bebop/image_raw');
pause(1);

%% Recieve Image Data
% ImgMsg = receive(ImageSub, 10);
% ImgData = readImage(ImgMsg);

%% All commands
TakeOffPub = rospublisher('/bebop/takeoff','std_msgs/Empty');
LandPub = rospublisher('/bebop/land','std_msgs/Empty');
MovementPub = rospublisher('/bebop/cmd_vel', 'geometry_msgs/Twist');

%% Test Simple State Machine
% TakeOff --> Move in X,Y,Z by +1 unit --> Land
TakeoffCmd(TakeOffPub);
pause(5);
<<<<<<< HEAD
PlusCmd(MovementPub);
pause(2);
for count = 1:20
centerBest = ReadAndDisplayImg(ImageSub, MovementPub);
% pause(2);
end
pause(2);
% CircleCmd(MovementPub);
% DiamondCmd(MovementPub);
% ImgData = DiamondCmdWithImg(MovementPub, ImageSub);
% OctagonCmd(MovementPub);
% pause(2);
=======
% PlusCmd(MovementPub);
% CircleCmd(MovementPub);
% DiamondCmd(MovementPub);
ImgData = DiamondCmdWithImg(MovementPub, ImageSub);
% OctagonCmd(MovementPub);
pause(2);
>>>>>>> f834c4515e8cc313d37640e4cacaaf3de5c3f16c
% MovementCmd(MovementPub, [0,0.5,0,0,0,0]');
% pause(5);
% MovementCmd(MovementPub, [-0.2,0.2,0.2,0,0,0]');
% pause(5)
<<<<<<< HEAD
LandCmd(LandPub);
 
%% Display Images as a Montage
ImgMontage = cat(4, ImgData{:});
figure,
montage(ImgMontage);
=======
LandCmd(LandPub);
>>>>>>> f834c4515e8cc313d37640e4cacaaf3de5c3f16c
