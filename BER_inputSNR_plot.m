clear,close all;
BER_inputSNR_data_10 = xlsread('BER_inputSNR(10).xlsx');
BER_inputSNR_data_30 = xlsread('BER_inputSNR(30).xlsx');
BER_inputSNR_data_50 = xlsread('BER_inputSNR(50).xlsx');
result_10 = BER_inputSNR_data_10;
result_30 = BER_inputSNR_data_30;
result_50 = BER_inputSNR_data_50;
[ mean_result_10,success_ratio_10 ] = data_process( result_10);
[ mean_result_30,success_ratio_30 ] = data_process( result_30);
[ mean_result_50,success_ratio_50 ] = data_process( result_50);
mean_result_30(1,13) = 0;
mean_result_30(1,14) = 0;
mean_result_30(1,15) = 0;
% result = result/32;
% mean_result = mean(result);
% mean_result = 1- mean_result;
% 
% success_count = [];
% for i=1:size(result,2)
%     A = find(result(:,i)>0.999);
%    temp_count = length(find(A>0));
%    success_count = [success_count temp_count];
% end
% 
% success_ratio = success_count/100;

figure(1)
semilogy(mean_result_10, '-o','linewidth',2);
hold on
semilogy(mean_result_30, '-r^','linewidth',2);
hold on
semilogy(mean_result_50, '-md','linewidth',2);
set(gca,'xticklabel',(get(gca,'xTick')-1)*2-20);
legend('channel=10','channel=30','channel=50');

% grid on
xlabel('inputSNR/dB');
ylabel('BER');

figure(2)
plot(mean_result_10, '-o','linewidth',2)
hold on
plot(mean_result_30, '-r^','linewidth',2)
hold on
plot(mean_result_50, '-md','linewidth',2)
set(gca,'xticklabel',(get(gca,'xTick')-1)*2-20);
legend('channel=10','channel=30','channel=50');

% grid on
xlabel('inputSNR/dB');
ylabel('BER');

figure(3)
plot(success_ratio_10, '-o','linewidth',2)
hold on
plot(success_ratio_30, '-r^','linewidth',2)
hold on
plot(success_ratio_50, '-md','linewidth',2)
set(gca,'xticklabel',(get(gca,'xTick')-1)*2-20);
legend('channel=10','channel=30','channel=50');

% grid on
xlabel('inputSNR/dB');
ylabel('Success Ratio');