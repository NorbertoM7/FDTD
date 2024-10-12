% -------------------------------------------------------------------------
% Project Name: 3D FDTD
% Filename: Update_Source.m
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

function [source] = Update_Source(n, tau, T, Ni, Nj, Nk)
%% Gaussian
    source = exp(-(((n*tau)-T)/tau).^2);
%% Sinusoid
%     source = 0.5*sin(10*pi*3e9*T);
%% Chirp
%     source = sin(2*pi*T*(1e9+.1e9*(1e9*T)));
%% DC
%     source = 1;
end