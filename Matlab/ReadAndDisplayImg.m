function centerBest = ReadAndDisplayImg(ImageSub, MovementPub)
Kp = [0.003, 0.003, 0.01];
DesiredRad = 24;

for count = 1%:1000
    ImgMsg = receive(ImageSub, 10);
    ImgDataNow = readImage(ImgMsg);
    [BW,maskedRGBImage, centerBest, RadiusBest, MetricBest] = ExtractBlueCircle(ImgDataNow);
    imshow(maskedRGBImage);
    if(~isempty(centerBest))
        viscircles(centerBest, RadiusBest,'EdgeColor','r');
    end
    title(count);
    drawnow;
    [ControlZBody, ControlYBody, ControlXBody] = ControlCommand(size(ImgDataNow), centerBest, Kp, MovementPub, DesiredRad, RadiusBest);
end
end