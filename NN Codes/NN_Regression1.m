clc
clear all
P=[1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10];
T=[1 4 9 16 25 36 49 64 81 100 1 4 9 16 25 36 49 64 81 100 1 4 9 16 25 36 49 64 81 100];

mynet=newff(P,T,[10 5]);
mynet.trainParam.epochs=100;
mynet.trainParam.goal=1e-10;
mynet.trainParam.lr=0.5;
mynet=train(mynet,P,T);

Y=sim(mynet,P)
plot(P,T,'+',P,Y,'o')
pause
Pt=[1.5 2.5 3.5 4.5 5.5 11 13]
Tt=[2.25 6.25 12.25 20.25 30.25 121 169]
Yt=sim(mynet,Pt)
plot(Pt,Tt,'*',Pt,Yt,'o')