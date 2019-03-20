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



%音符播放函数:
function my_sound(original_note,data,fs,intensity)
if(original_note~=100)
    badu=floor(original_note/12);%数值音符除以12得所在八度
    note=mod(original_note,12);%数值音符对12取余得实际所在八度具体第几个音符
    fs_c=fs*2^(note/12)*2^(badu-1);%八度减1整体降一个八度
    sound(intensity*data(1:50000,:),fs_c);
end
end