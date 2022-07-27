function distance = get_distance(City1,City2)

[Number Text All] = xlsread('Distances');


for m = 2:size(All,1)
   
   G(1,m) =  isequal(City1,All{m,1});
    
end

for m = 2:size(All,1)
   
   K(1,m) =  isequal(City2,All{1,m});
    
end
 

if sum(G) == 1 && sum(K) == 1
    for i = 2:size(All,1)
   
        if isequal(City1,All{i,1}) == 1
      
            break
       
        end
    
    
    end

    for j = 2:size(All,2)
   
        if isequal(City2,All{1,j}) == 1
      
            break
       
        end
    
    
    end

    distance = Number(i-1,j-1);
else
    distance = -1;
end










end

