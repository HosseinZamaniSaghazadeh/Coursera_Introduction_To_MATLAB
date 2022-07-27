function valid = valid_date(year, month, day)
if ~isscalar(year) || year < 1 || year ~= fix(year) || ~isscalar(month) || month < 1 || month ~= fix(month) || ~isscalar(day) || day < 1 || day ~= fix(day)
    valid = false;
else
    a = year/4;
    b = year/100;
    c = year/400;

    if a == fix(a) && b ~= fix(b) || c == fix(c)
        if month == 1 && day <= 31
            valid = true;
        elseif month == 2 && day <= 29
            valid = true;
        elseif month == 3 && day <= 31
            valid = true;
        elseif month == 4 && day <= 30
            valid = true;
        elseif month == 5 && day <= 31
            valid = true;
        elseif month == 6 && day <= 30
            valid = true;
        elseif month == 7 && day <= 31
            valid = true;
        elseif month == 8 && day <= 31
            valid = true;
        elseif month == 9 && day <= 30
            valid = true;
        elseif month == 10 && day <= 31
            valid = true;
        elseif month == 11 && day <= 30
            valid = true;
        elseif month == 12 && day <= 31
            valid = true;
        else
            valid = false;
        end

    else 
        if month == 1 && day <= 31
            valid = true;
        elseif month == 2 && day <= 28
            valid = true;
        elseif month == 3 && day <= 31
            valid = true;
        elseif month == 4 && day <= 30
            valid = true;
        elseif month == 5 && day <= 31
            valid = true;
        elseif month == 6 && day <= 30
            valid = true;
        elseif month == 7 && day <= 31
            valid = true;
        elseif month == 8 && day <= 31
            valid = true;
        elseif month == 9 && day <= 30
            valid = true;
        elseif month == 10 && day <= 31
            valid = true;
        elseif month == 11 && day <= 30
            valid = true;
        elseif month == 12 && day <= 31
            valid = true;
        else
            valid = false;
        end
    end
end


end