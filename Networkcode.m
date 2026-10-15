clc;
clear;

fid = fopen('MyNetwork.inp','w');

fprintf(fid,'[TITLE]\n');
fprintf(fid,'Simple Water Network\n\n');

fprintf(fid,'[JUNCTIONS]\n');
fprintf(fid,';ID  Elevation  Demand\n');
fprintf(fid,'J1  100  0.5\n');
fprintf(fid,'J2  105  0.3\n');
fprintf(fid,'J3  102  0.2\n\n');

fprintf(fid,'[RESERVOIRS]\n');
fprintf(fid,';ID  Head\n');
fprintf(fid,'R1  150\n\n');

fprintf(fid,'[PIPES]\n');
fprintf(fid,';ID  Node1  Node2  Length  Diameter  Roughness  MinorLoss  Status\n');
fprintf(fid,'P1  R1  J1  500  200  130  0  Open\n');
fprintf(fid,'P2  J1  J2  300  150  130  0  Open\n');
fprintf(fid,'P3  J1  J3  350  150  130  0  Open\n\n');

fprintf(fid,'[OPTIONS]\n');
fprintf(fid,'UNITS LPS\n');
fprintf(fid,'HEADLOSS H-W\n\n');

fprintf(fid,'[COORDINATES]\n');
fprintf(fid,'R1  0  0\n');
fprintf(fid,'J1  2  0\n');
fprintf(fid,'J2  4  1\n');
fprintf(fid,'J3  4  -1\n\n');

fprintf(fid,'[END]\n');

fclose(fid);

disp('MyNetwork.inp created successfully');