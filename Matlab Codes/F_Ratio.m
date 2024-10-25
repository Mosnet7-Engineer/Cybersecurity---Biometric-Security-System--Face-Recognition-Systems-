clc
clear all
close all

%% Computing F-Ratio with LBP based face recognition system

%%% Path to LBP Scores

pathtomainfolder = fileparts(matlab.desktop.editor.getActiveFilename);
pathtomainfolder = pathtomainfolder(1:end-12);

%%% Load LBP Scores

load([pathtomainfolder 'Scores/LBP/Genuine_Scores.mat']);

load([pathtomainfolder 'Scores/LBP/Impostor_Scores.mat']);

%%% Computing Mean and Standard Deviation of Genuine Scores

Genuine_Mean_lbp = mean(mean(Genuine_Scores));

Genuine_Standard_Deviation_lbp = std2(Genuine_Scores);

%%% Computing Mean and Standard Deviation of Impostor Scores

Impostor_Mean_lbp = mean(mean(Impostor_Scores));

Impostor_Standard_Deviation_lbp = std2(Impostor_Scores);

%%% Computing F-Ratio Value for LBP

Estimated_F_Ratio_LBP = abs((Genuine_Mean_lbp - Impostor_Mean_lbp)/(Genuine_Standard_Deviation_lbp + Impostor_Standard_Deviation_lbp))


%% Computing F-Ratio with MLBP based face recognition system

%%% Path to MLBP Scores

pathtomainfolder = fileparts(matlab.desktop.editor.getActiveFilename);
pathtomainfolder = pathtomainfolder(1:end-12);

%%% Load MLBP Scores

load([pathtomainfolder 'Scores/MLBP/Genuine_Scores.mat']);

load([pathtomainfolder 'Scores/MLBP/Impostor_Scores.mat']);

%%% Computing Mean and Standard Deviation of Genuine Scores

Genuine_Mean_mlbp = mean(mean(Genuine_Scores));

Genuine_Standard_Deviation_mlbp = std2(Genuine_Scores);

%%% Computing Mean and Standard Deviation of Impostor Scores

Impostor_Mean_mlbp = mean(mean(Impostor_Scores));

Impostor_Standard_Deviation_mlbp = std2(Impostor_Scores);

%%% Computing F-Ratio Value for MLBP

Estimated_F_Ratio_MLBP = abs((Genuine_Mean_mlbp - Impostor_Mean_mlbp)/(Genuine_Standard_Deviation_mlbp + Impostor_Standard_Deviation_mlbp))



%% Computing F-Ratio with BSIF based face recognition system

%%% Path to BSIF Scores

pathtomainfolder = fileparts(matlab.desktop.editor.getActiveFilename);
pathtomainfolder = pathtomainfolder(1:end-12);

%%% Load MLBP Scores

load([pathtomainfolder 'Scores/BSIF/Genuine_Scores.mat']);

load([pathtomainfolder 'Scores/BSIF/Impostor_Scores.mat']);

%%% Computing Mean and Standard Deviation of Genuine Scores

Genuine_Mean_bsif = mean(mean(Genuine_Scores));

Genuine_Standard_Deviation_bsif = std2(Genuine_Scores);


%%% Computing Mean and Standard Deviation of Impostor Scores

Impostor_Mean_bsif = mean(mean(Impostor_Scores));

Impostor_Standard_Deviation_bsif = std2(Impostor_Scores);

%%% Computing F-Ratio Value for MLBP

Estimated_F_Ratio_BSIF = abs((Genuine_Mean_bsif - Impostor_Mean_bsif)/(Genuine_Standard_Deviation_bsif + Impostor_Standard_Deviation_bsif))

