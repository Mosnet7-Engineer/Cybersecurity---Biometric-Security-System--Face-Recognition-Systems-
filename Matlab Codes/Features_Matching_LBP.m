clc
clear all
close all

%% Path to Faces Features

pathtomainfolder = fileparts(matlab.desktop.editor.getActiveFilename);
pathtomainfolder = pathtomainfolder(1:end-12);

path_features = [pathtomainfolder 'Features/LBP/'];
path_scores = [pathtomainfolder 'Scores/LBP/'];


%% Computing Genuine Scores

for i = 1:200 %% total users are 200
    for j = 1:3 %% total samples per user is 3
        T_Face_Feature = load([path_features 'Subject ' int2str(i) '/Subject' int2str(i) '_0001']);
        template = T_Face_Feature.Features_of_Current_Face;
        clear T_Face_Feature
         if j > 1
            G_Face_Feature = load([path_features 'Subject ' int2str(i) '/Subject' int2str(i) '_000' int2str(j)]);
            gallery = G_Face_Feature.Features_of_Current_Face;
            Genuine_Scores(i,j-1) = dist_chi2(template,gallery);
         end
    end
end

%% Computing Impostor Scores
for i = 1:200 %% total users are 200
    T_Face_Feature = load([path_features 'Subject ' int2str(i) '/Subject' int2str(i) '_0001']);
    template = T_Face_Feature.Features_of_Current_Face;
    clear T_Face_Feature
    count_imp = 0;
    for k = 1:200 %% total users are 200
        if i ~= k
            for l = 1:3 %% total samples per user is 3
                G_Face_Feature = load([path_features 'Subject ' int2str(k) '/Subject' int2str(k) '_000' int2str(l)]);
                gallery = G_Face_Feature.Features_of_Current_Face;
                count_imp = count_imp + 1;
                Impostor_Scores(i,count_imp) = dist_chi2(template,gallery);
            end
        end
    end
end

save(['' path_scores 'Genuine_Scores.mat' ''],'Genuine_Scores') 
save(['' path_scores 'Impostor_Scores.mat' ''],'Impostor_Scores')

