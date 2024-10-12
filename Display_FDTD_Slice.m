% -------------------------------------------------------------------------
% Project Name: 3D FDTD
% Filename: Display_FDTD_Slice.m
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

function Display_FDTD_Slice(Ex, Ey, Ez, Hx, Hy, Hz, T, sliceIndex, axisLabel, fig1)
    % Display a slice of the fields at a given slice index
    % Ex, Ey, Ez: Electric field components
    % Hx, Hy, Hz: Magnetic field components
    % sliceIndex: Index of the slice to be displayed
    % axisLabel: 'x', 'y', or 'z' - indicates along which axis the slice is taken
    % fig1: Handle to the existing figure

    % Determine the axis along which the slice is taken
    switch axisLabel
        case 'x'
            Ex_slice = squeeze(Ex(sliceIndex, :, :));
            Ey_slice = squeeze(Ey(sliceIndex, :, :));
            Ez_slice = squeeze(Ez(sliceIndex, :, :));
            Hx_slice = squeeze(Hx(sliceIndex, :, :));
            Hy_slice = squeeze(Hy(sliceIndex, :, :));
            Hz_slice = squeeze(Hz(sliceIndex, :, :));
            [Y, Z] = meshgrid(1:size(Ex, 2), 1:size(Ex, 3));
        case 'y'
            Ex_slice = squeeze(Ex(:, sliceIndex, :));
            Ey_slice = squeeze(Ey(:, sliceIndex, :));
            Ez_slice = squeeze(Ez(:, sliceIndex, :));
            Hx_slice = squeeze(Hx(:, sliceIndex, :));
            Hy_slice = squeeze(Hy(:, sliceIndex, :));
            Hz_slice = squeeze(Hz(:, sliceIndex, :));
            [X, Z] = meshgrid(1:size(Ex, 1), 1:size(Ex, 3));
        case 'z'
            Ex_slice = squeeze(Ex(:, :, sliceIndex));
            Ey_slice = squeeze(Ey(:, :, sliceIndex));
            Ez_slice = squeeze(Ez(:, :, sliceIndex));
            Hx_slice = squeeze(Hx(:, :, sliceIndex));
            Hy_slice = squeeze(Hy(:, :, sliceIndex));
            Hz_slice = squeeze(Hz(:, :, sliceIndex));
            [X, Y] = meshgrid(1:size(Ex, 1), 1:size(Ex, 2));
        otherwise
            error('Invalid axis label. Choose ''x'', ''y'', or ''z''.');
    end

    % Create a figure and display the slices
    figure(fig1);
    zLimits = [-1 1];  % Adjust the limits according to your data

    subplot(2, 3, 1);
    if strcmp(axisLabel, 'x')
        surf(Y, Z, Ex_slice', 'EdgeColor', 'none');
    elseif strcmp(axisLabel, 'y')
        surf(X, Z, Ex_slice', 'EdgeColor', 'none');
    else
        surf(X, Y, Ex_slice', 'EdgeColor', 'none');
    end
    colorbar;
    title(['E_x Slice at ', axisLabel, ' = ', num2str(sliceIndex)]);
    xlabel('Index 1');
    ylabel('Index 2');
    zlim(zLimits);

    subplot(2, 3, 2);
    if strcmp(axisLabel, 'x')
        surf(Y, Z, Ey_slice', 'EdgeColor', 'none');
    elseif strcmp(axisLabel, 'y')
        surf(X, Z, Ey_slice', 'EdgeColor', 'none');
    else
        surf(X, Y, Ey_slice', 'EdgeColor', 'none');
    end
    colorbar;
    title(['E_y Slice at ', axisLabel, ' = ', num2str(sliceIndex)]);
    xlabel('Index 1');
    ylabel('Index 2');
    zlim(zLimits);

    subplot(2, 3, 3);
    if strcmp(axisLabel, 'x')
        surf(Y, Z, Ez_slice', 'EdgeColor', 'none');
    elseif strcmp(axisLabel, 'y')
        surf(X, Z, Ez_slice', 'EdgeColor', 'none');
    else
        surf(X, Y, Ez_slice', 'EdgeColor', 'none');
    end
    colorbar;
    title(['E_z Slice at ', axisLabel, ' = ', num2str(sliceIndex)]);
    xlabel('Index 1');
    ylabel('Index 2');
    zlim(zLimits);

    subplot(2, 3, 4);
    if strcmp(axisLabel, 'x')
        surf(Y, Z, Hx_slice', 'EdgeColor', 'none');
    elseif strcmp(axisLabel, 'y')
        surf(X, Z, Hx_slice', 'EdgeColor', 'none');
    else
        surf(X, Y, Hx_slice', 'EdgeColor', 'none');
    end
    colorbar;
    title(['H_x Slice at ', axisLabel, ' = ', num2str(sliceIndex)]);
    xlabel('Index 1');
    ylabel('Index 2');
    zlim(zLimits);

    subplot(2, 3, 5);
    if strcmp(axisLabel, 'x')
        surf(Y, Z, Hy_slice', 'EdgeColor', 'none');
    elseif strcmp(axisLabel, 'y')
        surf(X, Z, Hy_slice', 'EdgeColor', 'none');
    else
        surf(X, Y, Hy_slice', 'EdgeColor', 'none');
    end
    colorbar;
    title(['H_y Slice at ', axisLabel, ' = ', num2str(sliceIndex)]);
    xlabel('Index 1');
    ylabel('Index 2');
    zlim(zLimits);

    subplot(2, 3, 6);
    if strcmp(axisLabel, 'x')
        surf(Y, Z, Hz_slice', 'EdgeColor', 'none');
    elseif strcmp(axisLabel, 'y')
        surf(X, Z, Hz_slice', 'EdgeColor', 'none');
    else
        surf(X, Y, Hz_slice', 'EdgeColor', 'none');
    end
    colorbar;
    title(['H_z Slice at ', axisLabel, ' = ', num2str(sliceIndex)]);
    xlabel('Index 1');
    ylabel('Index 2');
    zlim(zLimits);

    % Adjust layout
    sgtitle(['Field Slices at ', axisLabel, ' = ', num2str(sliceIndex),'; T = ', num2str(T),'/70']);

    drawnow;
end
