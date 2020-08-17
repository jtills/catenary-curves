%Mechanical Engineering Skills 2 - Programming in MATLAB
%Assessment 02 : Catenary Curves
%Script to Calculate Free Hanging Cable (Part a) 
%2388925S
%29th December, 2019

%Clears Workspace and Command Window
clear;
clc;

%Asks user for Radians and level of precision in cosh(x) function
B = input('Enter the desired value for Beta in radians for cosh(x): ');
p = input('Enter the desired level of precision: ');

x=2; %Starts indexing at x = 2
sum = 1; %For the first loop sum is 0
sumindex(1) = 1; %Defines sumindex(x-1) for first loop

%Cycles through values of k from 0 to 100 
for k = 1 : 100 
    %Function for cosh and definition of sumindex
    sum = (((B).^(2*k))/(factorial(2*k))) + sum;
    sumindex(x) = sum;
        %If the difference between the last two terms is less than or equal
        %to the required precision, print the answer and exit the loops
        if (sumindex(x) - sumindex(x-1)) <= p 
            fprintf('The value for cosh(%4.2f) is %7.2f',B ,sumindex(x));  
            return;
        end
x = x + 1; %increases index value by 1 integer before cycle begins anew
end