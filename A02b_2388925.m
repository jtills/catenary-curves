%Mechanical Engineering Skills 2 - Programming in MATLAB
%Assessment 02 : Catenary Curves
%Script to Calculate Free Hanging Cable (Part b) 
%2388925S
%29th December, 2019

%Clears Workspace and Command Window
clear;
clc;

%1: INPUTS AND INPUT CHECKS

%Asks for start and end points of 
x1 = input('Enter the starting point of x: ');
x2 = input('Enter the end point of x: ');

%Checks that start point is less than end point and asks for new values
%while untrue
while x1 >= x2 
    fprintf('\nYour starting point of x must be smaller than your end point for x!\nTry again:\n\n ');
    x1 = input('Enter a new starting point of x: ');
    x2 = input('Enter a new end point of x: ');
end 

%Asks for an increment for x
x12 = input('Enter an increment for x: ');

%Checks that increment is less than the range of x and asks for new
%increment while untrue
while x12 > (x2-x1) 
    fprintf('\nThis increment of x is greater than the range of x!\n\n');
    x12 = input('Enter a new increment for x: ');
end

%Asks for start point of a 
a1 = input('\nEnter the starting point of a: ');

%Checks that start point of a is positive and gives general warning while
%untrue
while a1 <= 0
    fprintf('\nYour a values must be greater than 0!\nTry again.\n\n')
    a1 = input('Enter a new starting point for a: ');
end

%Asks for end point of a 
a2 = input('Enter the end point of a: ');

%Checks that start point is less than end point and asks for new values
%while untrue
while a1 >= a2 
    fprintf('\nYour end point of a must be larger than your starting point for a!\nTry again.\n\n');
    a2 = input('Enter a new end point of a: ');
end 

%Asks for increment of a
a12 = input('Enter an increment for a: ');

%Checks that increment is less than the range of a and asks for new
%increment while untrue
while a12 > (a2-a1)
    fprintf('\nThis increment of a is greater than the range of a!\n\n');
    a12 = input('Enter a new increment for a: ');
end

%2: DEFINES VARIABLES

%Defines range of x and starting sum 
x = x1:x12:x2;
sum = 0;

%3: FUNCTION FOR LOOP AND PLOT 

%Saves all plots for each value of a
hold on

%Runs through values of a
for a = a1:a12:a2
        %Runs through Taylor Series where n = 100 
        for n = 0 : 100
            %compute the cosh summation varying with each a
            %for the fixed range of x 
            sum = (((x/a).^(2*n))/(factorial(2*n))) + sum;
        end
        
%Defines y and plots function
y = a*sum;

%Defines legend text and functions of a
txt = ['a = ',num2str(a)];
plot(x,y,'DisplayName',txt);

%Resets sum for next loop
sum = 0;  

end

hold off 

%4: LABELING and LEGEND

%Labels the plot and displays legend
xlabel('position(x)'); %xaxis
ylabel('amplitude(y)'); %yaxis
title('Catenary Curves'); %title
legend show

