function [ Psge ] = GESP( Pog,Vg,Poe,Ne,Print)
%Gerade-Ebene-SchnittPunkt
%   Berechnet den Schnittpunkt einer Gerade (Fusspunkt Pog und
%   Richtungsvektor Vg) und einer Ebene (Punkt in der Ebene Poe und der
%   Normalen Ne)

%t einbringen
syms t

% gerade bilden
G=Pog+t*Vg;

% calculate t
t=solve(dot(G-Poe,Ne)==0,t);

% calculate intersection point

Psge=Pog+t*Vg;


% check if print variable is in
if (exist('Print', 'var'))
    Print = true;
else
    Print = false;
end

% if needed print the resuts
if Print == true
fprintf('ans = Schnittpunkt der Gerade und der Ebene');
end

end