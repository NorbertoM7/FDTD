% -------------------------------------------------------------------------
% Project Name: 3D FDTD
% Filename: Initialize_Ports.m
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
function [S11_record, S21_record, nsrc, tau, n] = Initialize_Ports()
    S11_record = 1;     % Record cell for S11
    S21_record = 1;     % Record cell for S21
    nsrc = 2;           % Interface cell #
    tau = 1;
    n = 1;
end