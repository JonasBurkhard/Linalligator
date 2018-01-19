function [ Vr ] = RZGDP(Pog,Vg,Pn,Print)
%Rechtwinklige Zu Gereade Durch Punkt
%   Gibt den Richtungsvektor Vr aus, welcher rechtwinklig auf die Gerade
%   (Fusspunkit Pog und Richtungsvektor Vg) steht und durch den gegebenen
%   Punkt (Pn) verläuft.

%berechnung

Vr=Pog-Pn+(dot((Pn-Pog),Vg)/(dot(Vg,Vg)))*Vg;

% check if print variable is in
if (exist('Print', 'var'))
    Print = true;
else
    Print = false;
end

% if needed print the resuts
if Print == true
fprintf('ans = Richtungsvektor der Rechtwinkligen zur Gerade durch den Punkt %f verlaeuft\n',Pn);
end

end

