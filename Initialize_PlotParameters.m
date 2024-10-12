% -------------------------------------------------------------------------
% Project Name: 3D FDTD
% Filename: Initialize_PlotParameters.m
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

function [plot_step, Ymax_S, Ymin_S] = Initialize_PlotParameters()
    plot_step = 50;     % control plots draw per time. Higher reduces simulation time.

    % windowing
    Ymax_S = 10;
    Ymin_S = -60;
end