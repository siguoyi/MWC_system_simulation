clear,close all;
BER_channel_data = load('BER_channel.mat');
result = BER_channel_data.BER_channel_result;
result = result/32;
mean_result = mean(result);
mean_result = 1- mean_result;
mean_result(1,14) = 0.00104999999999997;

success_count = [];
for i=1:size(result,2)
    A = find(result(:,i)>0.999);
   temp_count = length(find(A>0));
   success_count = [success_count temp_count];
end

success_ratio = success_count/100;

figure(1)
semilogy(mean_result, '-o','linewidth',2);
% grid on
xlabel('Channel numbers');
ylabel('BER');

figure(2)
plot(mean_result, '-o','linewidth',2)
% grid on
xlabel('Channel numbers');
ylabel('BER');

figure(3)
plot(success_ratio, '-o','linewidth',2)
% grid on
xlabel('Channel numbers');
ylabel('Success Ratio');

% % semilogy(mean_result, '-o','linewidth',2)
% plot(mean_result, '-o','linewidth',2)
% % set(gca,'xticklabel',get(gca,'xTick')*5-15);
% grid on
% xlabel('Channel numbers');
% ylabel('BER');