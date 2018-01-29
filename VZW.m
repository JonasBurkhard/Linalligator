function [ AngRad ] = VZW( V1,V2,Print)
%VektorenZwischenWinkel
%   berechnet den Winkel zwischen zwei gegebenen Vektoren (V1 und V2 in
%   Spaltenvektorenform) und gibt den Winkel in Rad aus.

% calculate the angle
AngRad = acos((dot(V1,V2))/(norm(V1)*norm(V2)));
AngGrad = acosd((dot(V1,V2))/(norm(V1)*norm(V2)));

% check if print variable is in
if (exist('Print', 'var'))
    % if needed print the results
    fprintf('%f Zwischenwinkel in grad \n%f Zwischenwinkel in radiant \n',AngGrad,AngRad);
end

end
