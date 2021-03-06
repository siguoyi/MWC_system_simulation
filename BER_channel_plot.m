clear,close all;
BER_channel_data_10_ = xlsread('BER_channel(-10).xlsx');
BER_channel_data_0 = xlsread('BER_channel(0).xlsx');
BER_channel_data_10 = xlsread('BER_channel(10).xlsx');
BER_channel_data_20 = xlsread('BER_channel(20).xlsx');
BER_channel_data_30 = xlsread('BER_channel(30).xlsx');
result_10_ = BER_channel_data_10_;
result_0 = BER_channel_data_0;
result_10 = BER_channel_data_10;
result_20 = BER_channel_data_20;
result_30 = BER_channel_data_30;

[ mean_result_10_,success_ratio_10_ ] = data_process( result_10_);
[ mean_result_0,success_ratio_0 ] = data_process( result_0);
[ mean_result_10,success_ratio_10 ] = data_process( result_10);
[ mean_result_20,success_ratio_20 ] = data_process( result_20);
[ mean_result_30,success_ratio_30 ] = data_process( result_30);


% result = result/32;
% mean_result = mean(result);
% mean_result = 1- mean_result;
% mean_result(1,14) = 0.00104999999999997;
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
semilogy(mean_result_10_, '-o','linewidth',2);
hold on
semilogy(mean_result_0, '-r^','linewidth',2);
hold on
semilogy(mean_result_10, '-md','linewidth',2);
hold on
semilogy(mean_result_20, '-ks','linewidth',2);
hold on
semilogy(mean_result_30, '-gp','linewidth',2);
legend('SNR=-10dB','SNR=0dB','SNR=10dB','SNR=20dB','SNR=30dB');

% grid on
xlabel('Channel numbers');
ylabel('BER');

figure(2)
plot(mean_result_10_, '-o','linewidth',2)
hold on
plot(mean_result_0, '-r^','linewidth',2)
hold on
plot(mean_result_10, '-md','linewidth',2)
hold on
plot(mean_result_20, '-ks','linewidth',2)
hold on
plot(mean_result_30, '-gp','linewidth',2)
legend('SNR=-10dB','SNR=0dB','SNR=10dB','SNR=20dB','SNR=30dB');

% grid on
xlabel('Channel numbers');
ylabel('BER');

figure(3)
plot(success_ratio_10_, '-o','linewidth',2)
hold on
plot(success_ratio_0, '-r^','linewidth',2)
hold on
plot(success_ratio_10, '-md','linewidth',2)
hold on
plot(success_ratio_20, '-ks','linewidth',2)
hold on
plot(success_ratio_30, '-g','linewidth',2)
legend('SNR=-10dB','SNR=0dB','SNR=10dB','SNR=20dB','SNR=30dB');

% grid on
xlabel('Channel numbers');
ylabel('Success Ratio');