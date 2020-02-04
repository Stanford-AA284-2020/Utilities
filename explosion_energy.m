function [brode, isent, isoth, avail] = explosion_energy(Pt, Pa, V, gam)
% Estimates of Explosive Energy from gas expansion    

    % Brode's Method (Brode 1959)
    brode = (Pt - Pa)*V/(gam-1);
    % Isentropic Method (Smith & Ness 1987)
    isent = (Pt*V/(gam-1))*(1 - (Pa/Pt)^((gam-1)/gam));
    % Isothermal Method (Smith & Ness 1987)
    isoth = Pt*V*log(Pt/Pa);
    % Thermodynamic Availability (Crowl 1992)
    avail = Pt*V*(log(Pt/Pa) - (1 - Pa/Pt));
end