%% Paired-Sample t-Test  

%% 
% Load the pre and post tDCS MEG tPAC data . Create vectors containing the 39 columns
% of the data matrix to representing tPAC.

Pre = PAC_Pre_L_ent_cortex.sPAC.DynamicPAC;
Post = PAC_Post_L_ent_cortex.sPAC.DynamicPAC;  

%% 
% Test the null hypothesis that the pairwise difference between data vectors
% |Pre| and |Post| has a mean equal to zero. Positive T indicates Pre>Post
% and negative values refers to Post>Pre
[h,p, ci, stats] = ttest(Pre,Post,'Alpha',0.0012) 

%%
% The returned value of |h = 0| indicates that |ttest| does not reject the
% null hypothesis at the default 5% significance level (0.05/39=0.0012).   

