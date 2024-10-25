function Features_BSIF = Compute_BSIF_Features(img)
         if size(img,3) == 3
            img =rgb2gray(img); 
         end
         filename=['./texturefilters/ICAtextureFilters_11x11_12bit'];
         load(filename, 'ICAtextureFilters');
         % normalized BSIF code word histogram
         Features_BSIF = bsif(img, ICAtextureFilters,'nh');
     
       