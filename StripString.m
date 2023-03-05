%This function Strips out whitespace and other unprintable characters, plus
%convert all uppercase characters to lowercase.
%author Hosea

function[Array]= StripString(String)
%turns the string into its doubles(ASCII values)
Array=double(String);
i=1;
%use while loop to go through every element of the string array
while i<=length(Array)
    %if the ASCII values of each character is outside the range 33 to 126
    %inclusive removeit from the array
    if Array(i)<33||Array(i)>126
        Array=[Array(1:i-1),Array(i+1:length(Array))];
        i=i-1;
    end
    i=i+1;
end
%turns the doubles back into characters and turns all upper cases into
%lower cases
Array=lower(char(Array));
%if the array is empty turn it into a 0x0 char empty
if isempty(Array)
    Array='';
end
end
