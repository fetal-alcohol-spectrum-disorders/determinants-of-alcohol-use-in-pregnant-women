##########################################################################
###
### R file for the FASD Synthesis systematic review.
### ###
### INSTRUCTIONS:
### Work through the sections below, and complete the information. There
### are three types of information:
###   - Text:   this can be any content; has to be in between double quotes.
###   - Number: Any number; cannot contain any other  characters, should not be quoted.
###   - NA:     For missing information, just use NA, always without quotes (just
###             the two characters NA).
###   – Vector: Lists of either numbers of text elements; see the instructions!
###
##########################################################################

res <- list();             ### Generate object to store data
res$sample <- list();      ### Generate object to store sample information
res$subsample <- list();   ### Generate object to store subsamples
res$variable <- list();    ### Generate object to store variables
res$univariate <- list();  ### Generate object to store univariate data
res$association <- list(); ### Generate object to store association data
class(res) <- "sysRevExtractionObject"; ### Set class of object

##########################################################################
### BIBTEX KEY
##########################################################################

### Store the Bibtex key as text
res$bibTexKey <- "Kristjanson2007"

##########################################################################
##########################################################################
###
###  GENERAL INFORMATION / COMMENTS ON THIS STUDY:
###
res$generalComments <- "

You can enter comments here.

";### Make sure this line starts with a double quote and a semicolon (";)
##########################################################################
##########################################################################


##########################################################################
### SAMPLING AND SAMPLE DESCRIPTION
##########################################################################

### Description of sampling method
res$sample$samplingDesign <- NA;	 ### 'longitudinal' vs 'cross-sectional'
res$sample$samplingAselect <- FALSE; ### can also be TRUE
res$sample$samplingPregnant <- TRUE; ### TRUE if the sample includes pregnant women, can also be FALSE
res$sample$samplingPregnantAlcohol <- NA;	 ### TRUE if the sample includes pregnant women who also drink alcohol, can also be FALSE
res$sample$recruitmentSetting <- "workplaces, schools, OB/GYN clinics, hospitals"; ### For example "antenatal clinic",or NA

### Sample Method
res$sample$native <- NA; ### TRUE for native/aboriginal populations (e.g. inuit, aboriginals, etc)

### Description of sample, in text
res$sample$description <- "Description of sample"

### Description of geography of sample, in text
res$sample$geography <- "Russia"

### Study year, in text
res$sample$year <- 1999;
res$sample$endyear <- 2000;

### Sample size, as a number
res$sample$size <- 200;				# Total sample is 899, but 200 are pregnant women. Moreover, 118 drank during pregnancy.

### SUBSAMPLES - REMOVE THIS SECTION IF THERE ARE NO SUBSAMPLES

### Indicate which information you want to override. Specify the subsample
### you're providing new data for in the single quotes between the double
### brackets; make sure the spelling is exactly identical to the list above.
### Use NA to specify data that should not be overridden.

res$subsample[[length(res$subsample) + 1]] <- list( ### Create object for this subsample
  name = "drank during pregnancy",
  description = NA,
  size = 118                              ### Additional variables specified as univariate data for this subsample
)

##########################################################################
### METHODOLOGICAL INFORMATION
##########################################################################

### Specify how the data was collected ("qualitative" or "quantitative", or "both")
res$datacollectionmethod <- "quantitative";

### Specify how many measurement moments the study has, as a number (of
### course, this will just be 1 for most studies)
res$measurementMoments <- 1

### For each measurement moment, specify the number of days since the
### first measurement moment. This is a vector of days; e.g., for three
### measurement moments, each a month apart, this would be:
### res$measurementTimes <- c(0, 30, 60);
res$measurementTimes <- c(0)


##########################################################################
### ASSOCIATIONS: CORRELATIONS, T-TESTS, CHI-SQUARES, ETC
##########################################################################

res$association[[length(res$association) + 1]] <- list(
  variable1 = "Variablename 1",     ### Name of first variable
  var1values = NA,                  ### Values of var 1 in this analysis (e.g. post-hoc)
  var1moment = 1,                   ### Measurement moment of var 1
  variable2 = "Variablename 2",     ### Name of second variable
  var2values = NA,                  ### Values of var 2 in this analysis (e.g. post-hoc)
  var2moment = 1,                   ### Measurement moment of var 2
  subsample = NA,                   ### Name of relevant subsample
  df1 = NA,                         ### degrees of freedom (numerator)
  df2 = NA,                         ### for anova, second degrees of freedom (denominator)
  t = NA,                           ### t-value
  F = NA,                           ### F-value
  chisq = NA,                       ### Chi square value
  r = NA,                           ### Pearson correlation
  d = NA,                           ### Cohen's d value
  etasq = NA,                       ### Eta squared value
  OR = NA,                          ### Odds ratio
  p = NA,                           ### P-value (if nothing else is available)
  covariates = 0,                   ### Number of covariates (for multivariate analyses)
  comment = NA                      ### Comment (e.g. calculation, page, etc)
);

##########################################################################


##########################################################################
### UNIVARIATE RESULTS: PERCENTAGES, MEANS, ETC
##########################################################################

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "heavy drinking increases changes of miscarriage",       ### Name of variable this result pertains to
  subsample = "drank during pregnancy",                   ### Name of relevant subsample, or NA
  value = NA,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 92.3,                  ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "heavy drinking increases changes of mental retardation",       ### Name of variable this result pertains to
  subsample = "drank during pregnancy",                   ### Name of relevant subsample, or NA
  value = NA,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 99.2,                  ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "heavy drinking increases changes of low birth weight",       ### Name of variable this result pertains to
  subsample = "drank during pregnancy",                   ### Name of relevant subsample, or NA
  value = NA,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 82.2,                  ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "heavy drinking increases changes of birth defects",       ### Name of variable this result pertains to
  subsample = "drank during pregnancy",                   ### Name of relevant subsample, or NA
  value = NA,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 90.7,                  ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "heard of FAS",       ### Name of variable this result pertains to
  subsample = "drank during pregnancy",                   ### Name of relevant subsample, or NA
  value = NA,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 32.2,                  ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "FAS is a baby born drunk",       ### Name of variable this result pertains to
  subsample = "drank during pregnancy",                   ### Name of relevant subsample, or NA
  value = NA,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 1.7,                  ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "FAS is a baby born addicted to alcohol",       ### Name of variable this result pertains to
  subsample = "drank during pregnancy",                   ### Name of relevant subsample, or NA
  value = NA,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 23.7,                  ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "FAS is a baby born with birth defects",       ### Name of variable this result pertains to
  subsample = "drank during pregnancy",                   ### Name of relevant subsample, or NA
  value = NA,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 74.6,                  ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);

##########################################################################


##########################################################################
### MEASUREMENTS AND MANIPULATIONS: THE VARIABLES IN THE STUDY
##########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "heavy drinking increases changes of miscarriage",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  description = "Heavy drinking during pregnancy increases chances of miscarriage (p.304 table 4)" , ###Provide the full description of the variable (e.g., questionnaire question)
 
####################################### ONLY FOR DETERMINANTS OF MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "self-report",    ### "self-report" or "interview"
  timeframe = NA,                   ### "retrospective" vs "concurrent" 
  period = NA,               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  determinant_original = "knowledge",		### If reported, how do the authors categorized the determinant, e.g., "knowledge", "attitude", "risk perception"
  determinant_recode = "risk perception",	### Determinant recoded after expert meeting 
  determinant_target = "self",			###	"self", "other", or both "self,other"
  determinant_direction = "negative",		###	Indication if the direction of the determinant is "positive", "negative" or "unclear"
  determinant_consistent = "AM",		###	Indication if the direction of the determinant is (in)consistent or unclear with the target/contrast behaviour  
  determinant_inconsistent = "D",	### Behaviours are categorised as follows: "A" for abstinence, "M" for moderating drinking, and "D" for drinking   
  comment = NA                      ### Comment, as text; or NA;
);
##########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "heavy drinking increases changes of mental retardation",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  description = "Heavy drinking during pregnancy increases chances of mental retardation(p.304 table 4)" , ###Provide the full description of the variable (e.g., questionnaire question)
 
####################################### ONLY FOR DETERMINANTS OF MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "self-report",    ### "self-report" or "interview"
  timeframe = NA,                   ### "retrospective" vs "concurrent" 
  period = NA,               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  determinant_original = "knowledge",		### If reported, how do the authors categorized the determinant, e.g., "knowledge", "attitude", "risk perception"
  determinant_recode = "risk perception",	### Determinant recoded after expert meeting 
  determinant_target = "other",			###	"self", "other", or both "self,other"
  determinant_direction = "negative",		###	Indication if the direction of the determinant is "positive", "negative" or "unclear"
  determinant_consistent = "AM",		###	Indication if the direction of the determinant is (in)consistent or unclear with the target/contrast behaviour  
  determinant_inconsistent = "D",	### Behaviours are categorised as follows: "A" for abstinence, "M" for moderating drinking, and "D" for drinking   
  comment = NA                      ### Comment, as text; or NA;
);
##########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "heavy drinking increases changes of low birth weight",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  description = "Heavy drinking during pregnancy increases chances of low birth weight (p.304 table 4)" , ###Provide the full description of the variable (e.g., questionnaire question)
 
####################################### ONLY FOR DETERMINANTS OF MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "self-report",    ### "self-report" or "interview"
  timeframe = NA,                   ### "retrospective" vs "concurrent" 
  period = NA,               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  determinant_original = "knowledge",		### If reported, how do the authors categorized the determinant, e.g., "knowledge", "attitude", "risk perception"
  determinant_recode = "risk perception",	### Determinant recoded after expert meeting 
  determinant_target = "other",			###	"self", "other", or both "self,other"
  determinant_direction = "negative",		###	Indication if the direction of the determinant is "positive", "negative" or "unclear"
  determinant_consistent = "AM",		###	Indication if the direction of the determinant is (in)consistent or unclear with the target/contrast behaviour  
  determinant_inconsistent = "D",	### Behaviours are categorised as follows: "A" for abstinence, "M" for moderating drinking, and "D" for drinking   
  comment = NA                      ### Comment, as text; or NA;
);
##########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "heavy drinking increases changes of birth defects",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  description = "Heavy drinking during pregnancy increases chances of birth defects (p.304 table 4)" , ###Provide the full description of the variable (e.g., questionnaire question)
 
####################################### ONLY FOR DETERMINANTS OF MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "self-report",    ### "self-report" or "interview"
  timeframe = NA,                   ### "retrospective" vs "concurrent" 
  period = NA,               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  determinant_original = "knowledge",		### If reported, how do the authors categorized the determinant, e.g., "knowledge", "attitude", "risk perception"
  determinant_recode = "risk perception",	### Determinant recoded after expert meeting 
  determinant_target = "other",			###	"self", "other", or both "self,other"
  determinant_direction = "negative",		###	Indication if the direction of the determinant is "positive", "negative" or "unclear"
  determinant_consistent = "AM",		###	Indication if the direction of the determinant is (in)consistent or unclear with the target/contrast behaviour  
  determinant_inconsistent = "D",	### Behaviours are categorised as follows: "A" for abstinence, "M" for moderating drinking, and "D" for drinking   
  comment = NA                      ### Comment, as text; or NA;
);
##########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "heard of FAS",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  description = "% of women heard of FAS (p.304 table 4) " , ###Provide the full description of the variable (e.g., questionnaire question)
 
####################################### ONLY FOR DETERMINANTS OF MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "self-report",    ### "self-report" or "interview"
  timeframe = NA,                   ### "retrospective" vs "concurrent" 
  period = NA,               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  determinant_original = "knowledge",		### If reported, how do the authors categorized the determinant, e.g., "knowledge", "attitude", "risk perception"
  determinant_recode = "knowledge",	### Determinant recoded after expert meeting 
  determinant_target = "unclear",			###	"self", "other", or both "self,other"
  determinant_direction = "neutral",		###	Indication if the direction of the determinant is "positive", "negative" or "unclear"
  determinant_consistent = NA,		###	Indication if the direction of the determinant is (in)consistent or unclear with the target/contrast behaviour  
  determinant_inconsistent = NA,	### Behaviours are categorised as follows: "A" for abstinence, "M" for moderating drinking, and "D" for drinking   
  comment = NA                      ### Comment, as text; or NA;
);
##########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "FAS is a baby born drunk",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  description = "% women defined FAS as a baby born drunk(p.304 table 4) " , ###Provide the full description of the variable (e.g., questionnaire question)
 
####################################### ONLY FOR DETERMINANTS OF MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "self-report",    ### "self-report" or "interview"
  timeframe = NA,                   ### "retrospective" vs "concurrent" 
  period = NA,               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  determinant_original = "knowledge",		### If reported, how do the authors categorized the determinant, e.g., "knowledge", "attitude", "risk perception"
  determinant_recode = "knowledge",	### Determinant recoded after expert meeting 
  determinant_target = "other",			###	"self", "other", or both "self,other"
  determinant_direction = "negative",		###	Indication if the direction of the determinant is "positive", "negative" or "unclear"
  determinant_consistent = "AM",		###	Indication if the direction of the determinant is (in)consistent or unclear with the target/contrast behaviour  
  determinant_inconsistent = "D",	### Behaviours are categorised as follows: "A" for abstinence, "M" for moderating drinking, and "D" for drinking   
  comment = NA                      ### Comment, as text; or NA;
);
##########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "FAS is a baby born addicted to alcohol",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  description = "% women defined FAS as a baby born addicted to alcohol(p.304 table 4) " , ###Provide the full description of the variable (e.g., questionnaire question)
 
####################################### ONLY FOR DETERMINANTS OF MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "self-report",    ### "self-report" or "interview"
  timeframe = NA,                   ### "retrospective" vs "concurrent" 
  period = NA,               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  determinant_original = "knowledge",		### If reported, how do the authors categorized the determinant, e.g., "knowledge", "attitude", "risk perception"
  determinant_recode = "knowledge",	### Determinant recoded after expert meeting 
  determinant_target = "other",			###	"self", "other", or both "self,other"
  determinant_direction = "negative",		###	Indication if the direction of the determinant is "positive", "negative" or "unclear"
  determinant_consistent = "AM",		###	Indication if the direction of the determinant is (in)consistent or unclear with the target/contrast behaviour  
  determinant_inconsistent = "D",	### Behaviours are categorised as follows: "A" for abstinence, "M" for moderating drinking, and "D" for drinking   
  comment = NA                      ### Comment, as text; or NA;
);
##########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "FAS is a baby born with birth defects",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "logical",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  description = "% women defined FAS as a baby born with birth defects(p.304 table 4) " , ###Provide the full description of the variable (e.g., questionnaire question)
 
####################################### ONLY FOR DETERMINANTS OF MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "self-report",    ### "self-report" or "interview"
  timeframe = NA,                   ### "retrospective" vs "concurrent" 
  period = NA,               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  determinant_original = "knowledge",		### If reported, how do the authors categorized the determinant, e.g., "knowledge", "attitude", "risk perception"
  determinant_recode = "knowledge",	### Determinant recoded after expert meeting 
  determinant_target = "other",			###	"self", "other", or both "self,other"
  determinant_direction = "negative",		###	Indication if the direction of the determinant is "positive", "negative" or "unclear"
  determinant_consistent = "AM",		###	Indication if the direction of the determinant is (in)consistent or unclear with the target/contrast behaviour  
  determinant_inconsistent = "D",	### Behaviours are categorised as follows: "A" for abstinence, "M" for moderating drinking, and "D" for drinking   
  comment = NA                      ### Comment, as text; or NA;
);
##########################################################################


##########################################################################
### END
##########################################################################

### Some verification functions; note that these need the 'userfriendlyscience'
### package to be installed and loaded (with 'require').

### This function checks whether for all variables that are used, the
### operationalisation is also extracted, and vice versa:
#extractionVerification(res);

### For showing the entire dataframes
#print.data.frame(extractionVerification(res)$dat$extractedVariables)
#print.data.frame(extractionVerification(res)$dat$extractedUnivariate)
#print.data.frame(extractionVerification(res)$dat$extractedAssociations)