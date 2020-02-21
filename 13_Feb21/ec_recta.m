function [s,m,b] = ec_recta(p1,p2)
% función que genera pendiente y punto de cruce dados 
%   dos puntos (x,y)
% forma y = mx+b
s = 0; m = 0; b = 0;
dx = p2(1)-p1(1);
dy = p2(2)-p1(2);
if dx ~= 0
    m = dy/dx;
    % b = y - mx
    b = p2(2) - m*p2(1);
    s = 1;
end

end

