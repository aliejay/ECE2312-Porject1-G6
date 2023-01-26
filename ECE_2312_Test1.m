info = audiodevinfo;
info.input(1)
info.input(2)

Fs = 8000;
nBits = 8;
nChannels = 1;
duration = 5;

recorder = audiorecorder(Fs, nBits, nChannels, 1);

disp("Start Speaking")
record(recorder, duration);
% Wait 5 seconds
pause(5);
disp("Recording over")

audioArray = getaudiodata(recorder);
plot(audioArray)
Title("Audio")

