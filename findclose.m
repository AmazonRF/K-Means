function [k,mind]= findclose(rx,ry,nx,ny)
%�˺�������(nx,ny)��(rx,ry)���ĸ�����������������ı�� 
%   �˴���ʾ��ϸ˵��
    for i =1:length(rx)
        d(i)=(rx(i)-nx)^2+(ry(i)-ny)^2;
    end
       k=find(d==min(d));
       mind=min(d);
       %������������Ϊ����������ѡ��һ��
       if(length(k)~=1)
           k=k(unidrnd(2));
       end
end

