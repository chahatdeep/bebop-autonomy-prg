% clc
% clear all
% close all

%% Initialize
% Kill all old ros
% rosshutdown
rosinit

%% Image Subscriber
ImageSub = rossubscriber('/bebop/image_raw');
pause(1);

%% Recieve Image Data
ImgMsg = receive(ImageSub, 10);
ImgData = readImage(ImgMsg);

%% All commands
TakeOffPub = rospublisher('/bebop/takeoff','std_msgs/Empty');
LandPub = rospublisher('/bebop/land','std_msgs/Empty');
MovementPub = rospublisher('/bebop/cmd_vel', 'geometry_msgs/Twist');

%% Test Simple State Machine
% TakeOff --> Move in X,Y,Z by +1 unit --> Land
TakeoffCmd(TakeOffPub);
pause(5);
ImgData = DiamondCmdWithImg(MovementPub, ImageSub);
pause(2);
LandCmd(LandPub);