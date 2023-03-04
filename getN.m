function [n11,n22,n31,n41,n42,C_N1,C_N2,C_N3,O_N1,O_N2]= getN(M,Pupp,Tupp,Pdl,L)
%for NOMA
%need bmlk rmlk;
sum_pb_1 = 0;
sum_pr_1 = 0;
sum_pb_1_2 = 0;
sum_pb_2_1 = 0;
sum_pr_2_1 = 0;
sum_pb_2 = 0;
for i =1:M
    sum_pb_1 = sum_pb_1+0.3*bml1;
    sum_pr_1 = sum_pr_1+0.3*rml1;
    sum_pb_1_2 = sum_pb_1_2+0.3*bml2;
    sum_pb_2_1 = sum_pb_2_1+0.7*bml1;
    sum_pr_2_1 = sum_pr_2_1+0.7*rml1;
    sum_pb_2 = sum_pb_2+0.7*bml2;
end
n11 = Pdl*sum_pb_1-Pdl*0.25*pi*sum_pr_1;
n22 = Pdl*sum_pb_1_2;
n31 = Pdl*sum_pb_2_1-Pdl*0.25*pi*sum_pr_2_1;
n41 = 0;
n42 =  0;
for j = 1:L
    n41 = n41+Pdl*sum_pb_1+Pdl*sum_pb_2_1;
    n42 = n42+Pdl*sum_pb_1_2+Pdl*sum_pb_2;
end

%for C_NOMA
C_N1 = Pdl*sum_pb_2_1-Pdl*0.25*pi*sum_pr_2_1;
C_N2 = Pdl*sum_pb_1;
C_N3 = 0;
for j = 1:L
    C_N3 = C_N3+Pdl*sum_pb_1+Pd1*sum_pb_2_1;
end
%for OMA
%need pmu
rmu = rml1;
bmu = bml1;
sum_pb_u = 0;
sum_pr_u = 0;
for a=1:M
    sum_pb_u = sum_pb_u+pmu*bmu;
    sum_pr_u = sum_pr_u+pmu*rmu;
end
O_N1 = Pdl*sum_pb_u-Pdl*0.25*pi*sum_pr_u;
O_N2 = 0;
for b=1:2*L
    O_N2 = O_N2+Pdl*sum_pb_u;
end

end


