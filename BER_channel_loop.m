%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Demo for the relationship of BER and 
%    channel numbers based on MWC       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear,close all
inputSNR = 0;
BER_channel_result = [];
for channel_nums = 1:1:50
    temp_BER_channel_result = [];
    for i=1:1:100
        iterNum = 100*(channel_nums-1)+i
            count = BER_channel(channel_nums, inputSNR);
            temp_BER_channel_result = [temp_BER_channel_result;count];
    end
    BER_channel_result = [BER_channel_result temp_BER_channel_result];
end

save BER_channel(0);
xlswrite('BER_channel(0).xlsx',BER_channel_result);
