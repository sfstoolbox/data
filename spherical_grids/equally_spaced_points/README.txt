
================================================================================
									                                           ||
This folder contains a data set of "N" equally spaced points on a sphere.      ||
They have been calculated via the Riesz s-energy approach.		               ||
A point and its weight is stored in a 1x4 vector, where the first colomn       ||
denotes the x-value, the 2nd the y-value, the 3rd the z-value and the 4th      ||
the weight for the point.						                               ||
This yields to a Nx4-Matrix for desired number of points.		               ||
Points are stored as 1points.mat,4points.mat,...			                   ||
									                                           ||
================================================================================
									                                           ||
NOTE: In the Riesz s-energy approach it is only possible to choose the	       ||
      desired point number as a squared number.				                   ||
      The data set holds data for N = 1...81^2 points.			               ||
									                                           ||
================================================================================
									                                           ||
The data set can be dowloaded at 					                           ||
									                                           ||
	https://github.com/sfstoolbox/data                                         ||
									                                           ||
This archive has to be unpacked and the folder "MinimumEnergyPointsOnASphere"  || 
has to be moved in the folder "SFS_general" of the SFS Toolbox.		           ||
									                                           ||
Then the points can be loaded into Matlab/Octave using the SFS_config 	       ||
structure with "conf.number_of_points_on_sphere = N;"			               ||
									                                           ||
================================================================================
