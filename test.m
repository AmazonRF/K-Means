clc;
clear all
N=100;
% x=[9     4     7     1     8     6    1     3     5];
% y=[6     1     5     9     3     7    9    8     4];
x=randperm(N);
y=randperm(N);
k=3;
%%
 [rx,ry]=beginnode(x,y,k);
% display(rx)
% display(ry)

%%
% i=5;
%  [n,tmind]=findclose(rx,ry,x(i),x(i));
% display(n);
% display(tmind);

%%
 [rx,ry]=beginnode(x,y,k);
 [rmx,rmy] = selectnode(x,y,rx,ry,k);
%  display(rmx)
%  display(rmy)
 figure
 %plot(x,y,'+');
%  hold on
%  plot(rmx,rmy,'o')
 for i=1:N
     [k,mind]=findclose(rmx,rmy,x(i),y(i));
    
     if(k==1)
          plot(x(i),y(i),'o');
          hold on
     elseif (k==2)
          plot(x(i),y(i),'+');
          hold on
     else
          plot(x(i),y(i),'*');
          hold on
     end
 end