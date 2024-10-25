clc
clear all
close all

%% Path to Detected Faces

pathtomainfolder = fileparts(matlab.desktop.editor.getActiveFilename);
pathtomainfolder = pathtomainfolder(1:end-12);

path_detected_face = [pathtomainfolder 'Dataset/Detected Faces/'];
path_features = [pathtomainfolder 'Features/LBP/'];

%% Feature Extraction using Faces for Each User

for i = 1:200 %% total users are 200
    for j = 1:3 %% total samples per user is 3
        Current_Face = imread([path_detected_face 'Subject ' int2str(i) '/Subject' int2str(i) '_000' int2str(j) '.jpg']);
        Current_Face = imresize(Current_Face,[230 230]);
        figure,
        imshow(Current_Face)
        cd([pathtomainfolder 'Matlab Codes/LBP/']) %% Path to LBP feature extraction code folder path
        Features_of_Current_Face = Compute_LBP_Features(Current_Face)';
        %% Saving Features
        if j==1 
           mkdir([path_features 'Subject ' int2str(i)]) 
        end        
       save(['' path_features 'Subject ' int2str(i) '/Subject' int2str(i) '_000' int2str(j) '.mat' ''],'Features_of_Current_Face');  
    end
end