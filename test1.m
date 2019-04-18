clc
clear
videoObj = VideoReader('cxk.mp4');%����Ƶ�ļ�
nframes = get(videoObj, 'NumberOfFrames');%��ȡ��Ƶ�ļ�֡����
ch='Bc. ';
fp=fopen('D:\temp\cxkDataF.txt','a');%�����������򽫱�д���ļ�cxkData.txt
for k = 1 : nframes
    currentFrame = read(videoObj, k);
    grayFrame = rgb2gray(currentFrame);%�ҶȻ�
    [rows,cols]=size(grayFrame);
    fprintf(fp,'\r\n');
    for row=1:13:rows
        for col=1:7:cols
            index=floor(grayFrame(row,col)/63.75);
            if(index==0)
                index=1;
            end
            fprintf(fp,'%s',ch(index));
        end
        fprintf(fp,'\r\n');
    end
    fprintf(fp,'\r\n');
end
fclose(fp);