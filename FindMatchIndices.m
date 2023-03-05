% this function Compares two non-empty 1D arrays and returns a list of 
% index positions from array one of any values that also appear in array 2. 
%author: Hosea Tong-Ho
function[ArrayMatches]=FindMatchIndices(Array1,Array2)
%Sets default output to empty double array
ArrayMatches=[];
a=1;
%nested for loops for every index of Array1 and Array2
for i=1:length(Array1)
    for j=1:length(Array2)
        %if the element of array 1 appears in array 2 it stores index of
        %the element in array 1 that matched into the output and breaks the
        %function to skip to the next element in array 1
        if Array1(i)==Array2(j)
            ArrayMatches(a)=i;
            a=a+1;
            break
        end
    end
end

end

