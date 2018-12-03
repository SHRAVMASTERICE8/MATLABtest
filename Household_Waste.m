function [percent, dollar, kCal] = Household_Waste(base, income, children, adults)

if income < 15000
    inclvl = 2;
elseif 15000 <= income < 30000
    inclvl = 3;
elseif 30000 <= income < 40000
    inclvl = 4;
elseif 40000 <= income < 50000
    inclvl = 5;
elseif 50000 <= income < 70000
    inclvl = 6;
elseif 70000 <= income < 100000
    inclvl = 7;
elseif 100000 <= income < 150000
    inclvl = 8;
elseif 150000 <= income < 200000
    inclvl = 9;
elseif 200000 <= income
    inclvl = 10;
end
   
end

