function [Vw] = WH(V1,V2,Print)
%WinkelHalbierende
%   Berechnet die winkelhalbierende zweier gegebenen Vektoren
%   (V1 und V2 als Spaltenvektor) und gibt die Richtung der
%   Winkelhalbierenden (Vw als Spaltenvektor) aus.

%einheitsvektoren berechnen
Ve1=V1/norm(V1);
Ve2=V2/norm(V2);

%einheitsvektor winkelhalbierende
Vw=Ve1+(Ve2-Ve1)/2;

% check if print variable is in
if (exist('Print', 'var'))
    % if needed print the results
    fprintf('ans = Einheitsvektor der Winkelhalbierenden');
end

end
