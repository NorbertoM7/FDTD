% -------------------------------------------------------------------------
% Project Name: 3D FDTD
% Filename: Initialize_FFTKernel.m
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

function [kernel] = Initialize_FFTKernel(dt, FREQ)
    % Constants - Level 1
    kernel = exp(-1i*2*pi*dt*FREQ);
end