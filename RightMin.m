%Finds the value and position of the rightmost minimum in an array of values.
%author: Hosea Tong-Ho
function[value,position]=RightMin(Array)
%sets starting output, i values and position and store as variables
i=1;
value=Array(1);
position=1;

%uses while loop to loop through every index in the array
while i+1<=length(Array)
    %if the current value is larger than the next value set the next value
    %as value output and set next position as position output
    if value>=Array(i+1)
        value=Array(i+1);
        position=i+1;
        %increase i by 1
        i=i+1;
        %if the value is smaller than the next value then skip pass it and
        %increase i by 1
    else
        i=i+1;
    end
end
       
end
