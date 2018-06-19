Normalized Difference Vegetation Index (NDVI)
==================================================

The normalized difference vegetation index (NDVI) is a simple graphical indicator that can be used to analyze remote sensing measurements, typically, but not necessarily, from a space platform, and assess whether the target being observed contains live green vegetation or not.


The NDVI is calculated from these individual measurements as follows: ***NDVI = ( NIR − Red ) / ( NIR + Red )***
where red and NIR stand for the spectral reflectance measurements
spectral band individually, hence they take on values between 0.0 and 1.0.
spectral band individually, hence they take on values between 0.0 and 1.0.
spectral band individually, hence they take on values between 0.0 and 1.0.

### Interpreting NDVI
Negative values of NDVI (values approaching -1) correspond to water.
Values close to zero (-0.1 to 0.1) generally correspond to barren areas of rock, sand, or snow. 
Lastly, low, positive values represent shrub and grassland (approximately 0.2 to 0.4), while high values indicate temperate and tropical rainforests (values approaching 1).



By
design, the NDVI itself thus varies between -1.0 and +1.0. It should be noted
that NDVI is functionally, but not linearly, equivalent to the simple
infrared/red ratio (NIR/VIS). 


The advantage of NDVI over a simple infrared/red
ratio is therefore generally limited to any possible linearity of its
functional relationship with vegetation properties (e.g. biomass). The simple
ratio (unlike NDVI) is always positive, which may have practical advantages,
but it also has a mathematically infinite range (0 to infinity), which can be a
practical disadvantage as compared to NDVI. 

Also in this regard, note that the
VIS term in the numerator of NDVI only scales the result, thereby creating
negative values. NDVI is functionally and linearly equivalent to the
ratio NIR / (NIR+VIS), which ranges from 0 to 1 and is thus never negative nor
limitless in range.[7] But the most important
concept in the understanding of the NDVI algebraic formula is that, despite its
name, it is a transformation of a spectral ratio (NIR/VIS), and it has no
functional relationship to a spectral difference (NIR-VIS).



