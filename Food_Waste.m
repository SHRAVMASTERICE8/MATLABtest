
% ???

function [percent, dollar, kCal] = Food_Waste(mat)

% FLoss, or Food Loss, describes the percentage of food produced in certain
% categories that is lost during the production, harvesting, processing,
% distribution, and consumption of that resource. 

FLoss = [[0.0200    0.0200    0.0500    0.0200    0.2700];
    [0.2000    0.1000    0.1500    0.0700    0.3000];
    [0.1200         0    0.0500    0.0100    0.0400];
    [0.2000    0.0400    0.0200    0.1200    0.2800];
    [0.0350    0.0100    0.0500    0.0400    0.1100];
    [0.1200    0.0050    0.0600    0.0900    0.3300];
    [0.0350    0.0050    0.0120    0.0050    0.1500];];

% The stages of production were not seen as important, so the total waste
% produced per resource was calculated. 

FLoss(:, 6) = sum(FLoss(:, :), 2);

% After importing a table of values regarding the categorical food
% production of a given area, it is converted to a matrix to make it easier
% to work with. For the program shown, data must be formatted very 
% specifically before being imported. 

Stats_Array = table2array(mat);

% The percent of production for the region allocated towards each food
% category is calculated and added to the Food Loss matrix. 

Percents = [sum(str2double(Stats_Array(5:9, 4))); 
    sum(str2double(Stats_Array(11:12, 4))); 
    sum(str2double(Stats_Array(14:17, 4))); 
    sum(str2double(Stats_Array(19:36, 4))); 
    sum(str2double(Stats_Array(38:44, 4))); 
    sum(str2double(Stats_Array(46, 4))); 
    sum(str2double(Stats_Array(48, 4)))];

FLoss(:, 7) = Percents;

% The total percentage of food wasted by the region is calculated, then
% outputted as a percentage, dollar amount, and Calorie amount. 

FLoss(:, 8) = FLoss(:, 6).*FLoss(:, 7)/100;

Avg_Cost_per_Calorie = 0.0062754872; % Calculation not shown here. 

percent = sum(FLoss(:, 8))
dollar = str2double(Stats_Array(1, 3)) * percent
kCal = dollar/Avg_Cost_per_Calorie

end
