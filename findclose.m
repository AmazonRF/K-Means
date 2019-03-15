function [k,mind]= findclose(rx,ry,nx,ny)
%此函数计算(nx,ny)离(rx,ry)中哪个点最近，返回最近点的编号 
%   此处显示详细说明
    for i =1:length(rx)
        d(i)=(rx(i)-nx)^2+(ry(i)-ny)^2;
    end
       k=find(d==min(d));
       mind=min(d);
       %如果到两个点均为最近，则随机选择一个
       if(length(k)~=1)
           k=k(unidrnd(2));
       end
end

