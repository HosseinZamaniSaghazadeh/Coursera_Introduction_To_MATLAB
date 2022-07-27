function output = blur(img,w)

    H = [];
    for i = 1:1:size(img,1)

       for j = 1:1:size(img,2)

           if i - w > 0 

                a = w;

           end

           if i - w <= 0

                a = i - 1; 

           end

           if i + w <= size(img,1) 

                b = w;

           end

           if i + w > size(img,1)

                b = size(img,1) - i; 

           end

           if j - w > 0 

                c = w;

           end

           if j - w <= 0

                c = j - 1; 

           end

           if j + w <= size(img,2) 

                d = w;

           end

           if j + w > size(img,2)

                d = size(img,2) - j; 

           end

           B = img(i-a:i+b,j-c:j+d);
           H(i,j) = mean(B,'all');

       end


    end
     output = uint8(H);

end