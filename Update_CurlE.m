% -------------------------------------------------------------------------
% Project Name: 3D FDTD
% Filename: Update_CurlE.m
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

function [CEx, CEy, CEz] = Update_CurlE(Ex, Ey, Ez, dx, dy, dz, Ni, Nj, Nk)
        CExz(:      ,1:Nj-1 ,:)         = ((Ez(:        ,2:Nj   ,:)     - Ez(:      ,1:Nj-1 ,:))        /dy);        CExz(:,Nj,:) = ((0 - Ez(:,Nj,:))/dy);
        CExy(:      ,:      ,1:Nk-1)    = ((Ey(:        ,:      ,2:Nk)  - Ey(:      ,:      ,1:Nk-1))   /dz);        CExy(:,:,Nk) = ((0 - Ey(:,:,Nk))/dz);
        CEyx(:      ,:      ,1:Nk-1)    = ((Ex(:        ,:      ,2:Nk)  - Ex(:      ,:      ,1:Nk-1))   /dz);        CEyx(:,:,Nk) = ((0 - Ex(:,:,Nk))/dz);
        CEyz(1:Ni-1 ,:      ,:)         = ((Ez(2:Ni     ,:      ,:)     - Ez(1:Ni-1 ,:      ,:))        /dx);        CEyz(Ni,:,:) = ((0 - Ez(Ni,:,:))/dx);
        CEzy(1:Ni-1 ,:      ,:)         = ((Ey(2:Ni     ,:      ,:)     - Ey(1:Ni-1 ,:      ,:))        /dx);        CEzy(Ni,:,:) = ((0 - Ey(Ni,:,:))/dx);
        CEzx(:      ,1:Nj-1,:)          = ((Ex(:        ,2:Nj   ,:)     - Ex(:      ,1:Nj-1 ,:))        /dy);        CEzx(:,Nj,:) = ((0 - Ex(:,Nj,:))/dy);
    
    
        CEx = CExz - CExy;
        CEy = CEyx - CEyz;
        CEz = CEzy - CEzx;
end
