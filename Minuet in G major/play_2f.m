function [x]=play_2f(l1,l2,l3,r1,r2,r3,data,fs)
t=0;tl=0;tr=0;   %��ʱ�䣬������ʱ�䣬������ʱ��=0
i=0;j=0;         

length_of_l=length(l1);
length_of_r=length(r1);
dl=0;dr=0;       %�������ۼ�ʱ��

fratio=392.*2.^[0/12 1/12 2/12 3/12 4/12 5/12 6/12 7/12 8/12 9/12 10/12 11/12];%G���������Ƶ�� 

%>>>>>>>>>>>>>>>>>>>>>>>>>��ʼʣ����������<<<<<<<<<<<<<<<<<<<<<<<<<<<<
while(length_of_r>=i && length_of_l>=j)
    if(t+min(l2(j+1)-dr,r2(i+1)-dl)<tr+r2(i+1)-dl) %����=========
        %��note------------------------------------------------
        note=mod(l1(j+1),12);
        if(note==0)    
            note=12;
        end 
        badu=(l1(j+1)-note)/12; 
        if(l1(j+1)<=0)
            if(badu==-2)
                badu=-2;    
            else
                badu=-1;
            end
        end 
        fs_current=fs*(fratio(ceil(note))+fratio(floor(note)))/2/fratio(1)*2^(badu-1);
        if(l1(j+1)~=100)  
            sound(data*l3(j+1),fs_current);   
        end  
        %----------------------------------------------------
        t=t+l2(j+1);  
        tr=tr+l2(j+1);  
        tl=tl+l2(j+1);
        %��¼����dl ���dr
        dl=l2(j+1)+dl;dr=0;
        pause(l2(j+1));
        j=j+1;
    elseif(t+min(l2(j+1)-dr,r2(i+1)-dl)<tl+l2(j+1)-dr)%����======
        %��note---------------------------------------------------
        note=mod(r1(i+1),12);
        if(note==0)  
            note=12;
        end 
        badu=(r1(i+1)-note)/12; 
        if(r1(i+1)<=0)
            if(badu==-2)
                badu=-2;    
            else
                badu=-1;
            end
        end 
        fs_current=fs*(fratio(ceil(note))+fratio(floor(note)))/2/fratio(1)*2^(badu-1);
        if(r1(i+1)~=100)
            sound(data*r3(i+1),fs_current); 
        end 
        %-----------------------------------------------------
        t=t+r2(i+1);
        tr=tr+r2(i+1);
        tl=tl+r2(i+1);
        %��¼����dr  ���dl
        dr=r2(i+1)+dr;dl=0;
        pause(r2(i+1));
        i=i+1;
    elseif(tl+l2(j+1)-dr==t+min(l2(j+1)-dr,r2(i+1)-dl) && t+min(l2(j+1)-dr,r2(i+1)-dl)==tr+r2(i+1)-dl)%ͬʱ=======
        %��note---------------------------------------------------
        note=mod(r1(i+1),12);
        if(note==0)  
            note=12;
        end 
        badu=(r1(i+1)-note)/12;      
        if(r1(i+1)<=0)
            if(badu==-2)
                badu=-2;    
            else
                badu=-1;
            end
        end 
        fs_current=fs*(fratio(ceil(note))+fratio(floor(note)))/2/fratio(1)*2^(badu-1);
        if(r1(i+1)~=100)
            sound(data*r3(i+1),fs_current); 
        end
        %--------------------------------------------------------
        
        %��note---------------------------------------------------
        note=mod(l1(j+1),12);
        if(note==0)  
            note=12;
        end 
        badu=(l1(j+1)-note)/12; 
        if(l1(j+1)<=0)
            if(badu==-2)
                badu=-2;    
            else
                badu=-1;
            end
        end 
        fs_current=fs*(fratio(ceil(note))+fratio(floor(note)))/2/fratio(1)*2^(badu-1);
        if(l1(j+1)~=100)
            sound(data*l3(j+1),fs_current); 
        end
        
        t=t+min(l2(j+1)-dr,r2(i+1)-dl);
        tr=tr+min(l2(j+1)-dr,r2(i+1)-dl);
        tl=tl+min(l2(j+1)-dr,r2(i+1)-dl);
        pause(min(l2(j+1)-dr,r2(i+1)-dl));
        j=j+1;i=i+1;dl=0;dr=0;
    end
end
%>>>>>>>>>>>>>>>>>>>>>>>>����<<<<<<<<<<<<<<<<<<<<<<<
x=1;
    
    
    
        