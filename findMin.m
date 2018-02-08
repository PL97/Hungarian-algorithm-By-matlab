function min = findMin(c, subscript)
     min = inf;
     for i = 1:length(subscript)
         if c(subscript(i)) < min
             min = c(subscript(i));
         end
     end