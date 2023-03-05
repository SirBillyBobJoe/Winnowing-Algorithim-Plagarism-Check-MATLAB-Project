% %Takes a set of windows (in the form of a 2D array) and calculates a document
% fingerprint using the winnowing algorithm (i.e., we select the rightmost minimum from
% each window). It will return the document fingerprint as a 2D array in which each
% column contains a winnowed value and its corresponding position.
%Author Hosea Tong-Ho

function[FingerprintOutput]=Fingerprint(Windows)
%determines Number of rows and stores as a variable
WindowRows=size(Windows,1);
OldPosition=-1;
b=1;
%for command loops through every row to determine the fingerprints
for i=1:WindowRows
    %stores each row as an array
    a=Windows(i,:);
    %Calls RightMin function to determine the rightside most smallest value
    %and its position and stores as variables
    [Value, Position]=RightMin(a);
    %if the position is not less than 1 than the old position
    % (meaning its a new number) then we store it in the fingerprint
    if Position~=OldPosition-1
        %determines the actual position and stores it in the fingerprint
        ActualPosition=i+Position-1;
        FingerprintOutput(1,b)=Value;
        FingerprintOutput(2,b)=ActualPosition;
        b=b+1;
    end
    %sets the current position to the old position for the next loop
    OldPosition=Position;
end
end


