% Coefficients for filter A
num_A = [1/2, 0,0, 1/2];
den_A = 1;

% Coefficients for filter B
num_B = [36, 0, 0, 0, 0, 0, -72, 0, 0, 0, 0, 0, 36];
den_B = [1, -2, 1];

% Create filter objects
filter_A = dfilt.df1(num_A, den_A);
filter_B = dfilt.df1(num_B, den_B);

% Frequency response and group delay using fvtool
fvtool(filter_A ,'Fs', 1000, 'FrequencyVector', frequency_vector);
fvtool(filter_B ,'Fs', 1000, 'FrequencyVector', frequency_vector);
% To get the numerical values of group delays
groupDelay_A = grpdelay(filter_A, frequency_vector, 1000);
groupDelay_B = grpdelay(filter_B, frequency_vector, 1000);

% Display group delays
disp('Group Delay for Filter A:');
disp(groupDelay_A);
disp('Group Delay for Filter B:');
disp(groupDelay_B);


