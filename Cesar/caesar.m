function coded = caesar(A,a)

B = double(A);
for i=1:1:length(B)
   c = B(i)+a;
   d = B(i)-32+a;
   while c < 32 || c > 126
       if c > 126
           c = c - 126+31;
       elseif c < 32
           c = 127+d;
       end
       d = c-32;
   end
   B(i)=c;
end
coded = char(B);

end 