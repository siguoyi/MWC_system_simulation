function [ mean_result,success_ratio ] = data_process( data )
%DATA_PROCESS Summary of this function goes here
%   Detailed explanation goes here

result = data/32;
mean_result = mean(result);
mean_result = 1- mean_result;

success_count = [];
for i=1:size(result,2)
    A = find(result(:,i)>0.999);
   temp_count = length(find(A>0));
   success_count = [success_count temp_count];
end

success_ratio = success_count/100;
end

