# 3D Finite-Difference Time-Domain (FDTD) Electromagnetic Simulator

## Project Overview
This project implements a **3D Finite-Difference Time-Domain (FDTD) Electromagnetic Simulator**, which is a numerical tool used to solve Maxwell’s equations for electromagnetic wave propagation in three dimensions over time. This simulator is specifically designed to analyze the behavior of electric and magnetic fields in various media.

## Project Structure
Here is a breakdown of the key files in the project:

### Main Simulation Files:
1. **Main.m**  
   - This is the main script that sets up the simulation, initializes parameters, and runs the time-stepping loop to compute the evolution of electromagnetic fields.
  
2. **Display_FDTD_Slice.m**  
   - This script visualizes the slices of the electric and magnetic fields in the simulation at specified coordinates and times.

### Initialization Files:
1. **Initialize_FFTKernel.m**  
   - Sets up the kernel required for the Fast Fourier Transform (FFT) used in the analysis of the frequency domain.

2. **Initialize_FFTParameters.m**  
   - Configures parameters needed for performing FFT on the fields.

3. **Initialize_PhysicalConstants.m**  
   - Defines the necessary physical constants such as the speed of light and permittivity of free space.

4. **Initialize_PlotParameters.m**  
   - Sets up parameters for controlling plot settings, including visualization preferences for the field data.

5. **Initialize_Ports.m**  
   - Initializes the source and receiving ports for electromagnetic wave input and output in the simulation.

6. **Initialize_SourceParameters.m**  
   - Sets up the parameters for the source, including waveform type and location.

### Field Update Functions:
1. **Update_CurlE.m**  
   - Updates the curl of the electric field based on the magnetic field components and grid spacing.

2. **Update_CurlH.m**  
   - Updates the curl of the magnetic field based on the electric field components.

3. **Update_DField.m**  
   - Updates the displacement field, which is an intermediate step in updating the electric field.

4. **Update_EField.m**  
   - Updates the electric field components at each time step based on the displacement field.

5. **Update_HField.m**  
   - Updates the magnetic field components at each time step based on the curl of the electric field.

6. **Update_Source.m**  
   - Updates the source input for the simulation, which can be a Gaussian pulse, sinusoid, chirp, or constant DC.

### Additional Data and Documentation:
- **Blank_Model_and_Initialized_parameters.mat**  
   - A MATLAB `.mat` file that stores pre-initialized model parameters and settings.
  
- **FDTD Study (Normalize E).pdf**  
   - A PDF document discussing the normalization of Maxwell's equations for the FDTD method and its application to your project.

## How to Run the Simulation
1. Ensure all files are placed in the same directory.
2. Open MATLAB and run the `Main.m` script.
3. The simulation will display slices of the electric and magnetic fields at each time step, allowing real-time visualization of the field propagation.

## Key Features
- **Time-domain simulation** of Maxwell's equations using the FDTD method.
- Supports visualization of 3D slices of electric and magnetic fields.
- Configurable source types, including Gaussian, sinusoidal, chirp, and DC signals.
- Includes stability checks based on the Courant condition.

## Customization
- Modify the source parameters by adjusting the settings in `Initialize_SourceParameters.m`.
- Change the physical constants or simulation grid by editing `Initialize_PhysicalConstants.m` and `Initialize_PlotParameters.m`.
- Use different visualization options by configuring `Display_FDTD_Slice.m`.

## License and Disclaimer
This code is provided "as-is" without any warranties, express or implied. The author, **Norberto M.**, is not liable for any damages or losses arising from its use. If you use this code in your research, publication, or project, please attribute it to **Norberto M.**.
