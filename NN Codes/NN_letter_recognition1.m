clc
clear all
p1=[0 0 0 0 1 1 0 1 1 0 0 0];%c
p2=[1 0 1 0 1 0 0 1 0 1 0 1];%o
p3=[1 0 1 0 1 0 0 0 0 0 1 0];%A
p4=[0 1 0 0 1 0 0 1 0 1 0 1];%V
P=[p1' p2' p3' p4']
T=[0 0 1 1;0 1 0 1]

% 
mynet=newff(P,T,[10]);
mynet.trainParam.epochs=100;
mynet.trainParam.goal=1e-10;
mynet.trainParam.lr=0.1;
mynet.divideParam.trainRatio=1;
mynet.divideParam.testRatio=0;
mynet.divideParam.valRatio=0;
mynet=train(mynet,P,T);
% 
Y=sim(mynet,P)
p1t1=[0 0 0 0 1 0 0 1 1 0 0 0]; %c
p4t1=[1 1 1 0 1 0 0 1 0 1 0 1];

Y=sim(mynet,p1t1')
