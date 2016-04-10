function [ strike, isPut ] = extractStrikeFromTicker( ticker )
%EXTRACTSTRIKEFROMTICKER Given an option ticker, compute the strike price
a = regexp( ticker, 'C\d+', 'match');
isPut = 0;
if isempty( a )
    a = regexp( ticker, 'P\d+', 'match');
    assert( ~isempty(a ));
    isPut = 1;
end    
ret = sscanf(a{1},'%c%d');
strike = ret(2);

end

