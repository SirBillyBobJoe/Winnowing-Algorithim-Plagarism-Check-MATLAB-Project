% The purpose of this function is to Calculates a similarity score by 
% taking a list of matched positions for a string and
% determining what proportion of characters in a string matched.
%Author:Hosea Tong-Ho
function[PercentageMatched]=SimilarityScore(Array,KValue,Length)
%Sets the Matches to an empty array
Matches=[];
%loops through the elements of the Array 
for i=1:length(Array)
    %if the difference between the length of the array and the KValue is
    %less than the element the matches will be from that element number to
    %the length number
    
    if i>Length-KValue
        Matches=[Matches,Array(i):Length];
    %Otherwise the number added to matches will be that element number plus
    %KValue-1
    else
    Matches=[Matches,Array(i):Array(i)+KValue-1];
    end
end
%sorts the matches array for axny duplicates and removes them and orders it
%in increasing order
Matches=unique(Matches,'first');
%determines the percentage matched and stores as the output of the function
PercentageMatched=length(Matches)/Length;
    
end


    
   
    
