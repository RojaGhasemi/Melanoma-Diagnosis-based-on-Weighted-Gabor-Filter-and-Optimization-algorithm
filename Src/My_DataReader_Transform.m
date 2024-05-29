%{
«Ì‰ »—‰«„Â «“ »«‰ò «ÿ·«⁄« Ì ›«Ì· Â«Ì ›Ê—ÌÂ  ⁄œ«œÌ —« «‰ Œ«» „Ì ò‰œ.
    %}
clc
clear all

%cd ('f:\Machine learning\Neural Network\Programming');
load ('Fourier_Images_and_pose.mat', 'All_files', 'All_Images' , 'All_Pose');

percent = 30;

num_of_selected_files = round((length(All_files)*percent) /100 );
 
selected_files = round( num_of_selected_files * rand(num_of_selected_files,1));


for i=1:num_of_selected_files
 %   i;
    
    Selected_Images(:,i) = All_Images(:,selected_files(i));
   
    file = All_files(selected_files(i)).name;
   if (strfind(file,'sunglasses'))
            Selected_Pose(:,i) = [1];
    elseif (strfind(file,'open'))
            Selected_Pose(:,i) = [0];
    end   
end

%cd ('f:\Machine learning\Neural Network\Programming');
Selected_Images = double(Selected_Images);

All_Images = double(All_Images);

save ('F_Images_and_pose.mat', 'All_files', 'All_Images' , 'All_Pose','selected_files' , 'Selected_Images', 'Selected_Pose');

disp ('end');
