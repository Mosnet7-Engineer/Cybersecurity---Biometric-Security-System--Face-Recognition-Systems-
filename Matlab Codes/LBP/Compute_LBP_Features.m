function Features_LBP = Compute_LBP_Features(img)
         img = rgb2gray(img); 
         mapping = getmapping(8,'u2'); 
         Features_LBP = lbp(img,1,8,mapping,'h'); %LBP histogram in (8,1) neighborhood
                                  %using uniform patterns

            
