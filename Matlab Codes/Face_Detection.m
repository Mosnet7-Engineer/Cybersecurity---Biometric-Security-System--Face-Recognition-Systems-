clc
clear all
close all
warning off

%% Creating a cascade face detector
faceDetector = vision.CascadeObjectDetector();

%% Path to Original and Detected Faces

pathtomainfolder = fileparts(matlab.desktop.editor.getActiveFilename);
pathtomainfolder = pathtomainfolder(1:end-12);

path_original_face = [pathtomainfolder 'Dataset/Faces/'];
path_detected_face = [pathtomainfolder 'Dataset/Detected Faces/'];


%% Detecting Faces for Each User

for i = 1:200 %% total users are 200
    for j = 1:3 %% total samples per user is 3
        Current_Face_Image = imread([path_original_face 'Subject ' int2str(i) '/Subject' int2str(i) '_000' int2str(j) '.jpg']);       
        figure,
        imshow(Current_Face_Image)
    end

        %% Running the face detector.
        bbox = step(faceDetector, Current_Face_Image);
    
        detected_Face = Current_Face_Image(bbox(2):(bbox(2)+bbox(4)),bbox(1):(bbox(1)+bbox(3)),:);
        figure,
        imshow(detected_Face)
    end
        %% Saving the detected Face
        
        if j==1 
           mkdir([path_detected_face 'Subject ' int2str(i)]) 
        end        
       imwrite(detected_Face,[path_detected_face 'Subject ' int2str(i) '/Subject' int2str(i) '_000' int2str(j) '.jpg']);  
      
