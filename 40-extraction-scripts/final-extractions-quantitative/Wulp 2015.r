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
res$bibTexKey <- "Wulp2015"

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
res$sample$samplingDesign <- "cross-sectional";	 ### 'longitudinal' vs 'cross-sectional'
res$sample$samplingAselect <- FALSE; ### can also be TRUE
res$sample$samplingPregnant <- TRUE; ### TRUE if the sample includes pregnant women, can also be FALSE
res$sample$samplingPregnantAlcohol <- NA;	 ### TRUE if the sample includes pregnant women who also drink alcohol, can also be FALSE
res$sample$recruitmentSetting <- "midwifery practices"; ### For example "antenatal clinic",or NA

### Sample Method
res$sample$native <- NA; ### TRUE for native/aboriginal populations (e.g. inuit, aboriginals, etc)

### Description of sample, in text
res$sample$description <- "pregnant women and partners"

### Description of geography of sample, in text
res$sample$geography <- "Netherlands"

### Study year, in text
res$sample$year <- 2009;

### Sample size, as a number
res$sample$size <- 158;     ## 114 used alcohol

### SUBSAMPLES - REMOVE THIS SECTION IF THERE ARE NO SUBSAMPLES

### Indicate which information you want to override. Specify the subsample
### you're providing new data for in the single quotes between the double
### brackets; make sure the spelling is exactly identical to the list above.
### Use NA to specify data that should not be overridden.

res$subsample[[length(res$subsample) + 1]] <- list( ### Create object for this subsample
  name = NA,
  description = NA,
  size = NA                              ### Additional variables specified as univariate data for this subsample
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
  variable = "variable name",       ### Name of variable this result pertains to
  subsample = NA,                   ### Name of relevant subsample, or NA
  value = NA,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = NA,                  ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);

##########################################################################


##########################################################################
### MEASUREMENTS AND MANIPULATIONS: THE VARIABLES IN THE STUDY
##########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Alcohol use during pregnancy can lead to brain damage of the unborn child",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  description = "Alcohol use during pregnancy can lead to brain damage of the unborn child (p.910,912)",					###	Provide the full description of the variable (e.g., questionnaire question)
 
####################################### ONLY FOR DETERMINANTS OF MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "self-report",        ### "self-report" or "interview"
  timeframe = NA,                   ### "retrospective" vs "concurrent" 
  period = NA,               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  determinant_original = "knowledge",		### If reported, how do the authors categorized the determinant, e.g., "knowledge", "attitude", "risk perception"
  determinant_recode = "risk perception",			### Determinant recoded after expert meeting 
  determinant_target = "other",			###	"self", "other", or both "self,other"
  determinant_direction = "negative",		###	Indication if the direction of the determinant is "positive", "negative" or "unclear"
  determinant_consistent = "A",		###	Indication if the direction of the determinant is (in)consistent or unclear with the target/contrast behaviour  
  determinant_inconsistent = "MD",	### Behaviours are categorised as follows: "A" for abstinence, "M" for moderating drinking, and "D" for drinking   
  comment = NA                      ### Comment, as text; or NA;
);
##########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Perceived likelihood that the baby would experience harm",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  description = "Perceived likelihood that the baby would experience harm (p.910, 912) ",					###	Provide the full description of the variable (e.g., questionnaire question)
 
####################################### ONLY FOR DETERMINANTS OF MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "self-report",        ### "self-report" or "interview"
  timeframe = NA,                   ### "retrospective" vs "concurrent" 
  period = NA,               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  determinant_original = "risk perception",		### If reported, how do the authors categorized the determinant, e.g., "knowledge", "attitude", "risk perception"
  determinant_recode = "Susceptibility to risk,harm",			### Determinant recoded after expert meeting 
  determinant_target = "other",			###	"self", "other", or both "self,other"
  determinant_direction = "negative",		###	Indication if the direction of the determinant is "positive", "negative" or "unclear"
  determinant_consistent = "A",		###	Indication if the direction of the determinant is (in)consistent or unclear with the target/contrast behaviour  
  determinant_inconsistent = "MD",	### Behaviours are categorised as follows: "A" for abstinence, "M" for moderating drinking, and "D" for drinking   
  comment = NA                      ### Comment, as text; or NA;
);
##########################################################################


res$variable[[length(res$variable) + 1]] <- list(
  variable = "Perceived severity of harm to the baby resulting from prenatal consumption of one standard glass of alcohol",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  description = "Perceived severity of harm to the baby resulting from prenatal consumption of one standard glass of alcohol(p.910,912)",					###	Provide the full description of the variable (e.g., questionnaire question)
 
####################################### ONLY FOR DETERMINANTS OF MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "self-report",        ### "self-report" or "interview"
  timeframe = NA,                   ### "retrospective" vs "concurrent" 
  period = NA,               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  determinant_original = "risk perception",		### If reported, how do the authors categorized the determinant, e.g., "knowledge", "attitude", "risk perception"
  determinant_recode = "severity of risk,harm",			### Determinant recoded after expert meeting 
  determinant_target = "other",			###	"self", "other", or both "self,other"
  determinant_direction = "negative",		###	Indication if the direction of the determinant is "positive", "negative" or "unclear"
  determinant_consistent = "A",		###	Indication if the direction of the determinant is (in)consistent or unclear with the target/contrast behaviour  
  determinant_inconsistent = "MD",	### Behaviours are categorised as follows: "A" for abstinence, "M" for moderating drinking, and "D" for drinking   
  comment = NA                      ### Comment, as text; or NA;
);

##########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Advantages of not drinking: not drinking alcohol in pregnancy is better for my baby's health",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  description = "Advantages of not drinking: not drinking alcohol in pregnancy is better for my baby's health (p.910,912) ",					###	Provide the full description of the variable (e.g., questionnaire question)
 
####################################### ONLY FOR DETERMINANTS OF MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "self-report",        ### "self-report" or "interview"
  timeframe = NA,                   ### "retrospective" vs "concurrent" 
  period = NA,               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  determinant_original = "attitude",		### If reported, how do the authors categorized the determinant, e.g., "knowledge", "attitude", "risk perception"
  determinant_recode = "attitude",			### Determinant recoded after expert meeting 
  determinant_target = "other",			###	"self", "other", or both "self,other"
  determinant_direction = "positive",		###	Indication if the direction of the determinant is "positive", "negative" or "unclear"
  determinant_consistent = "A",		###	Indication if the direction of the determinant is (in)consistent or unclear with the target/contrast behaviour  
  determinant_inconsistent = "MD",	### Behaviours are categorised as follows: "A" for abstinence, "M" for moderating drinking, and "D" for drinking   
  comment = NA                      ### Comment, as text; or NA;
);

##########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Disadvantages of not drinking: If I do not drink alcohol in pregnancy I feel more stressed",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  description = "Disadvantages of not drinking: If I do not drink alcohol in pregnancy I feel more stressed (p.910,912)",					###	Provide the full description of the variable (e.g., questionnaire question)
 
####################################### ONLY FOR DETERMINANTS OF MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "self-report",        ### "self-report" or "interview"
  timeframe = NA,                   ### "retrospective" vs "concurrent" 
  period = NA,               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  determinant_original = "attitude",		### If reported, how do the authors categorized the determinant, e.g., "knowledge", "attitude", "risk perception"
  determinant_recode = "attitude",			### Determinant recoded after expert meeting 
  determinant_target = "self",			###	"self", "other", or both "self,other"
  determinant_direction = "negative",		###	Indication if the direction of the determinant is "positive", "negative" or "unclear"
  determinant_consistent = "A",		###	Indication if the direction of the determinant is (in)consistent or unclear with the target/contrast behaviour  
  determinant_inconsistent = "MD",	### Behaviours are categorised as follows: "A" for abstinence, "M" for moderating drinking, and "D" for drinking   
  comment = NA                      ### Comment, as text; or NA;
);

##########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Indicate the level of difficulty with abstaining from alcohol during pregnancy",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  description = "Indicate the level of difficulty with abstaining from alcohol during pregnancy (e.g., when my friends are drinking)(p.910,912)",					###	Provide the full description of the variable (e.g., questionnaire question)
 
####################################### ONLY FOR DETERMINANTS OF MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "self-report",        ### "self-report" or "interview"
  timeframe = NA,                   ### "retrospective" vs "concurrent" 
  period = NA,               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  determinant_original = "self efficacy",		### If reported, how do the authors categorized the determinant, e.g., "knowledge", "attitude", "risk perception"
  determinant_recode = "social self efficacy",			### Determinant recoded after expert meeting 
  determinant_target = "self",			###	"self", "other", or both "self,other"
  determinant_direction = "negative",		###	Indication if the direction of the determinant is "positive", "negative" or "unclear"
  determinant_consistent = "A",		###	Indication if the direction of the determinant is (in)consistent or unclear with the target/contrast behaviour  
  determinant_inconsistent = "MD",	### Behaviours are categorised as follows: "A" for abstinence, "M" for moderating drinking, and "D" for drinking   
  comment = NA                      ### Comment, as text; or NA;
);

##########################################################################


res$variable[[length(res$variable) + 1]] <- list(
  variable = "Indicate the level of difficulty with abstaining from alcohol during pregnancy",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  description = "Indicate the level of difficulty with abstaining from alcohol during pregnancy (e.g., when I am feeling sad) (p.910,912)",					###	Provide the full description of the variable (e.g., questionnaire question)
 
####################################### ONLY FOR DETERMINANTS OF MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "self-report",        ### "self-report" or "interview"
  timeframe = NA,                   ### "retrospective" vs "concurrent" 
  period = NA,               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  determinant_original = "self efficacy",		### If reported, how do the authors categorized the determinant, e.g., "knowledge", "attitude", "risk perception"
  determinant_recode = "stress self efficacy",			### Determinant recoded after expert meeting 
  determinant_target = "self",			###	"self", "other", or both "self,other"
  determinant_direction = "negative",		###	Indication if the direction of the determinant is "positive", "negative" or "unclear"
  determinant_consistent = "A",		###	Indication if the direction of the determinant is (in)consistent or unclear with the target/contrast behaviour  
  determinant_inconsistent = "MD",	### Behaviours are categorised as follows: "A" for abstinence, "M" for moderating drinking, and "D" for drinking   
  comment = NA                      ### Comment, as text; or NA;
);

##########################################################################


res$variable[[length(res$variable) + 1]] <- list(
  variable = "Women's perception of her partner's influence: my partner considers it important that I do not drink alcohol in pregnancy",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  description = "Women's perception of her partner's influence: my partner considers it important that I do not drink alcohol in pregnancy (p.910,912)",					###	Provide the full description of the variable (e.g., questionnaire question)
 
####################################### ONLY FOR DETERMINANTS OF MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "self-report",        ### "self-report" or "interview"
  timeframe = NA,                   ### "retrospective" vs "concurrent" 
  period = NA,               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  determinant_original = "social influence",		### If reported, how do the authors categorized the determinant, e.g., "knowledge", "attitude", "risk perception"
  determinant_recode = "injunctive, subjective norm",			### Determinant recoded after expert meeting 
  determinant_target = "self",			###	"self", "other", or both "self,other"
  determinant_direction = "positive",		###	Indication if the direction of the determinant is "positive", "negative" or "unclear"
  determinant_consistent = "A",		###	Indication if the direction of the determinant is (in)consistent or unclear with the target/contrast behaviour  
  determinant_inconsistent = "MD",	### Behaviours are categorised as follows: "A" for abstinence, "M" for moderating drinking, and "D" for drinking   
  comment = NA                      ### Comment, as text; or NA;
);

##########################################################################


res$variable[[length(res$variable) + 1]] <- list(
  variable = "Women's perception of her partner's influence: my partner does not drink alcohol in my presence",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  description = "Women's perception of her partner's influence: my partner does not drink alcohol in my presence (p.910,912)",					###	Provide the full description of the variable (e.g., questionnaire question)
 
####################################### ONLY FOR DETERMINANTS OF MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "self-report",        ### "self-report" or "interview"
  timeframe = NA,                   ### "retrospective" vs "concurrent" 
  period = NA,               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  determinant_original = "social influence",		### If reported, how do the authors categorized the determinant, e.g., "knowledge", "attitude", "risk perception"
  determinant_recode = "descriptive norm",			### Determinant recoded after expert meeting 
  determinant_target = "self",			###	"self", "other", or both "self,other"
  determinant_direction = "positive",		###	Indication if the direction of the determinant is "positive", "negative" or "unclear"
  determinant_consistent = "A",		###	Indication if the direction of the determinant is (in)consistent or unclear with the target/contrast behaviour  
  determinant_inconsistent = "MD",	### Behaviours are categorised as follows: "A" for abstinence, "M" for moderating drinking, and "D" for drinking   
  comment = NA                      ### Comment, as text; or NA;
);

##########################################################################


res$variable[[length(res$variable) + 1]] <- list(
  variable = "Women's perception of her partner's influence: my partner supports me in drinking no alcohol during pregnancy",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  description = "Women's perception of her partner's influence: my partner supports me in drinking no alcohol during pregnancy (p.910,912)",					###	Provide the full description of the variable (e.g., questionnaire question)
 
####################################### ONLY FOR DETERMINANTS OF MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "self-report",        ### "self-report" or "interview"
  timeframe = NA,                   ### "retrospective" vs "concurrent" 
  period = NA,               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  determinant_original = "social influence",		### If reported, how do the authors categorized the determinant, e.g., "knowledge", "attitude", "risk perception"
  determinant_recode = "social support",			### Determinant recoded after expert meeting 
  determinant_target = "self",			###	"self", "other", or both "self,other"
  determinant_direction = "positive",		###	Indication if the direction of the determinant is "positive", "negative" or "unclear"
  determinant_consistent = "A",		###	Indication if the direction of the determinant is (in)consistent or unclear with the target/contrast behaviour  
  determinant_inconsistent = "MD",	### Behaviours are categorised as follows: "A" for abstinence, "M" for moderating drinking, and "D" for drinking   
  comment = NA                      ### Comment, as text; or NA;
);


##########################################################################


res$variable[[length(res$variable) + 1]] <- list(
  variable = "Received midwife's advise not to drink",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  description = "Received midwife's advise not to drink (p.912)",					###	Provide the full description of the variable (e.g., questionnaire question)
 
####################################### ONLY FOR DETERMINANTS OF MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "self-report",        ### "self-report" or "interview"
  timeframe = NA,                   ### "retrospective" vs "concurrent" 
  period = NA,               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  determinant_original = "information",		### If reported, how do the authors categorized the determinant, e.g., "knowledge", "attitude", "risk perception"
  determinant_recode = "injunctive norm",			### Determinant recoded after expert meeting 
  determinant_target = "self",			###	"self", "other", or both "self,other"
  determinant_direction = "positive",		###	Indication if the direction of the determinant is "positive", "negative" or "unclear"
  determinant_consistent = "A",		###	Indication if the direction of the determinant is (in)consistent or unclear with the target/contrast behaviour  
  determinant_inconsistent = "MD",	### Behaviours are categorised as follows: "A" for abstinence, "M" for moderating drinking, and "D" for drinking   
  comment = NA                      ### Comment, as text; or NA;
);

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