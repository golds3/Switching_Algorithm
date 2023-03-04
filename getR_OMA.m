function R = getR_OMA(L,M,BWdirect,pdl,tupp,pupp,p)
%ned pmu,rmu(RMU = RML1)
[~,~,~,~,~,~,~,~,O_N1,O_N2] = getN(M,pupp,tupp,pdl,L);
sumN = O_N1+O_N2;
sum_pr = 0;
for i=1:M
    sum_pr = sum_pr +sqrt(pmu*rmu);
end
R =BWdirect*p*log2(1+(pdl*0.25*pi*sum_pr^2)/(sumN+1));
end