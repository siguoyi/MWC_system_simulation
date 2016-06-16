clear,close all;
BER_inputSNR_data = load('BER_inputSNR.mat');
result = BER_inputSNR_data.BER_inputSNR_result;
result = result/32;
mean_result = mean(result);
mean_result = 1- mean_result;

success_count = [];
for i=1:size(result,2)
    A = find(result(:,i)>0.999);
   temp_count = length(find(A>0));
   success_count = [success_count temp_count];
end

success_ratio = success_count/100;

figure(1)
semilogy(mean_result, '-o','linewidth',2);
set(gca,'xticklabel',(get(gca,'xTick')-1)*2-20);
% grid on
xlabel('Input SNR/dB');
ylabel('BER');

figure(2)
plot(mean_result, '-o','linewidth',2)
% set(gca,'XLim',[0 36]);
set(gca,'xticklabel',(get(gca,'xTick')-1)*2-20);
% grid on
xlabel('Input SNR/dB');
ylabel('BER');

figure(3)
plot(success_ratio, '-o','linewidth',2)
% set(gca,'XLim',[0 36]);
set(gca,'xticklabel',(get(gca,'xTick')-1)*2-20);
% grid on
xlabel('Input SNR/dB');
ylabel('Success Ratio');