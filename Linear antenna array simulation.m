%% Linear Antenna Array Simulation
clc;
clear;
close all;

%% Dipole Element
d = design(dipole,1e9);
d.Conductor = metal('Copper');

%% Linear Array
arrayObject = linearArray;
arrayObject.Element = d;
arrayObject.NumElements = 8;      % Change to 8 for comparison
arrayObject.ElementSpacing = 0.10; % Change to 0.10 for comparison

%% Geometry
figure;
show(arrayObject)
title('Linear Array Geometry')

%% Array Layout
figure;
layout(arrayObject)
title('Linear Array Layout')

%% 3D Radiation Pattern
figure;
pattern(arrayObject,1e9)
title('3D Radiation Pattern')
figure;
patternAzimuth(arrayObject,1e9)

%% Beamwidth
BW = beamwidth(arrayObject,1e9,0,1:1:360);

fprintf('Beamwidth = %.2f degrees\n',BW(1));
fprintf('Number of Elements = %d\n',arrayObject.NumElements);
fprintf('Element Spacing = %.2f m\n',arrayObject.ElementSpacing);

