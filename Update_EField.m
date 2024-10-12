% -------------------------------------------------------------------------
% Project Name: 3D FDTD
% Filename: Update_EField.m
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

function [Ex, Ey, Ez] = Update_EField (Ex, Ey, Ez, Dx, Dy, Dz, exx, eyy, ezz)
    Ex = (1./exx).*Dx;
    Ey = (1./eyy).*Dy;
    Ez = (1./ezz).*Dz;

end