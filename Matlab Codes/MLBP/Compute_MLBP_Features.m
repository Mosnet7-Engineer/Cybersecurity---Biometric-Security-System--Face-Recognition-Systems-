function Features_MLBP = Compute_MLBP_Features(img)
         if size(img,3) == 3
             img = rgb2gray(img);
         end
         
        Ps=[8,8,8];
        Rs=[4,3,2];  
        BlockSize = [20,20];
        for i=1:length(Ps)
            patternMapping{i} = getmapping(Ps(i),'u2');
        end
        
        Features_MLBP = GetMultiscaleLBP(img,BlockSize,Rs,Ps,patternMapping,0);
   