function ImgData = DiamondCmdWithImg(MovementPub, ImageSub)

% Move up to have enough space
for count = 1:10
MovementCmd(MovementPub, [0,0,0.1,0,0,0]');
pause(0.2);
end

ImgMsg = receive(ImageSub, 10);
ImgData{1} = readImage(ImgMsg);
pause(2);

% Diamond
for count = 1:5
MovementCmd(MovementPub, [0,-0.1,0.3,0,0,0]');
pause(0.2);
end

pause(0.5);
ImgMsg = receive(ImageSub, 10);
ImgData{2} = readImage(ImgMsg);

for count = 1:5
MovementCmd(MovementPub, [0,0.1,0.3,0,0,0]');
pause(0.2);
end

pause(2);
ImgMsg = receive(ImageSub, 10);
ImgData{3} = readImage(ImgMsg);


for count = 1:5
MovementCmd(MovementPub, [0,0.1,-0.3,0,0,0]');
pause(0.2);
end

pause(2);
ImgMsg = receive(ImageSub, 10);
ImgData{4} = readImage(ImgMsg);

for count = 1:5
MovementCmd(MovementPub, [0,-0.1,-0.3,0,0,0]');
pause(0.2);
end

pause(2);
ImgMsg = receive(ImageSub, 10);
ImgData{5} = readImage(ImgMsg);

% Move down for safety
for count = 1:20
MovementCmd(MovementPub, [0,0,-0.1,0,0,0]');
pause(0.2);
end

pause(2);

end
