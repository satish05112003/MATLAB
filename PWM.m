Am = 1;
fm = 50; 
fc = 1000; 
t = 0:1e-5:0.05;
message_signal = Am * sin(2 * pi * fm * t);
carrier_signal = sawtooth(2 * pi * fc * t);
pwm_signal = message_signal > carrier_signal;
figure;
subplot(3,1,1);
plot(t, message_signal);
title('Message Signal');
xlabel('Time (s)');
ylabel('Amplitude');
subplot(3,1,2);
plot(t, carrier_signal);
title('Carrier Signal (Sawtooth)');
xlabel('Time (s)');
ylabel('Amplitude');
subplot(3,1,3);
plot(t, pwm_signal);
title('PWM Signal');
xlabel('Time (s)');
ylabel('Amplitude');
