function indices = saddle(M)

    BB = {};
    CC = {};
    k = 1;
    kk = 1;

    for i = 1:1:size(M,1)

       for j = 1:1:size(M,2)

          if M(i,j) >= max(M(i,:))

             m = i;
             n = j;
             B = [m n];
             BB{1,k} = B;
             BBB{1,k} = num2str(BB{1,k});
             k = k+1;

          end

       end


    end

    for i = 1:1:size(M,1)

       for j = 1:1:size(M,2)

          if M(i,j) <= min(M(:,j))

             m = i;
             n = j;
             C = [m n];
             CC{1,kk} = C;
             CCC{1,kk} = num2str(CC{1,kk});
             kk = kk+1;

          end

       end


    end

    G = intersect(BBB,CCC);
    if size(G,2) == 0

        indices = [];
        return

    else
        for i = 1:1:size(G,2)

            GG = cell2mat(G(1,i));
            GGG = str2num(GG);
            GGGG{1,i} = GGG;
        end


        for l = 1:size(GGGG,2)

            indices(l,1) = GGGG{1,l}(1,1);
            indices(l,2) = GGGG{1,l}(1,2);

        end
    end

end