function charnum = char_counter(fname,character)

    fid = fopen(fname,'rt');

    if fid < 0 || ischar(character) == 0

       charnum = -1;
       return

    end

    oneline = fgets(fid);
    k = 1;

    if fid > 0

        while ischar(oneline)

            g = strlength(oneline);
            h = [];

            for i = 1:g

                h(1,i) = isequal(character,oneline(i));

            end    

        Number(1,k) = sum(h);
        oneline = fgets(fid);
        k = k + 1;

        end
    charnum = sum(Number);

    end
end