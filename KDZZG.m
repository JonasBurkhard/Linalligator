function [Pk1,Pk2,Dist] = KDZZG(Pog1,Vg1,Pog2,Vg2,Print)
%K�rzeste Distanz Zwischen Zwei Geraden
%   Errechnet aus den beidenen gegebenen Geraden 1&2 (Fusspunkt Pog1/Pog2 und
%   Richtungsvektor Vg1/Vg2) die beiden am n�chten beieinander liegenden
%   Punkte (Pk1 (auf G1) und Pk2 (auf G2)) und die Distanz (Dist) dazwischen

%normale errechen
N=cross(Vg1,Vg2);

%Ebene 1 aufspannen
Ne1=cross(Vg1,N);

%Ebene 2 aufspannen
Ne2=cross(Vg2,N);

%Pk1 errechnen
Pk1=(GESP(Pog1,Vg1,Pog2,Ne2));

%Pk2 errchenen
Pk2=(GESP(Pog2,Vg2,Pog1,Ne1));

%Distanz errechnen
Dist=norm(Pk1-Pk2);

if Dist==0
    disp('die Geraden schneiden sich');
end

% check if print variable is in
if (exist('Print', 'var'))
    Print = true;
else
    Print = false;
end

% if needed print the resuts
if Print == true
fprintf('%f = ist der Punkt auf der Gerade1 am n�chten bei der Gerade 2 \n',Pk1);
fprintf('%f = ist der Punkt auf der Gerade2 am n�chten bei der Gerade 1 \n',Pk2);
fprintf('%f = Ist der Betrag der Distanz zwischen den beiden Punkten \n',Dist);
end

end
