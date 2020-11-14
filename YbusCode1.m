clc
clear all
disp('---------- Y BUS FORMATION ----------');

%%%%%%%%%%%%%% processing %%%%%%%%%%%%%%%%%

nbus=4;
nline=5;
sbus=[1 2 2 3 1];
ebus=[2 3 4 4 3];
z=[0.2+0.8i 0.3+0.9i 0.25+1i 0.2+0.8i 0.1+0.4i];
shunt=[0.01i 0.015i 0.02i 0.01i 0.005i];
Ybus=zeros(nbus,nbus);
for i=1:nline
      l=sbus(i);
      m=ebus(i);
      Ybus(l,l)=Ybus(l,l)+1/z(i)+shunt(i);
      Ybus(m,m)=Ybus(m,m)+1/z(i)+shunt(i);
      Ybus(l,m)=(-1)/z(i);
      Ybus(m,l)=Ybus(l,m);
end

%%%%%%%%%%%%%%% Display Output %%%%%%%%%%%%%%%

Ybus
