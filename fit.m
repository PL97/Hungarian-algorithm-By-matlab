function [result, all] = fit(c, dimension, left, result, all)
    if isempty(left)
        return
    end
    for i = 1:c(dimension)
        nextCandidate =c(dimension, i+1);
        if ismember(nextCandidate, left)
            result(dimension) = nextCandidate;
            %wheather or not finding the solution
            if(dimension == length(c))
                all = [all; result];
                return
            end
            [result, all] = fit(c, dimension+1, setdiff(left, nextCandidate), result, all);
         end    
    end
    