function varargout = untitled(varargin)
% UNTITLED MATLAB code for untitled.fig
%      UNTITLED, by itself, creates a new UNTITLED or raises the existing
%      singleton*.
%
%      H = UNTITLED returns the handle to a new UNTITLED or the handle to
%      the existing singleton*.
%
%      UNTITLED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED.M with the given input arguments.
%
%      UNTITLED('Property','Value',...) creates a new UNTITLED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled

% Last Modified by GUIDE v2.5 24-Feb-2017 13:25:47

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled (see VARARGIN)

% Choose default command line output for untitled
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear all;
close all;
clc;
tic;
%////////////////////////////////////////////////////////////
    classes=['d';'e';]; % i
%  PersonName=['a';'b';'f';'g';'h';'k';'l';'m';'r';'s';'t';'u';'v';'z';]; 
%    FaceState=['e';]; % i
 PName=['a';]; 
cd ('C:\Users\computer\Documents\MATLAB\melanoma detection\\dataset\train\');
AllFile=dir('*.BMP');
r=1;
k1=1;
Col=1;
for i=1:2
    i;
    PerName='';
    for j=1:1
        j;
        cd ('C:\Users\computer\Documents\MATLAB\melanoma detection\dataset\train\');
        AllFile=dir('*.BMP');
        cc=1;        
        for ll=1:length(AllFile(:,1))
            TotalName(ll,1:length(AllFile(ll,1).name))=AllFile(ll,1).name;        
            if (strfind(TotalName(ll,:),classes(i,:)))
                if  (strfind(TotalName(ll,:),PName(j,:)))
                   PerName(cc,1:length(TotalName(ll,:)))=TotalName(ll,:);
                   cc=cc+1;
                end                
            end
        end
%        PerName        
     cd ('C:\Users\computer\Documents\MATLAB\tashkhise saratane poost');
     for k=1:length(PerName(:,1))
         h1=imread(strcat('C:\Users\computer\Documents\MATLAB\melanoma detection\dataset\train\',PerName(k,:)));
         
% % % % % % % % % % % % % % % % % % % % % % % %     preprocessing and semnetation using thresholding

h2=rgb2gray(h1);
 h2 = wiener2(h2, [3 3]);
 h2=medfilt2(h2);
% figure;imshow(h2);
level = graythresh(h2);
BW = im2bw(h2,level);
bin1 = bwareaopen(BW, 2000);
[row col]=size(bin1);

   [z w]=size(bin1);
    
    sz=0;
    sw=0;
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
                        
               sz=ez;
               sw=ew;
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
                        
               sz1=ez;
               sw1=ew;
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
                        
               sz2=ez;
               sw2=ew;
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
                        
               sz3=ez;
               sw3=ew;
                break;
            end   
           
        end
if sz3~=0
    break;
end
    end
    
     [rowm,colm]=size(h2);
 seg1=h2(sz1:sz2,sw:sw3);
 seg1=imresize(seg1,[210 210]);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  split image into 4 areas and  Weighted Gabor Filter  %%%%%%%%%%%%%%%%%


h2=seg1(1:71,1:71);
h3=seg1(1:71,70:140);
h4=seg1(1:71,140:210);
h5=seg1(70:140,1:71);
h6=seg1(70:140,70:140);
h7=seg1(70:140,140:210);
h8=seg1(140:210,1:71);
h9=seg1(140:210,70:140);
h10=seg1(140:210,140:210);

 h2=histeq(h2);
 J=I_entropy(h2,9);
 J1(1)=mean(mean(J));
 
  h3=histeq(h3);
 J=I_entropy(h3,9);
 J1(2)=mean(mean(J));
 
  h4=histeq(h4);
 J=I_entropy(h4,9);
 J1(3)=mean(mean(J));
 
  h5=histeq(h5);
 J=I_entropy(h5,9);
 J1(4)=mean(mean(J));
 
  h6=histeq(h6);
 J=I_entropy(h6,9);
 J1(5)=mean(mean(J));
 
  h7=histeq(h7);
 J=I_entropy(h7,9);
 J1(6)=mean(mean(J));
 
  h8=histeq(h8);
 J=I_entropy(h8,9);
 J1(7)=mean(mean(J));
 
  h9=histeq(h9);
 J=I_entropy(h9,9);
 J1(8)=mean(mean(J));
 
  h10=histeq(h10);
 J=I_entropy(h10,9);
 J1(9)=mean(mean(J));
 mJ1= max(J1);
 for w=1:9
     J1(w)=J1(w)/mJ1;
     
      J1(w)=J1(w)*100;
 end
 for e=1:9
     if round(J1(e))>95
         
       W1(e) =1.5;
     else
       W1(e) =1; 
     end
 end
 save ('W1.mat','W1');


% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
norient=6;
mul=2;
for DWScale=0:2
   t1(DWScale+1).data=GabFilter(h2,DWScale,norient,0,mul,0.65,1.5)
   t2(DWScale+1).data=GabFilter(h3,DWScale,norient,0,mul,0.65,1.5);
   t3(DWScale+1).data=GabFilter(h4,DWScale,norient,0,mul,0.65,1.5);
   t4(DWScale+1).data=GabFilter(h5,DWScale,norient,0,mul,0.65,1.5);
   t5(DWScale+1).data=GabFilter(h6,DWScale,norient,0,mul,0.65,1.5);
   t6(DWScale+1).data=GabFilter(h7,DWScale,norient,0,mul,0.65,1.5);
   t7(DWScale+1).data=GabFilter(h8,DWScale,norient,0,mul,0.65,1.5);
   t8(DWScale+1).data=GabFilter(h9,DWScale,norient,0,mul,0.65,1.5);
   t9(DWScale+1).data=GabFilter(h10,DWScale,norient,0,mul,0.65,1.5);
           
end
save('t1.mat','t1');
% figure; imshow(t1);
% t1=t1*W1(1);
% t2=t2*W1(2);
% t3=t3*W1(3);
% t4=t4*W1(4);
% t5=t5*W1(5);
% t6=t6*W1(6);
% t7=t7*W1(7);
% t8=t8*W1(8);
% t9=t9*W1(9);
fv=FeatureVector(t1,t2,t3,t4,t5,t6,t7,t8,t9);
%  FVTrain(Col,1:length(fv))=fv;
 fv22(Col,1:length(fv))=fv;
 fv22(Col,1:1800)=fv22(Col,1:1800)*W1(1);
  fv22(Col,1801:3600)=fv22(Col,1801:3600)*W1(2);
   fv22(Col,3601:5400)= fv22(Col,3601:5400)*W1(3);
    fv22(Col,5401:7200)=fv22(Col,5401:7200)*W1(4);
     fv22(Col,7201:9000)=fv22(Col,7201:9000)*W1(5);
      fv22(Col,9001:10800)=fv22(Col,9001:10800)*W1(6);
       fv22(Col,10801:12600)=fv22(Col,10801:12600)*W1(7);
        fv22(Col,12601:14400)=fv22(Col,12601:14400)*W1(8);
         fv22(Col,14401:16200)=fv22(Col,14401:16200)*W1(9);

%    
 save('fv.mat','fv');
% figure; showimg(t1);
% figure; showimg(t2);
% figure; showimg(t3);
% figure; showimg(t4);
% figure; showimg(t5);
% figure; showimg(t6);
% figure; showimg(t7);
% figure; showimg(t8);
% figure; showimg(t9);

                   
% % % % % % % % % % % % % % %  % % % % % % % % % % %    % % % % % % % PSO

   x=importdata('C:\Users\computer\Documents\MATLAB\melanoma detection\I2.mat');
CostFunction=@(x) MyCost(x); 
Max_iteration=10; % Maximum number of iterations
noP=1; % Number of particles
noV=10000;
ConvergenceCurves=zeros(8,Max_iteration);
[gBest1, gBestScore1 ,ConvergenceCurves(1,:)]=BPSO(noP,Max_iteration,1,CostFunction,noV);
load('pBest.mat');
pBest_Train(Col,:)=pBest;
% % % % % % % % % % % % % % % % % % % % % % % %    % sakhte matrise vijegie nahaei

load('I2.mat');
DataSet1=I2;
s1=0;
for i11=1:10000
    for j11=1:1
        if pBest(j11,i11)==1
            s1=s1+1;
            PSO_Train(k1,s1)=DataSet1(j11,i11);

        end    
    end
end
    e3=I2;
   e3=im2double(e3);
[COEFF,SCORE] = princomp(zscore(e3)');
 SCORE=SCORE';
 FVTR1(Col,1:4000)=SCORE(1,1:4000);
fv23(Col,1)=i;
 Col=Col+1;
   k1=k1+1;
  end 

    end 
end
% % % % %  % % % % % % % % % % % % % % % % % % % % % normalization data
FVTR1(1:70,:)= mapminmax(FVTR1(1:70,:),0,1);

 FVTR1(1:70,4001)=fv23;
 save('gabor_Train.mat','gabor_Train');
save('pBest_Train.mat','pBest_Train');
  save('PSO_Train.mat','PSO_Train');
save('FVTR1.mat','FVTR1');
toc;

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[FileName, PathName] = uigetfile({'*.jpg;*.tif;*.bmp;*.gif','All Image Files'},'Select an Image');
fpath = strcat(PathName, FileName);
h1 = imread(fpath);
tic;
%  figure;imshow(h1);
save('h1.mat','h1');
axes(handles.axes1) % Select the proper axes
box on
imshow(h1);
k1=1;
% % % % % % % % % % % % % % % % % % % % % preprocessing and semnetation
h2=rgb2gray(h1);
 h2 = wiener2(h2, [3 3]);
 h2=medfilt2(h2);
level = graythresh(h2);
BW = im2bw(h2,level);
bin1 = bwareaopen(BW, 2000);
[row col]=size(bin1);
   [z w]=size(bin1);
    
    sz=0;
    sw=0;
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
                        
               sz=ez;
               sw=ew;
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
                        
               sz1=ez;
               sw1=ew;
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
                        
               sz2=ez;
               sw2=ew;
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
                        
               sz3=ez;
               sw3=ew;
                break;
            end   
           
        end
if sz3~=0
    break;
end
    end
    
     [rowm,colm]=size(h2);
 seg1=h2(sz1:sz2,sw:sw3);
  axes(handles.axes2)
box on
imshow(seg1);
 seg1=imresize(seg1,[210 210]);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  split image into 4 areas and  Weighted Gabor Filter  %%%%%%%%%%%%%%%%%

h2=seg1(1:71,1:71);
h3=seg1(1:71,70:140);
h4=seg1(1:71,140:210);
h5=seg1(70:140,1:71);
h6=seg1(70:140,70:140);
h7=seg1(70:140,140:210);
h8=seg1(140:210,1:71);
h9=seg1(140:210,70:140);
h10=seg1(140:210,140:210);

 h2=histeq(h2);
 J=I_entropy(h2,9);
 J1(1)=mean(mean(J));
 
  h3=histeq(h3);
 J=I_entropy(h3,9);
 J1(2)=mean(mean(J));
 
  h4=histeq(h4);
 J=I_entropy(h4,9);
 J1(3)=mean(mean(J));
 
  h5=histeq(h5);
 J=I_entropy(h5,9);
 J1(4)=mean(mean(J));
 
  h6=histeq(h6);
 J=I_entropy(h6,9);
 J1(5)=mean(mean(J));
 
  h7=histeq(h7);
 J=I_entropy(h7,9);
 J1(6)=mean(mean(J));
 
  h8=histeq(h8);
 J=I_entropy(h8,9);
 J1(7)=mean(mean(J));
 
  h9=histeq(h9);
 J=I_entropy(h9,9);
 J1(8)=mean(mean(J));
 
  h10=histeq(h10);
 J=I_entropy(h10,9);
 J1(9)=mean(mean(J));
 mJ1= max(J1);
 for w=1:9
     J1(w)=J1(w)/mJ1;
     
      J1(w)=J1(w)*100;
 end
 for e=1:9
     if round(J1(e))>95
         
       W1(e) =1.5;
     else
       W1(e) =1; 
     end
 end
 save ('W1.mat','W1');


% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 
norient=6;
mul=2;
for DWScale=0:2
   t1(DWScale+1).data=GabFilter(h2,DWScale,norient,0,mul,0.65,1.5)
   t2(DWScale+1).data=GabFilter(h3,DWScale,norient,0,mul,0.65,1.5);
   t3(DWScale+1).data=GabFilter(h4,DWScale,norient,0,mul,0.65,1.5);
   t4(DWScale+1).data=GabFilter(h5,DWScale,norient,0,mul,0.65,1.5);
   t5(DWScale+1).data=GabFilter(h6,DWScale,norient,0,mul,0.65,1.5);
   t6(DWScale+1).data=GabFilter(h7,DWScale,norient,0,mul,0.65,1.5);
   t7(DWScale+1).data=GabFilter(h8,DWScale,norient,0,mul,0.65,1.5);
   t8(DWScale+1).data=GabFilter(h9,DWScale,norient,0,mul,0.65,1.5);
   t9(DWScale+1).data=GabFilter(h10,DWScale,norient,0,mul,0.65,1.5);
           
end
save('t1.mat','t1');
% figure; imshow(t1);
% t1=t1*W1(1);
% t2=t2*W1(2);
% t3=t3*W1(3);
% t4=t4*W1(4);
% t5=t5*W1(5);
% t6=t6*W1(6);
% t7=t7*W1(7);
% t8=t8*W1(8);
% t9=t9*W1(9);
fv=FeatureVector(t1,t2,t3,t4,t5,t6,t7,t8,t9);
%  FVTrain(Col,1:length(fv))=fv;
 fv22(Col,1:length(fv))=fv;
 fv22(Col,1:1800)=fv22(Col,1:1800)*W1(1);
  fv22(Col,1801:3600)=fv22(Col,1801:3600)*W1(2);
   fv22(Col,3601:5400)= fv22(Col,3601:5400)*W1(3);
    fv22(Col,5401:7200)=fv22(Col,5401:7200)*W1(4);
     fv22(Col,7201:9000)=fv22(Col,7201:9000)*W1(5);
      fv22(Col,9001:10800)=fv22(Col,9001:10800)*W1(6);
       fv22(Col,10801:12600)=fv22(Col,10801:12600)*W1(7);
        fv22(Col,12601:14400)=fv22(Col,12601:14400)*W1(8);
         fv22(Col,14401:16200)=fv22(Col,14401:16200)*W1(9);

%    
 save('fv.mat','fv');
% figure; showimg(t1);
% figure; showimg(t2);
% figure; showimg(t3);
% figure; showimg(t4);
% figure; showimg(t5);
% figure; showimg(t6);
% figure; showimg(t7);
% figure; showimg(t8);
% figure; showimg(t9);

   
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % PSO

   x=importdata('C:\Users\computer\Documents\MATLAB\melanoma detection\I3.mat');
CostFunction=@(x) MyCost(x); % Modify or replace Mycost.m according to your cost funciton

Max_iteration=10; % Maximum number of iterations
noP=1; % Number of particles
noV=10000;

ConvergenceCurves=zeros(8,Max_iteration);

[gBest1, gBestScore1 ,ConvergenceCurves(1,:)]=BPSO(noP,Max_iteration,1,CostFunction,noV);
% save resuls

% % % % % % % % % % % % % % % % % % % % % % % %    % sakhte matrise vijegie nahaei
load('pBest.mat');
pBest_Test(1,:)=pBest;
load('I3.mat');
DataSet1=I3;
s1=0;
for i11=1:10000
    for j11=1:1
        if pBest(j11,i11)==1
            s1=s1+1;
            FVTT(k1,s1)=DataSet1(j11,i11);

        end    
    end
end
%  FVTR(Col,1:360000)=I2;% 
PSO_Test(1,:)=FVTT;

   e33=I3;
   e33=im2double(e33);
  
%   FVTR(Col,360001)=i;
[COEFF1,SCORE1] = princomp(zscore(e33)');
 SCORE1=SCORE1';
  FVTT1 (1,1:4000)= SCORE1(1,1:4000);
  FVTT1(1,:)= mapminmax(FVTT1(1,:),0,1);
% FVTT1(1,1:end)=norm(FVTT1(1,:));
 FVTT1(1,4001)=1;
 
save('gabor_Test.mat','gabor_Test');
save('pBest_Test.mat','pBest_Test');
save('PSO_Test.mat','PSO_Test');
 save('FVTT1.mat','FVTT1');
 
 toc;

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('FVTR1.mat');
load('FVTT1.mat');
e1=FVTR1(:,1:end-1);
e2=FVTT1(:,1:end-1);
% T=FV(:,end);
T2=FVTR1(:,end);
T3=FVTT1(:,end);

load('FVTR1.mat','e1','T2');
Training=e1;
Group=T2;
e1=[];
T2=[];
load('FVTT1.mat','e2','T3');
Sample=e2;

Class = knnclassify(Sample, Training, Group)
 if (Class==1)
      set(handles.text1,'String','Benign');
 end
 if (Class==2)
      set(handles.text1,'String','Melanoma');
 end
