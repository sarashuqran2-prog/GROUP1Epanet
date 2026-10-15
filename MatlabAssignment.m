clc;
clear;

addpath(genpath('C:\Users\Shamsah\Downloads\EPANET-Matlab-Toolkit-dev'));

which epanet;

d = epanet('MyNetwork.inp');

disp(d.getNodeNameID());
disp(d.getLinkNameID());
d.getNodeNameID()
d.getLinkNameID()
d.getNodeElevations()
d.getLinkLength()
d.getLinkDiameter()
d.getNodeBaseDemands()
clc;
clear;

d = epanet('MyNetwork.inp');

d.openHydraulicAnalysis();
d.initializeHydraulicAnalysis();

d.runHydraulicAnalysis();

disp(d.getNodePressure());
disp(d.getNodeActualDemand());
disp(d.getLinkFlows());
disp(d.getLinkVelocity());

d.closeHydraulicAnalysis();
d.unload();
