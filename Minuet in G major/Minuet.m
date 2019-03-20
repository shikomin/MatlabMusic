load C5-piano.mat
r1_1=[8,1,3,5,6,8,1,1,10,6,8,10,12,13,1,1];
r1_5=[6,8,6,5,3,5,6,5,3,1,0,1,3,5,1,3,100,100];
r1_9=[8,1,3,5,6,8,1,1,10,6,8,10,12,13,1,1];
r1_13=[6,8,6,5,3,5,6,5,3,1,3,5,3,1,0,1,100,100];
r1_17=[17,13,15,17,13,15,8,10,12,8,13,10,12,13,8,7,5,6,3];
r1_21=[3,5,7,8,10,12,13,12,10,12,3,7,8,100,100];
r1_25=[8,1,0,1,10,1,0,1,8,6,5,3,1,0,1,3,-4,-2,0,1,3,5];
r1_30=[6,5,3,5,8,1,0,1,100,100];
r1=[r1_1,r1_5,r1_9,r1_13,r1_17,r1_21,r1_25,r1_30];%��ֵ����

r2=0.5*[1,1/2,1/2,1/2,1/2,1,1,1,1,1/2,1/2,1/2,1/2,1,1,1,...
    1,1/2,1/2,1/2,1/2,1,1/2,1/2,1/2,1/2,1,1/2,1/2,1/2,1/2,1,1,1,...
    1,1/2,1/2,1/2,1/2,1,1,1,1,1/2,1/2,1/2,1/2,1,1,1,...
    1,1/2,1/2,1/2,1/2,1,1/2,1/2,1/2,1/2,1,1/2,1/2,1/2,1/2,1,1,1,...
    1,1/2,1/2,1/2,1/2,1,1/2,1/2,1/2,1/2,1,1/2,1/2,1/2,1/2,1,1/2,1/2,1,...
    1/2,1/2,1/2,1/2,1/2,1/2,1,1,1,1,1,1,1,1,1,...
    1,1/2,1/2,1,1,1/2,1/2,1,1,1,1,1/2,1/2,1/2,1/2,1,1/2,1/2,1/2,1/2,1/2,1/2,...
    1,1,1,1/2,1/2,1,1,1,1,1];

l1_1=[-7,100,-9,-7,100,100,-6,100,100,-7,100,100];
l1_5=[-9,100,100,-11,100,100,-4,-7,-11,-4,-4,-6,-7,-9];
l1_9=[-7,100,-9,-11,-7,-11,-6,100,100,-7,-6,-7,-9,-11];
l1_13=[-9,100,-12,-11,100,-7,-6,-4,-16,-11,100,-23];
l1_17=[-11,100,100,-12,100,100,-14,-11,-14,-9,100,-9];
l1_21=[-9,100,100,-7,-4,-5,-4,-12,-9,-4,-16,-6];
l1_25=[-7,-4,-7,-6,-2,-6,-7,-9,-11,-4,100,100,-16,100,-12];
l1_30=[-14,-11,-14,-11,-19,-16,-11,-16,-11];
l1=[l1_1,l1_5,l1_9,l1_13,l1_17,l1_21,l1_25,l1_30];

l2=0.5*[1,1,1,1,1,1,1,1,1,1,1,1,...
    1,1,1,1,1,1,1,1,1,1,1/2,1/2,1/2,1/2,...
    1,1,1,1,1,1,1,1,1,1,1/2,1/2,1/2,1/2,...
    1,1,1,1,1,1,1,1,1,1,1,1,...
    1,1,1,1,1,1,1,1,1,1,1,1,...
    1,1,1,1,1,1,1,1,1,1,1,1,...
    1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,...
    1,1,1,1,1,1,1,1,1];

play_Duet(l1,l2,r1,r2,data,fs);