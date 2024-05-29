%
% Author :Mehdi Ezoji 
% This function impelements the Normalization method that change the mean
% and variance of an image to the defined constant values .
%     [Normalized] = Normalization(Original_Im,Ms,Vs);
%      Original_Im : Input Image (Gray Scale )
%               Ms : Predifined Mean
%               Vs : Predifined Variance
% To display resulted image : figure;imshow(Normalized/max(Normalized(:)));

% Reference :Hsieh Ch. et al, "An effective algorithm for fingerprint image
% enhancement based on wavelet transform", Pattern Recognition,2003,vol. 36
% pp. 303-312

function [Normalized]=Normalization(Original_Im,Ms,Vs);
if ~isa(Original_Im, 'double')
    Original_Im = im2double(Original_Im);
end
Normalized=Original_Im;
% To Compute Original_Im's Variance
V=0;M=mean(Original_Im(:));
for i=1:size(Original_Im,1)
    for j=1:size(Original_Im,2)
        V=V+((Original_Im(i,j)-M)^2);
    end
end
V=V/(size(Original_Im,1)*size(Original_Im,2));
% To Normalization  
for i=1:size(Original_Im,1)
    for j=1:size(Original_Im,2)
        temp=sqrt((Vs/V)*((Original_Im(i,j)-M)^2));
        if Original_Im(i,j)>M Normalized(i,j)=Ms+temp;
        else Normalized(i,j)=Ms-temp;end
    end
end
clear V M temp;