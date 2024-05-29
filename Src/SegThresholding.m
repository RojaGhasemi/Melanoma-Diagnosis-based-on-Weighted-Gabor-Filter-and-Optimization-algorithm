clear;clc;
close all;
h1=imread('C:\Users\computer\Documents\MATLAB\skin cancer usin LBP\dataset2\kole dataset\train\a.d.1.BMP');
figure;imshow(h1);
h2=rgb2gray(h1);
 h2 = wiener2(h2, [3 3]);
 h2=medfilt2(h2);
figure;imshow(h2);
level = graythresh(h2);
BW = im2bw(h2,level);
bin1 = bwareaopen(BW, 2000);
contour(bin1,[0 0],'m');
figure;imshow(bin1);
save('bin1.mat','bin1');
[row col]=size(bin1);
% % % for i=40:row-30
% % % for j=40:col-30
% % %     if (bin(i,j)==0)
% % %         
% % %     end
% % % end
% % % end
   [z w]=size(bin1);
    
    sz=0;
    sw=0;
%     bz=1;
%     bw=1;
    z1=round(z/2);
    w1=round(w/2);
    if bin1(z1,w1)==1
        x=1;
    else
        x=0;
    end
        
    for ew=70:w
        for ez=70:z
            if bin1(ez,ew)==x 
                        
               sz=ez
               sw=ew
                break;
            end   
           
        end
if sz~=0
    break;
end
    end
   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   
   sz1=0;
    sw1=0;
    for ez=70:w
        for ew=70:z
            if bin1(ez,ew)==x 
                        
               sz1=ez
               sw1=ew
                break;
            end   
           
        end
if sz1~=0
    break;
end
    end
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%
     
   sz2=0;
    sw2=0;
    z3=z-30;
    w3=w-30;
    for ez=z3:-1:50
        for ew=w3:-1:50
            if bin1(ez,ew)==x 
                        
               sz2=ez
               sw2=ew
                break;
            end   
           
        end
if sz2~=0
    break;
end
    end
   %%%%%%%%%%%%%%%%%%%
   
   
    sz3=0;
    sw3=0;
%     z3=z-30;
%     w3=w-30;
    for ew=w3:-1:50
        for ez=z3:-1:50
            if bin1(ez,ew)==x 
                        
               sz3=ez
               sw3=ew
                break;
            end   
           
        end
if sz3~=0
    break;
end
    end
    
     [rowm,colm]=size(h2);
 seg1=h2(sz1:sz2,sw:sw3);
% %  v=max(max(seg1));
% %   [m n]=size(seg1);
% % for f=1:m
% %     for e=1:n
% %      seg1(f,e)= seg1(f,e)/v;   
% %     end
% % end
save('seg1.mat','seg1');
 figure;imshow(seg1);
 seg1=imresize(seg1,[210 210]);
 figure;imshow(seg1);