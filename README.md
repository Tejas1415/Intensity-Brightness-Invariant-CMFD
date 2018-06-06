# Intensity-Brightness-Invariant-CMFD

Coded by Tejas K, Submitted to IEEE transactions on Image forensics and security journal.

An algorithm that is completely robust to Intensity/ Brightness varied copy move forgery is proposed in this algorithm.

 This is the most premitive method of doing the objective, which gives High accuracy but less robustness. 
 Another effective method is proposed for the same objective using DCT to extractfeatures. 
 This is more robust to post-processing tecniques but yeilds results with lesser accuracy than the proposed algorithm.
 (DCT code is uploaded in a disparate repository). Check it out here:
 https://github.com/Tejas1415/Discreet-Cosine-Transform-DCT-Singular-Value-Decomposition-SVD-based-Copy-Move-Forgery-Detection

Copy-Move Forgery detection is a hot topic among image processing/ computer vision researchers. There are dozens of papers published everyday trying to improve the robustness of the algorithm, speed of execution and feature vector dimension reductionality purposes.

Although, Copy move forgery detection fails in the cases where the copied region is subjected to major manipulation such as rotation, rescaling, blurring, noise, intensity variation, contrast change etc. Eg: If a part of the image is copied, rescaled and pasted in a different part of the same image, then the existing state of art techniques fail to detect the forgery due to de-synchronisation among the pixels.

In Recent years, among different copy tamper move forgeries, a few were solved individually by some of the researchers:
1. Copy-rotate-move forgery was detected using Hu's invariant moments in 2011.
2. Later many algorithms came up which were robust against noise and minor manipulations.
3. Copy-blur-move forgery was solved in early 2018 by Dixit et al using SVD-SWT algorithm.

### Research Gap: Though, some algorithms were developed robust against major tampering techniques, Copy - rescale - Move forgery and intensity varied copy move forgery detecting algorithms were not developed till the present date. Hence, I have made an attempt during my Capstone to solve the above two in two disparate algorithms. 

The codes have been uploaded seperatly. 

This being my 6th research publication, I have submitted the paper to IEEE transactions Journal and awaiting the results from them.
