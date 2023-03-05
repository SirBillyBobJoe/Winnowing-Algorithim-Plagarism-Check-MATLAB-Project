%function calculates a hash value from an array of values
%author: Hosea Tong-Ho
function[HashValue]=Hash31(Array)
%sets output to 0 and Hashsize value and store as a variable
HashValue=0;
i=1;
HashSize=2^20;
%use while loop to loop through the array for its length until we reach the end of the array
while i<=length(Array)
    %set Hashvalue to  Array(i)+31*h
    HashValue=Array(i)+31*HashValue;
    %Sets the Hashvalue to remainder of the Hashvalue divided by HashSize
    HashValue=rem(HashValue,HashSize);
    %increase i increment by 1
    i=i+1;
end
end



