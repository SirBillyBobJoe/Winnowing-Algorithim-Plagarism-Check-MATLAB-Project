%Calculates the hash31 value for every string stored in a cell array to generate a
%sequence of hashed values (which will be integers).
%Author Hosea Tong-Ho
function[OutputArray]=HashList(InputCell)
%preallocate the output to a array of zeros to save memory
OutputArray=zeros(1,length(InputCell));
a=1;
%goes throough the entire input Cell and turns each string into a hash
%value and returns it as a array of numbers
for i=1:length(InputCell)
    OutputArray(a)=Hash31(InputCell{a});
    a=a+1;
end
end


