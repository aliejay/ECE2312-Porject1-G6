info = audiodevinfo;
info.input(1)
info.input(2)

Fs = 8000;
nBits = 8;
nChannels = 1;
duration = 5;

recorder = audiorecorder(Fs, nBits, nChannels, 1);

%pause(3);
disp("Get Ready")
pause(1);

disp("3")
pause(1);

disp("2")
pause(1);

disp("1")
pause(1);

disp("Start Speaking")

record(recorder, duration);

% Wait 5 seconds
pause(duration);
disp("Recording over")

audioArray = getaudiodata(recorder, "double");
timeArray = audioArray/8000;
%rescale(audioArray, 0,5);
%plot(timeArray)
%title("Audio")
%xlabel("Time")
%ylabel("Magnitude")

clf
subplot(3,1,1)
n0 = 0;
Time = ( 0:5 ) - n0;  % Create time axis.
stem(Time, timeArray, 'b'), ylabel('Mag'); box('off');
title('Audio');
