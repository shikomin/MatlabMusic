clc
clear
videoObj = VideoReader('cxk.mp4');%读视频文件
nframes = get(videoObj, 'NumberOfFrames');%获取视频文件帧个数
ch='Bc. ';
fp=fopen('D:\temp\cxkDataF.txt','a');%蔡徐坤打篮球将被写入文件cxkData.txt
for k = 1 : nframes
    currentFrame = read(videoObj, k);
    grayFrame = rgb2gray(currentFrame);%灰度化
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