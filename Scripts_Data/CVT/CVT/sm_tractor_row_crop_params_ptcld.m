% Load parameters 

% Copyright 2025 The MathWorks, Inc.

% Stop time for load cycle
stopTime = 70;

% Vehicle parameters
HMPST = sm_tractor_row_crop_params_cvt(VehicleData);

% Ground contact settings, single sphere per wheel
HMPST.Tire.Contact.sphere.stiffness = 1e5*3; % N/m
HMPST.Tire.Contact.sphere.damping = 5e3*3*10; % N/(m/s)
HMPST.Tire.Contact.sphere.transRegWidth = 1e-2; % m
HMPST.Tire.Contact.sphere.muStatic = 0.6;
HMPST.Tire.Contact.sphere.muDynamic = 0.50;
HMPST.Tire.Contact.sphere.velThreshold = 1e-1; % m/s

% Ground contact settings, tire point cloud
HMPST.Tire.Contact.ptcld.stiffness = 1e5/10; % N/m
HMPST.Tire.Contact.ptcld.damping = 5e3/10; % N/(m/s)
HMPST.Tire.Contact.ptcld.transRegWidth = 1e-2; % m
HMPST.Tire.Contact.ptcld.muStatic = 0.6;
HMPST.Tire.Contact.ptcld.muDynamic = 0.50;
HMPST.Tire.Contact.ptcld.velThreshold = 1e-1; % m/s

