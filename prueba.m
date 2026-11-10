load('clip2.mat');

fs = 48000;
x = clip2(:);

b = lowpassiir1_Num;
a = lowpassiir1_Den;


y1 = filter(b(1,:), a(1,:), x);

y = filter(b(2,:), a(2,:), y1);

disp(['NaN values: ', num2str(sum(isnan(y)))]);
disp(['Inf values: ', num2str(sum(isinf(y)))]);

disp('Playing original audio...');
soundsc(x, fs);
pause(length(x)/fs + 1);


disp('Playing filtered audio...');
soundsc(y, fs)