function play_3track(track1,b,track2,track3)
load C5-piano;
sizeT=max(size(track1));
t=1;

while t<=sizeT
    my_sound(track1(t),data,fs,0.75);
    my_sound(track2(t),data,fs,1);
    my_sound(track3(t),data,fs,1);
    pause(b(t));
    t=t+1;
end
end



%�������ź���:
function my_sound(original_note,data,fs,intensity)
if(original_note~=100)
    badu=floor(original_note/12);%��ֵ��������12�����ڰ˶�
    note=mod(original_note,12);%��ֵ������12ȡ���ʵ�����ڰ˶Ⱦ���ڼ�������
    fs_c=fs*2^(note/12)*2^(badu-1);%�˶ȼ�1���彵һ���˶�
    sound(intensity*data(1:50000,:),fs_c);
end
end