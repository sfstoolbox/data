
================================================================================

This folder contains the spherical grid used in the HRTF measurement with the 
FABIAN dummy head done at the Carl-von-Ossietzky Universitaet Oldenburg within
the SEACEN collaboration. It contains 11345 points on a sphere with a hole in
the -z direction.

The measurement together with documentation is available at
http://dx.doi.org/10.14279/depositonce-5718

================================================================================

The data set can be dowloaded at

    https://github.com/sfstoolbox/data

If you want to use these data together with the SFS Toolbox, you can place the
data directory in the main path of the Toolbox. Another possibility is to just
be connected to the Internet, then the Toolbox will automatically fetch the
desired grid from this site.

You have to specify the desired grid in SFS_config.m, for example for the
fabian:

    conf.secondary_sources.grid = 'fabian';

================================================================================
