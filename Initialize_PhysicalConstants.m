% -------------------------------------------------------------------------
% Project Name: 3D FDTD
% Filename: Initialize_PhysicalConstants.m
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
function [c0, u0, e0] = Initialize_PhysicalConstants()
    c0 = 299792458;
    u0 = 4*pi*1e-7;
    e0 = 8.85418782e-12;
end