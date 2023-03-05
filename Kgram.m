%this function Take a string and divide it into a sequence of k-grams, 
% where each element is k characters long
%author Hosea Tong-Ho
function[CellArray]=Kgram(kValue,String)
%if kValue is larger  than the string return a 1x1 cell array of the string
if kValue>length(String)
    CellArray={String};
    return
end
%calculates number of Kgrams to stores as a variable
NumberKGrams=length(String)-kValue+1;
%creates an empty cell of doubles to store the Kgrams in
CellArray{NumberKGrams}=double('');
i=1;
%repeats a number of times to fill the Cell array 
for j=1:NumberKGrams
    %goes through the cell array 1 increasing increments of 1 element and
    %stores a 5 character long string in each cell 
    CellArray{i}=String(i:kValue);
    i=i+1;
    kValue=kValue+1;
end
end

