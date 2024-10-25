clc
clear all
close all

%% Computing D-Prime with LBP based face recognition system

%%% Path to LBP Scores

pathtomainfolder = fileparts(matlab.desktop.editor.getActiveFilename);
pathtomainfolder = pathtomainfolder(1:end-12);

%%% Load LBP Scores

load([pathtomainfolder 'Scores/LBP/Genuine_Scores.mat']);

load([pathtomainfolder 'Scores/LBP/Impostor_Scores.mat']);

%%% Computing Mean of Genuine Scores

Genuine_Mean_lbp = mean(mean(Genuine_Scores));

Genuine_Standard_Deviation_lbp = std2(Genuine_Scores);

%%% Computing Mean of Impostor Scores

Impostor_Mean_lbp = mean(mean(Impostor_Scores));

Impostor_Standard_Deviation_lbp = std2(Impostor_Scores);

%%% Computing D-Prime Value for LBP

Estimated_D_Prime_LBP = abs(Genuine_Mean_lbp - Impostor_Mean_lbp)/sqrt((Genuine_Standard_Deviation_lbp^2 + Impostor_Standard_Deviation_lbp^2)/2)


%% Computing D-Prime with MLBP based face recognition system

%%% Path to MLBP Scores

pathtomainfolder = fileparts(matlab.desktop.editor.getActiveFilename);
pathtomainfolder = pathtomainfolder(1:end-12);

%%% Load MLBP Scores

load([pathtomainfolder 'Scores/MLBP/Genuine_Scores.mat']);

load([pathtomainfolder 'Scores/MLBP/Impostor_Scores.mat']);

%%% Computing Mean of Genuine Scores

Genuine_Mean_mlbp = mean(mean(Genuine_Scores));

Genuine_Standard_Deviation_mlbp = std2(Genuine_Scores);

%%% Computing Mean of Impostor Scores

Impostor_Mean_mlbp = mean(mean(Impostor_Scores));

Impostor_Standard_Deviation_mlbp = std2(Impostor_Scores);

%%% Computing D-Prime Value for MLBP

Estimated_D_Prime_MLBP = abs(Genuine_Mean_mlbp - Impostor_Mean_mlbp)/sqrt((Genuine_Standard_Deviation_mlbp^2 + Impostor_Standard_Deviation_mlbp^2)/2)


%% Computing D-Prime with BSIF based face recognition system

%%% Path to BSIF Scores

pathtomainfolder = fileparts(matlab.desktop.editor.getActiveFilename);
pathtomainfolder = pathtomainfolder(1:end-12);

%%% Load BSIF Scores

load([pathtomainfolder 'Scores/BSIF/Genuine_Scores.mat']);

load([pathtomainfolder 'Scores/BSIF/Impostor_Scores.mat']);

%%% Computing Mean of Genuine Scores

Genuine_Mean_bsif = mean(mean(Genuine_Scores));

Genuine_Standard_Deviation_bsif = std2(Genuine_Scores);

%%% Computing Mean of Impostor Scores

Impostor_Mean_bsif = mean(mean(Impostor_Scores));

Impostor_Standard_Deviation_bsif = std2(Impostor_Scores);

%%% Computing D-Prime Value for BSIF

Estimated_D_Prime_BSIF = abs(Genuine_Mean_bsif - Impostor_Mean_bsif)/sqrt((Genuine_Standard_Deviation_bsif^2 + Impostor_Standard_Deviation_bsif^2)/2)