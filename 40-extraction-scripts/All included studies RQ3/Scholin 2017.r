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
res$bibTexKey <- "Scholin2017"

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
res$sample$recruitmentSetting <- NA; ### For example "antenatal clinic",or NA

### Sample Method
res$sample$native <- NA; ### TRUE for native/aboriginal populations (e.g. inuit, aboriginals, etc)

### Description of sample, in text
res$sample$description <- "parents in UK en Sweden"

### Description of geography of sample, in text
res$sample$geography <- "United Kingdom, Sweden"

### Study year, in text
res$sample$year <- NA;

### Sample size, as a number
res$sample$size <- NA;

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
res$datacollectionmethod <- "qualitative";

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
  variable = "example",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  description = "I was a big drinker. I would probably say (I drank) every Friday, Saturday and maybe once during the week, 
  it was a big part of my life because that’s a way of socializing (. . .) so I did struggle with it and it was really hard not drinking and towards the end all I could think of 
  was ‘as soon as I’ve given birth I want a vodka and lemonade’ [laughing] (English woman 3) (p.2 table 1)",					###	Provide the full description of the variable (e.g., questionnaire question)
 
####################################### ONLY FOR DETERMINANTS OF MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = NA,                   ### "retrospective" vs "concurrent" 
  period = NA,               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  determinant_original = NA,		### If reported, how do the authors categorized the determinant, e.g., "knowledge", "attitude", "risk perception"
  determinant_recode = "self efficacy",			### Determinant recoded after expert meeting 
  determinant_target = "self",			###	"self", "other", or both "self,other"
  determinant_direction = NA,		###	Indication if the direction of the determinant is "positive", "negative" or "unclear"
  determinant_consistent = "A",		###	Indication if the direction of the determinant is (in)consistent or unclear with the target/contrast behaviour  
  determinant_inconsistent = "MD",	### Behaviours are categorised as follows: "A" for abstinence, "M" for moderating drinking, and "D" for drinking   
  comment = NA                      ### Comment, as text; or NA;
);
##########################################################################


res$variable[[length(res$variable) + 1]] <- list(
  variable = "example",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  description = "We didn’t do anything the first 6 months or something like that but so we just lived on like usual just as normal as possible (Swedish woman 16) (p.2 table 1)",					###	Provide the full description of the variable (e.g., questionnaire question)
 
####################################### ONLY FOR DETERMINANTS OF MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = NA,                   ### "retrospective" vs "concurrent" 
  period = NA,               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  determinant_original = NA,		### If reported, how do the authors categorized the determinant, e.g., "knowledge", "attitude", "risk perception"
  determinant_recode = "habit",			### Determinant recoded after expert meeting 
  determinant_target = "self",			###	"self", "other", or both "self,other"
  determinant_direction = NA,		###	Indication if the direction of the determinant is "positive", "negative" or "unclear"
  determinant_consistent = "MD",		###	Indication if the direction of the determinant is (in)consistent or unclear with the target/contrast behaviour  
  determinant_inconsistent = "A",	### Behaviours are categorised as follows: "A" for abstinence, "M" for moderating drinking, and "D" for drinking   
  comment = NA                      ### Comment, as text; or NA;
);
##########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "example",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  description = "When I found out that I was pregnant and I knew I had been out for my birthday and so I went for my scan and I was ‘oh I had too much to drink’ 
  and the mid-wife said ‘to be honest it won’t really matter, because in the early stages they are literality just a pea.’ So she said not to worry too much about it, 
  ‘you know now so just don’t worry about it, but don’t carry on drinking heavily’ (English woman 17) (p.2 table 1)",	###	Provide the full description of the variable (e.g., questionnaire question)
 
####################################### ONLY FOR DETERMINANTS OF MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = NA,                   ### "retrospective" vs "concurrent" 
  period = NA,               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  determinant_original = NA,		### If reported, how do the authors categorized the determinant, e.g., "knowledge", "attitude", "risk perception"
  determinant_recode = "injunctive norm",			### Determinant recoded after expert meeting 
  determinant_target = "self",			###	"self", "other", or both "self,other"
  determinant_direction = NA,		###	Indication if the direction of the determinant is "positive", "negative" or "unclear"
  determinant_consistent = "M",		###	Indication if the direction of the determinant is (in)consistent or unclear with the target/contrast behaviour  
  determinant_inconsistent = "AD",	### Behaviours are categorised as follows: "A" for abstinence, "M" for moderating drinking, and "D" for drinking   
  comment = NA                      ### Comment, as text; or NA;
);
##########################################################################


res$variable[[length(res$variable) + 1]] <- list(
  variable = "example",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  description = "I’d give myself a break and not give up everything that I enjoy so the odd glass of wine I thought was fine [. . .] 
  I was still a little bit of me rather than so much change in one go but yeah I wouldn’t drink heavily (English woman 2) (p.2 table 1)",	###	Provide the full description of the variable (e.g., questionnaire question)
 
####################################### ONLY FOR DETERMINANTS OF MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = NA,                   ### "retrospective" vs "concurrent" 
  period = NA,               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  determinant_original = NA,		### If reported, how do the authors categorized the determinant, e.g., "knowledge", "attitude", "risk perception"
  determinant_recode = "self efficacy",			### Determinant recoded after expert meeting 
  determinant_target = "self, other",			###	"self", "other", or both "self,other"
  determinant_direction = NA,		###	Indication if the direction of the determinant is "positive", "negative" or "unclear"
  determinant_consistent = "M",		###	Indication if the direction of the determinant is (in)consistent or unclear with the target/contrast behaviour  
  determinant_inconsistent = "AD",	### Behaviours are categorised as follows: "A" for abstinence, "M" for moderating drinking, and "D" for drinking   
  comment = NA                      ### Comment, as text; or NA;
);
##########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "example",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  description = "I thought he was gonna be a bit more supportive with having the child, 
  we wouldn’t drink together or he would slow down but, he just carried on as before (English woman 3)(p.3 table 2)",	###	Provide the full description of the variable (e.g., questionnaire question)
 
####################################### ONLY FOR DETERMINANTS OF MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = NA,                   ### "retrospective" vs "concurrent" 
  period = NA,               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  determinant_original = NA,		### If reported, how do the authors categorized the determinant, e.g., "knowledge", "attitude", "risk perception"
  determinant_recode = "descriptive norm",			### Determinant recoded after expert meeting 
  determinant_target = "self",			###	"self", "other", or both "self,other"
  determinant_direction = NA,		###	Indication if the direction of the determinant is "positive", "negative" or "unclear"
  determinant_consistent = "M",		###	Indication if the direction of the determinant is (in)consistent or unclear with the target/contrast behaviour  
  determinant_inconsistent = "A",	### Behaviours are categorised as follows: "A" for abstinence, "M" for moderating drinking, and "D" for drinking   
  comment = NA                      ### Comment, as text; or NA;
);
##########################################################################


res$variable[[length(res$variable) + 1]] <- list(
  variable = "example",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  description = "(Drinking is a) personal choice, keep it at a lower level. Because it isn’t for very long, 
  but equally I don’t think that it helps women to be public property, when they are pregnant. To disengage their own brains (English woman 13) (p.3 table 3)",	###	Provide the full description of the variable (e.g., questionnaire question)
 
####################################### ONLY FOR DETERMINANTS OF MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = NA,                   ### "retrospective" vs "concurrent" 
  period = NA,               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  determinant_original = NA,		### If reported, how do the authors categorized the determinant, e.g., "knowledge", "attitude", "risk perception"
  determinant_recode = "moral norm, need for autonomy",			### Determinant recoded after expert meeting 
  determinant_target = "self, other",			###	"self", "other", or both "self,other"
  determinant_direction = "positive",		###	Indication if the direction of the determinant is "positive", "negative" or "unclear"
  determinant_consistent = "M",		###	Indication if the direction of the determinant is (in)consistent or unclear with the target/contrast behaviour  
  determinant_inconsistent = "D",	### Behaviours are categorised as follows: "A" for abstinence, "M" for moderating drinking, and "D" for drinking   
  comment = NA                      ### Comment, as text; or NA;
);
##########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "example",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  description = "It really sparks something within me. Yeah that you, but the baby can’t choose. They just get it (alcohol) in them. No so I get really annoyed. 
  Now I have never had anyone close who has done that then I would really have told them off [pause] no that is so not okay (Swedish woman 12) (p.3 table 3)",	###	Provide the full description of the variable (e.g., questionnaire question)
 
####################################### ONLY FOR DETERMINANTS OF MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = NA,                   ### "retrospective" vs "concurrent" 
  period = NA,               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  determinant_original = NA,		### If reported, how do the authors categorized the determinant, e.g., "knowledge", "attitude", "risk perception"
  determinant_recode = "moral norm",			### Determinant recoded after expert meeting 
  determinant_target = "self, other",			###	"self", "other", or both "self,other"
  determinant_direction = NA,		###	Indication if the direction of the determinant is "positive", "negative" or "unclear"
  determinant_consistent = "A",		###	Indication if the direction of the determinant is (in)consistent or unclear with the target/contrast behaviour  
  determinant_inconsistent = "MD",	### Behaviours are categorised as follows: "A" for abstinence, "M" for moderating drinking, and "D" for drinking   
  comment = NA                      ### Comment, as text; or NA;
);
##########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "example",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  description = "‘I don’t think that it’s a sacrifice, there are no major things for me this thing about not 
  eating brie cheese or eat Parma ham. It’s 9 months’ (Swedish woman 10) (p.4 table 4)",	###	Provide the full description of the variable (e.g., questionnaire question)
 
####################################### ONLY FOR DETERMINANTS OF MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = NA,                   ### "retrospective" vs "concurrent" 
  period = NA,               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  determinant_original = NA,		### If reported, how do the authors categorized the determinant, e.g., "knowledge", "attitude", "risk perception"
  determinant_recode = "self efficacy",			### Determinant recoded after expert meeting 
  determinant_target = "self, other",			###	"self", "other", or both "self,other"
  determinant_direction = "positive",		###	Indication if the direction of the determinant is "positive", "negative" or "unclear"
  determinant_consistent = "A",		###	Indication if the direction of the determinant is (in)consistent or unclear with the target/contrast behaviour  
  determinant_inconsistent = "MD",	### Behaviours are categorised as follows: "A" for abstinence, "M" for moderating drinking, and "D" for drinking   
  comment = NA                      ### Comment, as text; or NA;
);
##########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "example",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  description = "Well I can imagine that it affects the whole life so that it can have sustained effects but, exactly 
  what disabilities you can get, I don’t know but I can imagine that it is related to delays in development, perhaps some form of retardation (Swedish woman 1) (p.4 table 4)",	###	Provide the full description of the variable (e.g., questionnaire question)
 
####################################### ONLY FOR DETERMINANTS OF MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = NA,                   ### "retrospective" vs "concurrent" 
  period = NA,               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  determinant_original = NA,		### If reported, how do the authors categorized the determinant, e.g., "knowledge", "attitude", "risk perception"
  determinant_recode = "risk perception",			### Determinant recoded after expert meeting 
  determinant_target = "self, other",			###	"self", "other", or both "self,other"
  determinant_direction = "negative",		###	Indication if the direction of the determinant is "positive", "negative" or "unclear"
  determinant_consistent = "A",		###	Indication if the direction of the determinant is (in)consistent or unclear with the target/contrast behaviour  
  determinant_inconsistent = "MD",	### Behaviours are categorised as follows: "A" for abstinence, "M" for moderating drinking, and "D" for drinking   
  comment = NA                      ### Comment, as text; or NA;
);
##########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "example",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "text",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA,                      ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  description = "I was just always of the opinion that I just wouldn’t have anything but then when I 
  actually got pregnant I did slack in a little bit and like ‘ah I don’t think the odd glass of wine is not going to matter too much’ so I think my views before becoming pregnant were different to after (English woman 5) (p.4 table 4)",	###	Provide the full description of the variable (e.g., questionnaire question)
 
####################################### ONLY FOR DETERMINANTS OF MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = NA,                   ### "retrospective" vs "concurrent" 
  period = NA,               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  determinant_original = NA,		### If reported, how do the authors categorized the determinant, e.g., "knowledge", "attitude", "risk perception"
  determinant_recode = "self efficacy, risk perception",			### Determinant recoded after expert meeting 
  determinant_target = "self, other",			###	"self", "other", or both "self,other"
  determinant_direction = "positive",		###	Indication if the direction of the determinant is "positive", "negative" or "unclear"
  determinant_consistent = "M",		###	Indication if the direction of the determinant is (in)consistent or unclear with the target/contrast behaviour  
  determinant_inconsistent = "AD",	### Behaviours are categorised as follows: "A" for abstinence, "M" for moderating drinking, and "D" for drinking   
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