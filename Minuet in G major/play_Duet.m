function play_Duet(l1,l2,r1,r2,data,fs)
tl=0;nl=1;
tr=0;nr=1;


sizeOfMusic=max(sum(r2),sum(l2));

while(sizeOfMusic>min(tr,tl))
    if(tr==tl)
        my_sound(l1(nl),data,fs);
        my_sound(r1(nr),data,fs);      
        pause(min(l2(nl),r2(nr))); 
        tl=tl+l2(nl);
        tr=tr+r2(nr);
        nl=nl+1;
        nr=nr+1;
    elseif(tr>tl)
        my_sound(l1(nl),data,fs);
        pause(l2(nl));
        tl=tl+l2(nl);
        nl=nl+1;
    elseif(tr<tl)
        my_sound(r1(nr),data,fs);
        pause(r2(nr));
        tr=tr+r2(nr);
        nr=nr+1;
    end
    a=1;
end
end


%�������ź���:
function my_sound(original_note,data,fs)
if(original_note~=100)
    badu=floor(original_note/12);%��ֵ��������12�����ڰ˶�
    note=mod(original_note,12);%��ֵ������12ȡ���ʵ�����ڰ˶Ⱦ���ڼ�������
    fs_c=fs*2^(note/12)*2^(badu-1);%�˶ȼ�1���彵һ���˶�
    sound(data(1:50000,:),fs_c);
end
end