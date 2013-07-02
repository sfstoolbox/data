
================================================================================

This folder contains data sets of "N" equally spaced points on a sphere.
They have been calculated via the Riesz s-energy approach.
A point and its weight is stored in a 1x4 vector, where the first column
denotes the x-value, the 2nd the y-value, the 3rd the z-value and the 4th
the weight for the point.
This yields to a Nx4-matrix for N desired number of points.
Points are stored as 000004points.mat,...

================================================================================

NOTE: In the Riesz s-energy approach it is only possible to choose the
      desired point number as a squared number.
      The data set holds data for up to N = 1...81^2 points.

================================================================================

The data set can be dowloaded at

    https://github.com/sfstoolbox/data

If you want to use these data together with the SFS Toolbox, you can place the
data directory in the main path of the Toolbox. Another possibility is to just
be connected to the Internet, then the Toolbox will automatically fetch the
desired grid from this site.

You have to specify the desired grid in SFS_config.m, for example for the
equally spaced points:

    conf.secondary_sources.grid = 'equally_spaced_points';

================================================================================
