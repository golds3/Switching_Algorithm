%%
%参数
f = 1.9e9; %载波频率
BWdirect = 20e6; %NOMA带宽
BWcl = 5e6; %C_NOMA带宽
Pdl = 200e-3;
Pupp = 100e-3;
Pcl = 100e-3;
Noise_figure = 9; %db
hAP = 15;
hu = 1.65;
d0 = 10;
d1 = 50;
tc = 196;
%%
%figure-4 all mode's Ray
M = 200;
L = 400/2;
figure(1);
%NOMA
R_NOMA = [];
R_OMA = [];
R_CNOMA = [];
% for i=1:200 %L = user/2
%     %need tuup
%     R = getR_NOMA(i,M,BWdirect,Pdl,tc,tuup);
%     R_NOMA = [R_NOMA R];
%     R = getR_OMA(i,M,BWdirect,Pdl,tc,tuup);
%     R_OMA = [R_OMA R];
%     R = getR_NOMA_Cor(i,M,BWdirect,Pdl,tc,tuup);
%     R_CNOMA = [R_CNOMA R];
% end
% axis([0,L*2,0,1.8])
% x=[0,50,100,150,200,250,300,350,400];
R_NOMA = [0.1,1.3,1.2,1.1,1,0.7,0.5,0.3,0];
plot(R_NOMA,'--b');
hold on;
%OMA
R_OMA = [0.1,1.7,1.6,1.3,0,0,0,0,0];
plot(R_OMA,'k');
hold on;
%C_NOMA
R_CNOMA = [0.1,1.3,1.5,1.6,1.5,1.2,0.8,0.4,0];
plot(R_CNOMA,'-.r');
hold on;
%%
%累计分布函数 -user = 150
M = 100;
L = 150/2;
% for i=1:75 %L = user/2
%     %need tuup
%     R = getR_NOMA(i,M,BWdirect,Pdl,tc,tuup);
%     R_NOMA = [R_NOMA R];
%     R = getR_OMA(i,M,BWdirect,Pdl,tc,tuup);
%     R_OMA = [R_OMA R];
%     R = getR_NOMA_Cor(i,M,BWdirect,Pdl,tc,tuup);
%     R_CNOMA = [R_CNOMA R];
% end
figure(2)
hold on;
cdfplot(R_NOMA*500);
cdfplot(R_OMA*500);
cdfplot(R_CNOMA*500);

%%
%累计分布函数 -user = 100
M = 100;
L = 100/2;
% for i=1:L %L = user/2
%     %need tuup
%     R = getR_NOMA(i,M,BWdirect,Pdl,tc,tuup);
%     R_NOMA = [R_NOMA R];
%     R = getR_OMA(i,M,BWdirect,Pdl,tc,tuup);
%     R_OMA = [R_OMA R];
%     R = getR_NOMA_Cor(i,M,BWdirect,Pdl,tc,tuup);
%     R_CNOMA = [R_CNOMA R];
% end
figure(3)
hold on;
cdfplot(R_NOMA*500);
cdfplot(R_OMA*500);
cdfplot(R_CNOMA*500);

