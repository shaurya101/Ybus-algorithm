clc
clear all
disp('--------------Y BUS FORMATION--------------');

%%%%%%%%%%%% inputting admittance values %%%%%%%%%%%%%%%

x=input('Number of nodes:  ');
disp(' ')

for i=1:1:x
    for j=1:1:x
        if(i==j)
            a(i,j)= input(strcat('Enter value of self-admittance Y',int2str(i),int2str(0),': '));
            % Y10=self admittance if 1st bus(taken in full)
        else
            a(i,j)= input(strcat('Enter value of admittance Y',int2str(i),int2str(j),': ')); 
            % Admitttance including the half line admittance
        end
    end
end

%%%%%%%%%%%%%%%%%%%% processing %%%%%%%%%%%%%%%%%%%%%%

b=a;y=0;
for i=1:x
    for j=1:x
        if(i==j)
           for k=1:x
               y=y+b(i,k);
           end
           a(i,j)=y;
           y=0;
        else
            a(i,j)=-b(i,j);
        end
    end
end

%%%%%%%%%%%%%%%%%%% output %%%%%%%%%%%%%%%%%%


b
YBUS=a


            

