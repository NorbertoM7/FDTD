% -------------------------------------------------------------------------
% Project Name: 3D FDTD
% Filename: Establish_CourantStability.m
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

function dt = Establish_CourantStability(dx, dy, dz, c0)
    % Define time step according to the Courant condition for 3D FDTD
    dt = 1 / (c0 * sqrt((1/dx)^2 + (1/dy)^2 + (1/dz)^2));

end
