% -------------------------------------------------------------------------
% Project Name: 3D FDTD
% Filename: Main.m
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

%% Memory Refresh
clc;clear;close all;
tic

%% Initializations
    load("Blank_Model_and_Initialized_parameters.mat");                                                                     fprintf('Initializing physical constants...')
    [c0, u0, e0]                            = Initialize_PhysicalConstants();                                               fprintf(' [%4.2f]\n',toc); tic; fprintf('Initializing ports...')
    [S11_record, S21_record, nsrc, tau, n]  = Initialize_Ports();                                                           fprintf(' [%4.2f]\n',toc); tic; fprintf('Initializing plot parameters...')
    [plot_step, Ymax_S, Ymin_S]             = Initialize_PlotParameters();                                                  fprintf(' [%4.2f]\n',toc); tic; fprintf('Initializing FTT parameters...')
    [REF, TRN, SRC, FREQ,FMAX]              = Initialize_FFTParameters();                                                   fprintf(' [%4.2f]\n',toc); tic; fprintf('Establishing Courant Stability...\n');
    [dt]                                    = Establish_CourantStability(dx,dy,dz,c0);                                      fprintf(' [%4.2f]\n',toc); tic; fprintf('Initializing FFT Kernel...')
    [kernel]                                = Initialize_FFTKernel(dt, FREQ);                                               fprintf(' [%4.2f]\n',toc); tic; fprintf('Initializing Field Parameters...')
    fig1 = figure;

%% Main FDTD Loop
    for T = 1:70
                                                                                                                            fprintf('T = %4.2f\n', T);
                                                                                                                            fprintf('Calculate physical time...'); tic;
        t                                   = dt*T;                                                                         fprintf(' [%4.2f]\n',toc); tic; fprintf('Updating Source...');
        source                              = Update_Source(n, tau, t, Ni, Nj, Nk);                                         fprintf(' [%4.2f]\n',toc); tic; fprintf('Updating the curl of E...');
        [CEx,CEy,CEz]                       = Update_CurlE(Ex, Ey, Ez, dx, dy, dz, Ni, Nj, Nk);                             fprintf(' [%4.2f]\n',toc); tic; fprintf('Updating H field...');
        [Hx,Hy,Hz]                          = Update_HField(Hx, Hy, Hz,CEx, CEy, CEz, Ni, Nj, Nk, c0, uxx, uyy, uzz, dt);   fprintf(' [%4.2f]\n',toc); tic; fprintf('Updating the curl of H...');
        [CHx,CHy,CHz]                       = Update_CurlH(Hx, Hy, Hz, dx, dy, dz, Ni, Nj, Nk);                             fprintf(' [%4.2f]\n',toc); tic; fprintf('Updating D field...')
        [Dx, Dy, Dz]                        = Update_DField(Dx, Dy, Dz, CHx, CHy, CHz, Ni, Nj, Nk, c0, dt, source);         fprintf(' [%4.2f]\n',toc); tic; fprintf('Updating E field...')
        [Ex, Ey, Ez]                        = Update_EField(Ex, Ey, Ez, Dx, Dy, Dz, exx, eyy, ezz);                         fprintf(' [%4.2f]\n',toc); tic; fprintf('Display Slice...')
                                              Display_FDTD_Slice(Ex, Ey, Ez, Hx, Hy, Hz, T, round(Nk/2), 'z',fig1); drawnow;fprintf(' [%4.2f]\n',toc); tic; fprintf('End Cycle...'); 
                                                                                                                            fprintf(' \n\n');  
    end
   