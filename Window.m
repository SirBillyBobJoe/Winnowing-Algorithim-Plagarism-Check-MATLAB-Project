%Takes a sequence of integer values and creates a 2D array of windows 
% for a specified window size w.
%author Hosea Tong-Ho
function[OutputArray]=Window(WindowSize,Array)
%calculates number of rows and stores as a variable
NumberOfRows=length(Array)-WindowSize+1;
%if the window size is greater than the array length then output will just
%be the array
if WindowSize>length(Array)
    OutputArray=Array;
    return
end
a=1;
%preallocate the 2d array to save memory 
OutputArray=zeros(NumberOfRows,WindowSize);
%loops through and sets a value for each row and column in the window
for i=1:NumberOfRows
    c=a;
    %for each row loops through the array input in increments of the window
    %size and restarts and then adds 1
    for j=1:WindowSize
        OutputArray(i,j)=Array(c);
        c=c+1;
    end
    a=a+1;
end
end


