%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Demo for the relationship of BER and 
%    inputSNR based on MWC       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear,close all
channel_nums = 50;
BER_inputSNR_result = [];
for inputSNR = -20:2:50
    temp_BER_inputSNR_result = [];
    for i=1:1:100
            count = BER_inputSNR(channel_nums,inputSNR);
            temp_BER_inputSNR_result = [temp_BER_inputSNR_result;count];
    end
    BER_inputSNR_result = [BER_inputSNR_result temp_BER_inputSNR_result];
end

save BER_inputSNR(50)