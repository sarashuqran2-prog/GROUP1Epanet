clc;
clear;
close all;

R1 = [1 3];
J1 = [3 3];
J2 = [5 5];
J3 = [5 1];
J4 = [7 3];
T1 = [9 3];

plot([1 3],[3 3],'k');
hold on;
plot([3 5],[3 5],'k');
plot([3 5],[3 1],'k');
plot([5 7],[5 3],'k');
plot([5 7],[1 3],'k');
plot([7 9],[3 3],'k');

plot([1 3 5 5 7 9],[3 3 5 1 3 3],'bo');

text(1,3.3,'R1');
text(3,3.3,'J1');
text(5,5.3,'J2');
text(5,1.3,'J3');
text(7,3.3,'J4');
text(9,3.3,'T1');

title('Water Distribution Network');
grid on;
saveas(gcf,'MyNetworkSketch.png');