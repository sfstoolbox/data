function [z,p] = sphbesselh_zeros_mp(order)
%SPHBESSELH_ZEROS_MP finds zeros/roots of spherical hankel function using the
%Multiprecision Toolbox
%
%   Usage: [z,p] = sphbesselh_zeros_mp(order)
%
%   Input parameters:
%       order       - order of hankel function
%
%   Output parameters:
%       z       - zeros/roots of spherical Bessel function
%       p       - roots of spherical Bessel function
%
%   SPHBESSELH_ZEROS_MP(order) finds zeros and roots for a spherical hankel
%   functin of the specified order using the Multiprecision Toolbox
%   (http://www.advanpix.com).
%
%   see also: sphbesselh, driving_function_imp_nfchoa

%*****************************************************************************
% Copyright (c) 2010-2013 Quality & Usability Lab, together with             *
%                         Assessment of IP-based Applications                *
%                         Deutsche Telekom Laboratories, TU Berlin           *
%                         Ernst-Reuter-Platz 7, 10587 Berlin, Germany        *
%                                                                            *
% Copyright (c) 2013      Institut fuer Nachrichtentechnik                   *
%                         Universitaet Rostock                               *
%                         Richard-Wagner-Strasse 31, 18119 Rostock           *
%                                                                            *
% This file is part of the Sound Field Synthesis-Toolbox (SFS).              *
%                                                                            *
% The SFS is free software:  you can redistribute it and/or modify it  under *
% the terms of the  GNU  General  Public  License  as published by the  Free *
% Software Foundation, either version 3 of the License,  or (at your option) *
% any later version.                                                         *
%                                                                            *
% The SFS is distributed in the hope that it will be useful, but WITHOUT ANY *
% WARRANTY;  without even the implied warranty of MERCHANTABILITY or FITNESS *
% FOR A PARTICULAR PURPOSE.                                                  *
% See the GNU General Public License for more details.                       *
%                                                                            *
% You should  have received a copy  of the GNU General Public License  along *
% with this program.  If not, see <http://www.gnu.org/licenses/>.            *
%                                                                            *
% The SFS is a toolbox for Matlab/Octave to  simulate and  investigate sound *
% field  synthesis  methods  like  wave  field  synthesis  or  higher  order *
% ambisonics.                                                                *
%                                                                            *
% http://dev.qu.tu-berlin.de/projects/sfs-toolbox       sfstoolbox@gmail.com *
%*****************************************************************************


%% ===== Checking input parameters =======================================
nargmin = 1;
nargmax = 1;
narginchk(nargmin,nargmax);
isargpositivescalar(order);


%% ===== Computation =====================================================
% compute normalized roots/zeros of spherical Hankel function
B = mp(zeros(1,order+2));
A = B;
for n=mp(0:order)
    B(n+1) = factorial(2*order-n)/(factorial(order-n)*factorial(n)*2^(order-n));
end
B = B(end:-1:1);
% find zeros/roots
z = roots(B);
% find roots (for another kind of hankel function ??? This is needed for a plane
% wave in NFCHOA)
A(2) = mp(1);
p = roots(A);
