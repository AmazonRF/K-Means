function [rx,ry] = beginnode(xdata,ydata,k)
%UNTITLED2 �˺������ɳ�ʼ��k�����ģ��������ľ�Ϊ���ݵ�
%   �������
%nfΪ����������ĳ�ʼֵ����ֹ�����ͬһ��Ϊ��������
nf = unidrnd(floor(length(xdata)/k));
i=1;
while i<=k
    rx(i)=xdata(nf);
    ry(i)=ydata(nf);
    i=i+1;
    nf=nf+unidrnd(floor(length(xdata)/k));
end
end

