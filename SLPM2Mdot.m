function mdot = SLPM2Mdot(m,SLPM)
% SLPM2Mdot
% Convert SLPM Volumetric flow rate to mass flow rate
    
    P = 1e5;% Pa
    R = 8314.46;% J/kmol K, Gas Constant
    T = 273;% K
%     m = 16.043;% kg/kmol, Methane
    
    rho = P/(R/m*T);% kg/m^3
    mdot = rho*SLPM*0.001/60;% kg/s
end