function [R,R1,R2] = getR_NOMA(L,M,BWdirect,pdl,tc,tupp)
%����˵�� l--��Ⱥ���� = 0.5*�û�����
%m --AP�ĸ���
%BWdirect--����
%pdl������·�����
%�ڼ�Ⱥl�У��ӵ�m��AP�����K�û��Ĺ��� pmlk k1=0.3 k2 =0.7
p = 1 - tupp/tc; %Ԥ�������ӣ�����ģ����ͬһ���ʱ�����ȵ������ݴ����Ӱ��
R = 0;
pml_1 = 0.3;
pml_2 = 0.7;
for j=1:L
    [n11,n22,n31,n41,n42]= getN(M,Pupp,tupp,pdl);
    sumM_1 = 0;
    sumM_2 = 0;
    for i = 1:M
        sumM_1 = sumM_1+sqrt(pml_1*rml_1);
        sumM_2 = sumM_2+sqrt(pml_2*rml_2);
    end
    singal_1 = pdl*0.25*pi*sumM_1^2;
    noise_1 = n11+n31+n41+1;
    SINR1 = singal_1/noise_1;
    singal_2 = pdl*0.25*pi*sumM_2^2;
    noise_2 = n12+n22+n42+1;
    SINR2 = singal_2/noise_2;
    R1 = BWdirect*p*log2(1+SINR1);
    R2 =BWdirect*p*log2(1+SINR2);
    R = R+R1+R2;
end
end