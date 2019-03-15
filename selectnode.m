function [rmx,rmy] = selectnode(xdata,ydata,rx,ry,k)
%此函数为对二维的点分成K类，返回每类的质心点
%   此处显示详细说明
%随机初始质点
xval_sel=zeros(1,k);
yval_sel=zeros(1,k);
mount_sel=zeros(1,k);
mind=zeros(1,k);
%对每个点找出最近的点
for i =1:length(xdata)
    [n,tmind]=findclose(rx,ry,xdata(i),ydata(i));
    xval_sel(n) = xval_sel(n)+xdata(i);
    yval_sel(n) = yval_sel(n)+ydata(i);
    mount_sel(n) = mount_sel(n)+1;  
    if tmind<mind(n)
        mind(n)=tmind;
    end
end
%以下计算新的质心
td=zeros(1,k);
t_nrx=[];
t_nrx=[];
temp=zeros(1,k);
for i =1:k
    t_nrx(i)=xval_sel(i)/mount_sel(i);
    t_nry(i)=yval_sel(i)/mount_sel(i);
    td(i)=(t_nrx(i)-rx(i))^2+(t_nry(i)-ry(i))^2;
    if td(i)>=mind(i)
        tempt(i)=1
    end
end
tempt=find(temp==1);
if length(tempt>=2)
    selectnode(xdata,ydata,t_nrx,t_nrx,k)
else
    rmx=t_nrx;
    rmy=t_nry;
end

