% -------------------------------------------------------------------------
% Project Name: 3D FDTD
% Filename: Initialize_FFTParameters.m
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

function [REF, TRN, SRC, FREQ, FMAX] = Initialize_FFTParameters(dt)
    % Constants - Level 1
    NFREQ = 1000;       % # of frequency points measured
    FMAX = 4e9;        % Maximum frequency to record
    
    % Constants - Level 2
    FREQ = linspace(0,FMAX,NFREQ);
    REF = zeros(1,NFREQ);
    TRN = zeros(1,NFREQ);
    SRC = zeros(1,NFREQ);
end