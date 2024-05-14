clc
clear all 
close all
x = [0 0 1 1; 0 1 0 1]
t = [0 1 1 1]
net = perceptron;
net = train(net,x,t);
%view(net)
% y = net(x)

% new_x=[0.1;0.1];
% Y_new=sim(net,new_x)
% net.b
% net.IW{1,1}