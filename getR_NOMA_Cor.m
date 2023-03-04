function R = getR_NOMA_Cor(L,M,BWdirect,pdl,tc,tupp,p,BWcl,Pcl,Pupp)
%NEED bl12
[~,~,~,~,~,C_N1,C_N2,C_N3]= getN(M,Pupp,tupp,pdl,L);
sum_pr = 0;
sumN = C_N1+C_N2+C_N3;
for i = 1:M
    sum_pr = sum_pr+sqrt(0.7*rml1);
end
SINR_1 = pdl*0.25*pi*sum_pr^2/(sumN+1);
SINR_2 = Pcl*bl12;
R2_c = min(BWdirect*p*log2(1+SINR_1),BWcl*log2(1+SINR_2));
[~,R1,R2] = getR_NOMA(L,M,BWdirect,pdl,tc,tupp);
R = 0;
for i=1:L 
    R = R+R1+max(R2,R2_c);
end