% -------------------------------------------------------------------------
% Project Name: 3D FDTD
% Filename: Update_DField.m
% Author: Norberto M.
% © 2024 Norberto M. All rights reserved.
% 
% Description:
% 3D Finite-Difference Time-Domain Electromagnetic Simulator
% 
% Disclaimer:
% This code is provided "as-is" without any warranties, express or implied. 
% The author is not liable for any damages or losses arising from its use.
%
% If you use this code in your research, publication, or project, please 
% attribute it to Norberto M.
% -------------------------------------------------------------------------

function [Dx, Dy, Dz] = Update_DField(Dx, Dy, Dz, CHx, CHy, CHz, Ni, Nj, Nk, c0, dt, source)
    Dx = ((c0*dt)/1).*CHx + Dx; 
    Dy = ((c0*dt)/1).*CHy + Dy;
    Dz = ((c0*dt)/1).*CHz + Dz; Dz(35,35,35) = Dz(35,35,35) + source; 
end