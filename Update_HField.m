% -------------------------------------------------------------------------
% Project Name: 3D FDTD
% Filename: Update_HField.m
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

function [Hx, Hy, Hz] = Update_HField (Hx, Hy, Hz, CEx, CEy, CEz, Ni, Nj, Nk, c0, uxx, uyy, uzz, dt) 
    Hx = ((c0*dt)./uxx).*CEx + Hx;
    Hy = ((c0*dt)./uyy).*CEy + Hy;
    Hz = ((c0*dt)./uzz).*CEz + Hz;
end