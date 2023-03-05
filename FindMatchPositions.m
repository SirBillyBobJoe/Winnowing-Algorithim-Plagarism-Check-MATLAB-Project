% %Compare two fingerprints and determine
% 1) which positions in fingerprint 1 have a value that is also found in string 2.
% 2) which positions in fingerprint 2 have a value that is also found in string 1.
%author: Hosea Tong-Ho
function[Match1,Match2]=FindMatchPositions(FingerPrint1,FingerPrint2)
%sets outputs to empty arrays
Match1=[];
Match2=[];
%takes the first row of the fingerprints and store as a variable
Array1=FingerPrint1(1,:);
Array2=FingerPrint2(1,:);
%call FindMatchIndices to check the the position for which they match
Index1Match=FindMatchIndices(Array1,Array2);
Index2Match=FindMatchIndices(Array2,Array1);

%loops through the index of each match for each fingerprint and then
%stores the position of each match in the output
for i=1:length(Index1Match)
    Match1=[Match1,FingerPrint1(2,Index1Match(i))];
end
for j=1:length(Index2Match)
    Match2=[Match2,FingerPrint2(2,Index2Match(j))];
end
end

