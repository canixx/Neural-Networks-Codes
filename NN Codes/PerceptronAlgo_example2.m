clc
clear all 
close all
x = [1 1 2 2 4 4 3 3 5; 1 2 2 3 2 3 4 5 4];
plot(x(1,:),x(2,:),'*')
t = [0 0 0 0 1 1 1 1 1];
net = perceptron;
net = train(net,x,t);
%view(net)
y = net(x)

%  new_x=[2;5];
%  Y_new=sim(net,new_x)
% % 
% net.IW{1,1}
% net.b

% hardlim
% n = -5:1:5;
% a = hardlim(n)
