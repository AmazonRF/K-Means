function [rx,ry] = beginnode(xdata,ydata,k)
%UNTITLED2 此函数生成初始的k个质心，其中质心均为数据点
%   测试完毕
%nf为生成随机数的初始值，防止随机到同一点为两个质心
nf = unidrnd(floor(length(xdata)/k));
i=1;
while i<=k
    rx(i)=xdata(nf);
    ry(i)=ydata(nf);
    i=i+1;
    nf=nf+unidrnd(floor(length(xdata)/k));
end
end

