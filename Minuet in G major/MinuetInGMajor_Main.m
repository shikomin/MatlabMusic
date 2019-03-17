load C5-piano;
data=data(1:35000,:);
[r1,r2,r3,l1,l2,l3]=MinuetInGMajor();
[x]=play_2f_2(l1,l2,l3,r1,r2,r3,data,fs);