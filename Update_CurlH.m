% -------------------------------------------------------------------------
% Project Name: 3D FDTD
% Filename: Update_CurlH.m
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

function [CHx, CHy, CHz] = Update_CurlH(Hx, Hy, Hz, dx, dy, dz, Ni, Nj, Nk)
    CHxz(:      ,2:Nj   ,:)     = ((Hz(:    ,2:Nj   ,:)     - Hz(:      ,1:Nj-1 ,:))        /dy);  CHxz(:   ,1  ,:) = ((Hz(:    ,1  ,:) - 0)/dy);
    CHxy(:      ,:      ,2:Nk)  = ((Hy(:    ,:      ,2:Nk)  - Hy(:      ,:      ,1:Nk-1))   /dz);  CHxy(:   ,:  ,1) = ((Hy(:    ,:  ,1) - 0)/dz);
    CHyx(:      ,:      ,2:Nk)  = ((Hx(:    ,:      ,2:Nk)  - Hx(:      ,:      ,1:Nk-1))   /dz);  CHyx(:   ,:  ,1) = ((Hx(:    ,:  ,1) - 0)/dz); 
    CHyz(2:Ni   ,:      ,:)     = ((Hz(2:Ni ,:      ,:)     - Hz(1:Ni-1 ,:      ,:))        /dx);  CHyz(1   ,:  ,:) = ((Hz(1    ,:  ,:) - 0)/dx);
    CHzy(2:Ni   ,:      ,:)     = ((Hy(2:Ni ,:      ,:)     - Hy(1:Ni-1 ,:      ,:))        /dx);  CHzy(1   ,:  ,:) = ((Hy(1    ,:  ,:) - 0)/dx);
    CHzx(:      ,2:Nj   ,:)     = ((Hx(:    ,2:Nj   ,:)     - Hx(:      ,1:Nj-1 ,:))        /dy);  CHzx(:   ,1  ,:) = ((Hx(:    ,1  ,:) - 0)/dy);

    CHx = CHxz - CHxy;
    CHy = CHyx - CHyz;
    CHz = CHzy - CHzx;
end