% generate mat files with zeros of spherical Hankel function
for order=3:1000
    [z,p] = sphbesselh_zeros_mp(order);
    z = double(z);
    p = double(p);
    file = sprintf('sphbesselh_zeros_order%04.0f.mat',order);
    save('-v7',file,'z','p');
end

