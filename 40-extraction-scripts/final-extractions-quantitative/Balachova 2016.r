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
res$bibTexKey <- "Balachova2016"

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
res$sample$samplingPregnant <- FALSE; ### TRUE if the sample includes only pregnant women, can also be FALSE
res$sample$samplingPregnantAlcohol <- FALSE;	 ### TRUE if the sample includes pregnant women who also drink alcohol, can also be FALSE
res$sample$recruitmentSetting <- "health clinic"; ### For example "antenatal clinic",or NA

### Sample Method
res$sample$native <- NA; ### TRUE for native/aboriginal populations (e.g. inuit, aboriginals, etc)

### Description of sample, in text
res$sample$description <- "pregnant and nonpregnant women"

### Description of geography of sample, in text
res$sample$geography <- "Russia"

### Study year, in text
res$sample$year <- NA;

### Sample size, as a number
res$sample$size <- 648;			### 146+155 pregnant versus 196+151 non pregnant

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
### UNIVARIATE RESULTS: PERCENTAGES, MEANS, ETC
##########################################################################

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "Aggregate attitude",       ### Name of variable this result pertains to
  subsample = NA,                   ### Name of relevant subsample, or NA
  value = 1,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 100 * (146 * 1.47 + 155 * 1.18) / (146+155), ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "belief ok to drink a little",       ### Name of variable this result pertains to
  subsample = NA,                   ### Name of relevant subsample, or NA
  value = 1,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 100 * (146 * .34 + 155 * .09) / (146+155), ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "belief ok to drink a little",       ### Name of variable this result pertains to
  subsample = NA,                   ### Name of relevant subsample, or NA
  value = 2,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 100 * (146 * .40 + 155 * .75) / (146+155), ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "belief ok to drink a little",       ### Name of variable this result pertains to
  subsample = NA,                   ### Name of relevant subsample, or NA
  value = 3,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 100 * (146 * .27 + 155 * .16) / (146+155), ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "type alcohol affects outcome",       ### Name of variable this result pertains to
  subsample = NA,                   ### Name of relevant subsample, or NA
  value = 1,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 100 * (146 * .53 + 155 * .15) / (146+155), ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "type alcohol affects outcome",       ### Name of variable this result pertains to
  subsample = NA,                   ### Name of relevant subsample, or NA
  value = 2,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 100 * (146 * .31 + 155 * .70) / (146+155), ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "type alcohol affects outcome",       ### Name of variable this result pertains to
  subsample = NA,                   ### Name of relevant subsample, or NA
  value = 3,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 100 * (146 * .16 + 155 * .14) / (146+155), ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "amount of harm",       ### Name of variable this result pertains to
  subsample = NA,                   ### Name of relevant subsample, or NA
  value = 1,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 100 * (146 * .88 + 155 * .96) / (146+155), ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "amount of harm",       ### Name of variable this result pertains to
  subsample = NA,                   ### Name of relevant subsample, or NA
  value = 2,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 100 * (146 * .00 + 155 * .00) / (146+155), ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "amount of harm",       ### Name of variable this result pertains to
  subsample = NA,                   ### Name of relevant subsample, or NA
  value = 3,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 100 * (146 * .12 + 155 * .04) / (146+155), ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "belief that drinking may benefit baby",       ### Name of variable this result pertains to
  subsample = NA,                   ### Name of relevant subsample, or NA
  value = 1,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 100 * (146 * .03 + 155 * .01) / (146+155), ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "belief that drinking may benefit baby",       ### Name of variable this result pertains to
  subsample = NA,                   ### Name of relevant subsample, or NA
  value = 2,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 100 * (146 * .90 + 155 * .94) / (146+155), ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "belief that drinking may benefit baby",       ### Name of variable this result pertains to
  subsample = NA,                   ### Name of relevant subsample, or NA
  value = 3,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 100 * (146 * .07 + 155 * .06) / (146+155), ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "belief that drinking may benefit mother",       ### Name of variable this result pertains to
  subsample = NA,                   ### Name of relevant subsample, or NA
  value = 1,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 100 * (146 * .08 + 155 * .01) / (146+155), ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "belief that drinking may benefit mother",       ### Name of variable this result pertains to
  subsample = NA,                   ### Name of relevant subsample, or NA
  value = 2,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 100 * (146 * .79 + 155 * .85) / (146+155), ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "belief that drinking may benefit mother",       ### Name of variable this result pertains to
  subsample = NA,                   ### Name of relevant subsample, or NA
  value = 3,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 100 * (146 * .13 + 155 * .14) / (146+155), ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "belief that drinking may harm the baby",       ### Name of variable this result pertains to
  subsample = NA,                   ### Name of relevant subsample, or NA
  value = 1,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 100 * (146 * .84 + 155 * .97) / (146+155), ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "belief that drinking may harm the baby",       ### Name of variable this result pertains to
  subsample = NA,                   ### Name of relevant subsample, or NA
  value = 2,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 100 * (146 * .01 + 155 * .01) / (146+155), ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "belief that drinking may harm the baby",       ### Name of variable this result pertains to
  subsample = NA,                   ### Name of relevant subsample, or NA
  value = 3,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 100 * (146 * .14 + 155 * .02) / (146+155), ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "belief that drinking may harm the mother",       ### Name of variable this result pertains to
  subsample = NA,                   ### Name of relevant subsample, or NA
  value = 1,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 100 * (146 * .68 + 155 * .84) / (146+155), ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "belief that drinking may harm the mother",       ### Name of variable this result pertains to
  subsample = NA,                   ### Name of relevant subsample, or NA
  value = 2,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 100 * (146 * .09 + 155 * .01) / (146+155), ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "belief that drinking may harm the mother",       ### Name of variable this result pertains to
  subsample = NA,                   ### Name of relevant subsample, or NA
  value = 3,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 100 * (146 * .23 + 155 * .15) / (146+155), ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "belief that drinking does not have any effect",       ### Name of variable this result pertains to
  subsample = NA,                   ### Name of relevant subsample, or NA
  value = 1,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 100 * (146 * .03 + 155 * .02) / (146+155), ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "belief that drinking does not have any effect",       ### Name of variable this result pertains to
  subsample = NA,                   ### Name of relevant subsample, or NA
  value = 2,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 100 * (146 * .77 + 155 * .88) / (146+155), ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "belief that drinking does not have any effect",       ### Name of variable this result pertains to
  subsample = NA,                   ### Name of relevant subsample, or NA
  value = 3,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 100 * (146 * .19 + 155 * .10) / (146+155), ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "belief that occasional alcohol is safe first trimester",       ### Name of variable this result pertains to
  subsample = NA,                   ### Name of relevant subsample, or NA
  value = NA,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 100 * (146 * .19 + 155 * .05) / (146+155), ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "belief that occasional alcohol is safe second trimester",       ### Name of variable this result pertains to
  subsample = NA,                   ### Name of relevant subsample, or NA
  value = NA,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 100 * (146 * .21 + 155 * .05) / (146+155), ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "belief that occasional alcohol is safe third trimester",       ### Name of variable this result pertains to
  subsample = NA,                   ### Name of relevant subsample, or NA
  value = NA,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 100 * (146 * .30 + 155 * .08) / (146+155), ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "prenatal alcohol increases chance of miscarriage",       ### Name of variable this result pertains to
  subsample = NA,                   ### Name of relevant subsample, or NA
  value = 1,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 100 * (146 * .62 + 155 * .70) / (146+155), ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "prenatal alcohol increases chance of miscarriage",       ### Name of variable this result pertains to
  subsample = NA,                   ### Name of relevant subsample, or NA
  value = 2,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 100 * (146 * .10 + 155 * .01) / (146+155), ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "prenatal alcohol increases chance of miscarriage",       ### Name of variable this result pertains to
  subsample = NA,                   ### Name of relevant subsample, or NA
  value = 3,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 100 * (146 * .28 + 155 * .29) / (146+155), ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "prenatal alcohol increases chance of infantile withdrawal symptoms",       ### Name of variable this result pertains to
  subsample = NA,                   ### Name of relevant subsample, or NA
  value = 1,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 100 * (146 * .59 + 155 * .55) / (146+155), ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "prenatal alcohol increases chance of infantile withdrawal symptoms",       ### Name of variable this result pertains to
  subsample = NA,                   ### Name of relevant subsample, or NA
  value = 2,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 100 * (146 * .05 + 155 * .07) / (146+155), ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "prenatal alcohol increases chance of infantile withdrawal symptoms",       ### Name of variable this result pertains to
  subsample = NA,                   ### Name of relevant subsample, or NA
  value = 3,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 100 * (146 * .36 + 155 * .37) / (146+155), ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "prenatal alcohol increases chance of low birth weight",       ### Name of variable this result pertains to
  subsample = NA,                   ### Name of relevant subsample, or NA
  value = 1,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 100 * (146 * .75 + 155 * .64) / (146+155), ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "prenatal alcohol increases chance of low birth weight",       ### Name of variable this result pertains to
  subsample = NA,                   ### Name of relevant subsample, or NA
  value = 2,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 100 * (146 * .01 + 155 * .01) / (146+155), ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "prenatal alcohol increases chance of low birth weight",       ### Name of variable this result pertains to
  subsample = NA,                   ### Name of relevant subsample, or NA
  value = 3,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 100 * (146 * .25 + 155 * .35) / (146+155), ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "prenatal alcohol increases chance of seizures",       ### Name of variable this result pertains to
  subsample = NA,                   ### Name of relevant subsample, or NA
  value = 1,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 100 * (146 * .53 + 155 * .55) / (146+155), ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "prenatal alcohol increases chance of seizures",       ### Name of variable this result pertains to
  subsample = NA,                   ### Name of relevant subsample, or NA
  value = 2,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 100 * (146 * .03 + 155 * .02) / (146+155), ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "prenatal alcohol increases chance of seizures",       ### Name of variable this result pertains to
  subsample = NA,                   ### Name of relevant subsample, or NA
  value = 3,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 100 * (146 * .45 + 155 * .43) / (146+155), ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "prenatal alcohol increases chance of birth defects, malformations",       ### Name of variable this result pertains to
  subsample = NA,                   ### Name of relevant subsample, or NA
  value = 1,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 100 * (146 * .77 + 155 * .88) / (146+155), ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "prenatal alcohol increases chance of birth defects, malformations",       ### Name of variable this result pertains to
  subsample = NA,                   ### Name of relevant subsample, or NA
  value = 2,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 100 * (146 * .03 + 155 * .01) / (146+155), ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "prenatal alcohol increases chance of birth defects, malformations",       ### Name of variable this result pertains to
  subsample = NA,                   ### Name of relevant subsample, or NA
  value = 3,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 100 * (146 * .20 + 155 * .10) / (146+155), ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "prenatal alcohol increases chance of hallucinations",       ### Name of variable this result pertains to
  subsample = NA,                   ### Name of relevant subsample, or NA
  value = 1,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 100 * (146 * .33 + 155 * .36) / (146+155), ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "prenatal alcohol increases chance of hallucinations",       ### Name of variable this result pertains to
  subsample = NA,                   ### Name of relevant subsample, or NA
  value = 2,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 100 * (146 * .07 + 155 * .06) / (146+155), ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "prenatal alcohol increases chance of hallucinations",       ### Name of variable this result pertains to
  subsample = NA,                   ### Name of relevant subsample, or NA
  value = 3,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 100 * (146 * .60 + 155 * .58) / (146+155), ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);


res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "prenatal alcohol increases chance of lower IQ, mental retardation",       ### Name of variable this result pertains to
  subsample = NA,                   ### Name of relevant subsample, or NA
  value = 1,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 100 * (146 * .85 + 155 * .83) / (146+155), ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "prenatal alcohol increases chance of lower IQ, mental retardation",       ### Name of variable this result pertains to
  subsample = NA,                   ### Name of relevant subsample, or NA
  value = 2,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 100 * (146 * .01 + 155 * .02) / (146+155), ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "prenatal alcohol increases chance of lower IQ, mental retardation",       ### Name of variable this result pertains to
  subsample = NA,                   ### Name of relevant subsample, or NA
  value = 3,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 100 * (146 * .14 + 155 * .15) / (146+155), ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);

res$univariate[[length(res$univariate) + 1]] <- list(
  variable = "knowledge of FAS",       ### Name of variable this result pertains to
  subsample = NA,                   ### Name of relevant subsample, or NA
  value = NA,                       ### Value this result pertains to
  moment = 1,                       ### Measurement moment this datapoint pertains to
  minimum = NA,                     ### Minimum or NA
  maximum = NA,                     ### Maximum or NA
  median = NA,                      ### Median or NA
  mean = NA,                        ### Mean or NA
  percentage = 100 * (146 * .25 + 155 * .35) / (146+155), ### Percentage that endorsed 1, or NA
  sd = NA,                          ### Standard deviation, or NA
  qualitative = NA,                 ### Description (qualitative research)
  comment = NA                      ### Comment or NA
);

##########################################################################


##########################################################################
### MEASUREMENTS AND MANIPULATIONS: THE VARIABLES IN THE STUDY
##########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "Aggregate attitude",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA, ### Labels for the values; NA or e.g. c(no", "maybe", "sometimes")
  description = "(p.310 table 2)",	###	Provide the full description of the variable (e.g., questionnaire question)
 
####################################### ONLY FOR DETERMINANTS OF MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = NA,                   ### "retrospective" vs "concurrent" 
  period = NA,               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  determinant_original = "attitude",	### If reported, how do the authors categorized the determinant, e.g., "knowledge", "attitude", "risk perception"
  determinant_recode = "attitude",			### Determinant recoded after expert meeting 
  determinant_target = NA,			###	"self", "other", or both "self,other"
  determinant_direction = NA,		###	Indication if the direction of the determinant is "positive", "negative" or "unclear"
  determinant_consistent = NA,		###	Indication if the direction of the determinant is (in)consistent or unclear with the target/contrast behaviour  
  determinant_inconsistent = NA,	### Behaviours are categorised as follows: "A" for abstinence, "M" for moderating drinking, and "D" for drinking   
  comment = NA                      ### Comment, as text; or NA;
);
##########################################################################



res$variable[[length(res$variable) + 1]] <- list(
  variable = "belief ok to drink a little",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "nominal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2, 3),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c("agree or strongly agree", "strongly disagree or disagree", "not sure"), ### Labels for the values; NA or e.g. c(no", "maybe", "sometimes")
  description = "Do you believe that it is ok to drink a little during pregnancy?(p.310 table 2)",	###	Provide the full description of the variable (e.g., questionnaire question)
 
####################################### ONLY FOR DETERMINANTS OF MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = NA,                   ### "retrospective" vs "concurrent" 
  period = NA,               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  determinant_original = "attitude",	### If reported, how do the authors categorized the determinant, e.g., "knowledge", "attitude", "risk perception"
  determinant_recode = "risk perception",			### Determinant recoded after expert meeting 
  determinant_target = "unspecified",			###	"self", "other", or both "self,other"
  determinant_direction = "positive",		###	Indication if the direction of the determinant is "positive", "negative" or "unclear"
  determinant_consistent = "M",		###	Indication if the direction of the determinant is (in)consistent or unclear with the target/contrast behaviour  
  determinant_inconsistent = "AD",	### Behaviours are categorised as follows: "A" for abstinence, "M" for moderating drinking, and "D" for drinking   
  comment = NA                      ### Comment, as text; or NA;
);
##########################################################################


res$variable[[length(res$variable) + 1]] <- list(
  variable = "type alcohol affects outcome",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "nominal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2, 3),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c("agree or strongly agree", "strongly disagree or disagree", "not sure"), ### Labels for the values; NA or e.g. c(no", "maybe", "sometimes")
  description = "The type of alcohol a woman drinks when she is pregnant affects the outcome of her pregnancy (table 2, page 310)",	###	Provide the full description of the variable (e.g., questionnaire question)

####################################### ONLY FOR DETERMINANTS OF MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = NA,                   ### "retrospective" vs "concurrent" 
  period = NA,               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  determinant_original = "attitude",	### If reported, how do the authors categorized the determinant, e.g., "knowledge", "attitude", "risk perception"
  determinant_recode = "risk perception",			### Determinant recoded after expert meeting 
  determinant_target = "self,other",			###	"self", "other", or both "self,other"
  determinant_direction = "positive",		###	Indication if the direction of the determinant is "positive", "negative" or "unclear"
  determinant_consistent = "MD",		###	Indication if the direction of the determinant is (in)consistent or unclear with the target/contrast behaviour  
  determinant_inconsistent = "A",	### Behaviours are categorised as follows: "A" for abstinence, "M" for moderating drinking, and "D" for drinking 
  comment = NA                      ### Comment, as text; or NA;
);
##########################################################################


res$variable[[length(res$variable) + 1]] <- list(
  variable = "amount of harm",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "nominal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2, 3),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c("harmful and very harmful", "not harmful and absolutely not harmful", "not sure"), ### Labels for the values; NA or e.g. c(no", "maybe", "sometimes")
  description = "Rate the amount of harm alcohol might cause due to prenatal exposure(table 2, page 310)",	###	Provide the full description of the variable (e.g., questionnaire question)

####################################### ONLY FOR DETERMINANTS OF MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = NA,                   ### "retrospective" vs "concurrent" 
  period = NA,               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  determinant_original = "attitude",	### If reported, how do the authors categorized the determinant, e.g., "knowledge", "attitude", "risk perception"
  determinant_recode = "severity of risk, harm",			### Determinant recoded after expert meeting 
  determinant_target = "unspecified",			###	"self", "other", or both "self,other"
  determinant_direction = "positive",		###	Indication if the direction of the determinant is "positive", "negative" or "unclear"
  determinant_consistent = "MD",		###	Indication if the direction of the determinant is (in)consistent or unclear with the target/contrast behaviour  
  determinant_inconsistent = "A",	### Behaviours are categorised as follows: "A" for abstinence, "M" for moderating drinking, and "D" for drinking  
  comment = NA                      ### Comment, as text; or NA;
);
##########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "belief that drinking may benefit baby",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "nominal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2, 3),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c("agree and strongly agree", "disagree and strongly disagree", "not sure"), ### Labels for the values; NA or e.g. c(no", "maybe", "sometimes")
  description = "Do you believe that drinking alcohol during pregnancy may: benefit the baby(table 2, page 310)",	###	Provide the full description of the variable (e.g., questionnaire question)

####################################### ONLY FOR DETERMINANTS OF MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = NA,                   ### "retrospective" vs "concurrent" 
  period = NA,               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  determinant_original = "attitude",	### If reported, how do the authors categorized the determinant, e.g., "knowledge", "attitude", "risk perception"
  determinant_recode = "attitude other positive",			### Determinant recoded after expert meeting 
  determinant_target = "other",			###	"self", "other", or both "self,other"
  determinant_direction = "positive",		###	Indication if the direction of the determinant is "positive", "negative" or "unclear"
  determinant_consistent = "MD",		###	Indication if the direction of the determinant is (in)consistent or unclear with the target/contrast behaviour  
  determinant_inconsistent = "A",	### Behaviours are categorised as follows: "A" for abstinence, "M" for moderating drinking, and "D" for drinking   
  comment = NA                      ### Comment, as text; or NA;
);
##########################################################################


res$variable[[length(res$variable) + 1]] <- list(
  variable = "belief that drinking may benefit mother",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "nominal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2, 3),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c("agree and strongly agree", "disagree and strongly disagree", "not sure"), ### Labels for the values; NA or e.g. c(no", "maybe", "sometimes")
  description = "Do you believe that drinking alcohol during pregnancy may: benefit the mother(table 2, page 310)",	###	Provide the full description of the variable (e.g., questionnaire question)

####################################### ONLY FOR DETERMINANTS OF MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = NA,                   ### "retrospective" vs "concurrent" 
  period = NA,               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  determinant_original = "attitude",	### If reported, how do the authors categorized the determinant, e.g., "knowledge", "attitude", "risk perception"
  determinant_recode = "attitude self positive",			### Determinant recoded after expert meeting 
  determinant_target = "self",			###	"self", "other", or both "self,other"
  determinant_direction = "positive",		###	Indication if the direction of the determinant is "positive", "negative" or "unclear"
  determinant_consistent = "MD",		###	Indication if the direction of the determinant is (in)consistent or unclear with the target/contrast behaviour  
  determinant_inconsistent = "A",	### Behaviours are categorised as follows: "A" for abstinence, "M" for moderating drinking, and "D" for drinking  
  comment = NA                      ### Comment, as text; or NA;
);
##########################################################################


res$variable[[length(res$variable) + 1]] <- list(
  variable = "belief that drinking may harm the baby",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "nominal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2, 3),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c("agree and strongly agree", "disagree and strongly disagree", "not sure"), ### Labels for the values; NA or e.g. c(no", "maybe", "sometimes")
  description = "Do you believe that drinking alcohol during pregnancy may: harm the baby(table 2, page 310)",	###	Provide the full description of the variable (e.g., questionnaire question)

####################################### ONLY FOR DETERMINANTS OF MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = NA,                   ### "retrospective" vs "concurrent" 
  period = NA,               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  determinant_original = "attitude",	### If reported, how do the authors categorized the determinant, e.g., "knowledge", "attitude", "risk perception"
  determinant_recode = "attitude other negative",			### Determinant recoded after expert meeting 
  determinant_target = "other",			###	"self", "other", or both "self,other"
  determinant_direction = "negative",		###	Indication if the direction of the determinant is "positive", "negative" or "unclear"
  determinant_consistent = "MD",		###	Indication if the direction of the determinant is (in)consistent or unclear with the target/contrast behaviour  
  determinant_inconsistent = "A",	### Behaviours are categorised as follows: "A" for abstinence, "M" for moderating drinking, and "D" for drinking   
  comment = NA                      ### Comment, as text; or NA;
);
##########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "belief that drinking may harm the mother",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "nominal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2, 3),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c("agree and strongly agree", "disagree and strongly disagree", "not sure"), ### Labels for the values; NA or e.g. c(no", "maybe", "sometimes")
  description = "Do you believe that drinking alcohol during pregnancy may: harm the mother(table 2, page 310)",	###	Provide the full description of the variable (e.g., questionnaire question)

####################################### ONLY FOR DETERMINANTS OF MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = NA,                   ### "retrospective" vs "concurrent" 
  period = NA,               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  determinant_original = "attitude",	### If reported, how do the authors categorized the determinant, e.g., "knowledge", "attitude", "risk perception"
  determinant_recode = "attitude self negative",			### Determinant recoded after expert meeting 
  determinant_target = "self",			###	"self", "other", or both "self,other"
  determinant_direction = "negative",		###	Indication if the direction of the determinant is "positive", "negative" or "unclear"
  determinant_consistent = "MD",		###	Indication if the direction of the determinant is (in)consistent or unclear with the target/contrast behaviour  
  determinant_inconsistent = "A",	### Behaviours are categorised as follows: "A" for abstinence, "M" for moderating drinking, and "D" for drinking   
  comment = NA                      ### Comment, as text; or NA;
);
##########################################################################


res$variable[[length(res$variable) + 1]] <- list(
  variable = "belief that drinking does not have any effect",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "nominal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2, 3),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c("agree and strongly agree", "disagree and strongly disagree", "not sure"), ### Labels for the values; NA or e.g. c(no", "maybe", "sometimes")
  description = "Do you believe that drinking alcohol during pregnancy may: does not have any effect(table 2, page 310)",	###	Provide the full description of the variable (e.g., questionnaire question)

####################################### ONLY FOR DETERMINANTS OF MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = NA,                   ### "retrospective" vs "concurrent" 
  period = NA,               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  determinant_original = "attitude",	### If reported, how do the authors categorized the determinant, e.g., "knowledge", "attitude", "risk perception"
  determinant_recode = "risk perception",			### Determinant recoded after expert meeting 
  determinant_target = "self,other",			###	"self", "other", or both "self,other"
  determinant_direction = "neutral",		###	Indication if the direction of the determinant is "positive", "negative" or "unclear"
  determinant_consistent = "MD",		###	Indication if the direction of the determinant is (in)consistent or unclear with the target/contrast behaviour  
  determinant_inconsistent = "A",	### Behaviours are categorised as follows: "A" for abstinence, "M" for moderating drinking, and "D" for drinking     
  comment = NA                      ### Comment, as text; or NA;
);
##########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "belief that occasional alcohol is safe first trimester",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA, ### Labels for the values; NA or e.g. c(no", "maybe", "sometimes")
  description = "I believe that occasional alcohol consumption is safe during the following trimesters(table 2, page 310)",	###	Provide the full description of the variable (e.g., questionnaire question)

####################################### ONLY FOR DETERMINANTS OF MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = NA,                   ### "retrospective" vs "concurrent" 
  period = NA,               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  determinant_original = "attitude",	### If reported, how do the authors categorized the determinant, e.g., "knowledge", "attitude", "risk perception"
  determinant_recode = "risk perception",			### Determinant recoded after expert meeting 
  determinant_target = "self,other",			###	"self", "other", or both "self,other"
  determinant_direction = "negative",		###	Indication if the direction of the determinant is "positive", "negative" or "unclear"
  determinant_consistent = "MD",		###	Indication if the direction of the determinant is (in)consistent or unclear with the target/contrast behaviour  
  determinant_inconsistent = "A",	### Behaviours are categorised as follows: "A" for abstinence, "M" for moderating drinking, and "D" for drinking     
  comment = NA                      ### Comment, as text; or NA;
);
##########################################################################


res$variable[[length(res$variable) + 1]] <- list(
  variable = "belief that occasional alcohol is safe second trimester",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA, 						### Labels for the values; NA or e.g. c(no", "maybe", "sometimes")"maybe", "sometimes")
  description = "I believe that occasional alcohol consumption is safe during the following trimesters(table 2, page 310)",	###	Provide the full description of the variable (e.g., questionnaire question)

####################################### ONLY FOR DETERMINANTS OF MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = NA,                   ### "retrospective" vs "concurrent" 
  period = NA,               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  determinant_original = "attitude",	### If reported, how do the authors categorized the determinant, e.g., "knowledge", "attitude", "risk perception"
  determinant_recode = "risk perception",			### Determinant recoded after expert meeting 
  determinant_target = "self,other",			###	"self", "other", or both "self,other"
  determinant_direction = "negative",		###	Indication if the direction of the determinant is "positive", "negative" or "unclear"
  determinant_consistent = "MD",		###	Indication if the direction of the determinant is (in)consistent or unclear with the target/contrast behaviour  
  determinant_inconsistent = "A",	### Behaviours are categorised as follows: "A" for abstinence, "M" for moderating drinking, and "D" for drinking     
  comment = NA                      ### Comment, as text; or NA;
);
##########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "belief that occasional alcohol is safe third trimester",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA, 						### Labels for the values; NA or e.g. c(no", "maybe", "sometimes")"maybe", "sometimes")
  description = "I believe that occasional alcohol consumption is safe during the following trimesters(table 2, page 310)",	###	Provide the full description of the variable (e.g., questionnaire question)

####################################### ONLY FOR DETERMINANTS OF MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = NA,                   ### "retrospective" vs "concurrent" 
  period = NA,               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  determinant_original = "attitude",	### If reported, how do the authors categorized the determinant, e.g., "knowledge", "attitude", "risk perception"
  determinant_recode = "risk perception",			### Determinant recoded after expert meeting 
  determinant_target = "self,other",			###	"self", "other", or both "self,other"
  determinant_direction = "negative",		###	Indication if the direction of the determinant is "positive", "negative" or "unclear"
  determinant_consistent = "MD",		###	Indication if the direction of the determinant is (in)consistent or unclear with the target/contrast behaviour  
  determinant_inconsistent = "A",	### Behaviours are categorised as follows: "A" for abstinence, "M" for moderating drinking, and "D" for drinking     
  comment = NA                      ### Comment, as text; or NA;
);
##########################################################################


res$variable[[length(res$variable) + 1]] <- list(
  variable = "prenatal alcohol increases chance of miscarriage",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "nominal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2, 3),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c("agree or strongly agree", "disagree or strongly disagree", "not sure"), ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  description = "Indicate whether or not prenatal consumption increases the chance of any of the following: miscarriage (table 3, page 311)",	###	Provide the full description of the variable (e.g., questionnaire question)

####################################### ONLY FOR DETERMINANTS OF MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = NA,                   ### "retrospective" vs "concurrent" 
  period = NA,               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  determinant_original = "knowledge",	### If reported, how do the authors categorized the determinant, e.g., "knowledge", "attitude", "risk perception"
  determinant_recode = "risk perception",			### Determinant recoded after expert meeting 
  determinant_target = "self",			###	"self", "other", or both "self,other"
  determinant_direction = "negative",		###	Indication if the direction of the determinant is "positive", "negative" or "unclear"
  determinant_consistent = "MD",		###	Indication if the direction of the determinant is (in)consistent or unclear with the target/contrast behaviour  
  determinant_inconsistent = "A",	### Behaviours are categorised as follows: "A" for abstinence, "M" for moderating drinking, and "D" for drinking   
  comment = NA                      ### Comment, as text; or NA;
);
##########################################################################


res$variable[[length(res$variable) + 1]] <- list(
  variable = "prenatal alcohol increases chance of infantile withdrawal symptoms",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "nominal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2, 3),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c("agree or strongly agree", "disagree or strongly disagree", "not sure"), ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  description = "Indicate whether or not prenatal consumption increases the chance of any of the following: infantile withdrawal symptoms (table 3, page 311)",	###	Provide the full description of the variable (e.g., questionnaire question)

####################################### ONLY FOR DETERMINANTS OF MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = NA,                   ### "retrospective" vs "concurrent" 
  period = NA,               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  determinant_original = "knowledge",	### If reported, how do the authors categorized the determinant, e.g., "knowledge", "attitude", "risk perception"
  determinant_recode = "risk perception",			### Determinant recoded after expert meeting 
  determinant_target = "other",			###	"self", "other", or both "self,other"
  determinant_direction = "negative",		###	Indication if the direction of the determinant is "positive", "negative" or "unclear"
  determinant_consistent = "MD",		###	Indication if the direction of the determinant is (in)consistent or unclear with the target/contrast behaviour  
  determinant_inconsistent = "A",	### Behaviours are categorised as follows: "A" for abstinence, "M" for moderating drinking, and "D" for drinking 
  comment = NA                      ### Comment, as text; or NA;
);
##########################################################################


res$variable[[length(res$variable) + 1]] <- list(
  variable = "prenatal alcohol increases chance of low birth weight",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "nominal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2, 3),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c("agree or strongly agree", "disagree or strongly disagree", "not sure"), ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  description = "Indicate whether or not prenatal consumption increases the chance of any of the following: low birth weight (table 3, page 311)",	###	Provide the full description of the variable (e.g., questionnaire question)

####################################### ONLY FOR DETERMINANTS OF MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = NA,                   ### "retrospective" vs "concurrent" 
  period = NA,               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  determinant_original = "knowledge",	### If reported, how do the authors categorized the determinant, e.g., "knowledge", "attitude", "risk perception"
  determinant_recode = "risk perception",			### Determinant recoded after expert meeting 
  determinant_target = "other",			###	"self", "other", or both "self,other"
  determinant_direction = "negative",		###	Indication if the direction of the determinant is "positive", "negative" or "unclear"
  determinant_consistent = "MD",		###	Indication if the direction of the determinant is (in)consistent or unclear with the target/contrast behaviour  
  determinant_inconsistent = "A",	### Behaviours are categorised as follows: "A" for abstinence, "M" for moderating drinking, and "D" for drinking 
  comment = NA                      ### Comment, as text; or NA;
);
##########################################################################


res$variable[[length(res$variable) + 1]] <- list(
  variable = "prenatal alcohol increases chance of seizures",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "nominal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2, 3),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c("agree or strongly agree", "disagree or strongly disagree", "not sure"), ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  description = "Indicate whether or not prenatal consumption increases the chance of any of the following: seizures (table 3, page 311)",	###	Provide the full description of the variable (e.g., questionnaire question)

####################################### ONLY FOR DETERMINANTS OF MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = NA,                   ### "retrospective" vs "concurrent" 
  period = NA,               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  determinant_original = "knowledge",	### If reported, how do the authors categorized the determinant, e.g., "knowledge", "attitude", "risk perception"
  determinant_recode = "risk perception",			### Determinant recoded after expert meeting 
  determinant_target = "other",			###	"self", "other", or both "self,other"
  determinant_direction = "negative",		###	Indication if the direction of the determinant is "positive", "negative" or "unclear"
  determinant_consistent = "MD",		###	Indication if the direction of the determinant is (in)consistent or unclear with the target/contrast behaviour  
  determinant_inconsistent = "A",	### Behaviours are categorised as follows: "A" for abstinence, "M" for moderating drinking, and "D" for drinking 
  comment = NA                      ### Comment, as text; or NA;
);
##########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "prenatal alcohol increases chance of birth defects, malformations",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "nominal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2, 3),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c("agree or strongly agree", "disagree or strongly disagree", "not sure"), ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  description = "Indicate whether or not prenatal consumption increases the chance of any of the following: birth defects, malformations (table 3, page 311)",	###	Provide the full description of the variable (e.g., questionnaire question)

####################################### ONLY FOR DETERMINANTS OF MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = NA,                   ### "retrospective" vs "concurrent" 
  period = NA,               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  determinant_original = "knowledge",	### If reported, how do the authors categorized the determinant, e.g., "knowledge", "attitude", "risk perception"
  determinant_recode = "risk perception",			### Determinant recoded after expert meeting 
  determinant_target = "other",			###	"self", "other", or both "self,other"
  determinant_direction = "negative",		###	Indication if the direction of the determinant is "positive", "negative" or "unclear"
  determinant_consistent = "MD",		###	Indication if the direction of the determinant is (in)consistent or unclear with the target/contrast behaviour  
  determinant_inconsistent = "A",	### Behaviours are categorised as follows: "A" for abstinence, "M" for moderating drinking, and "D" for drinking   
  comment = NA                      ### Comment, as text; or NA;
);
##########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "prenatal alcohol increases chance of hallucinations",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "nominal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2, 3),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c("agree or strongly agree", "disagree or strongly disagree", "not sure"), ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  description = "Indicate whether or not prenatal consumption increases the chance of any of the following: hallucinations (table 3, page 311)",	###	Provide the full description of the variable (e.g., questionnaire question)

####################################### ONLY FOR DETERMINANTS OF MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = NA,                   ### "retrospective" vs "concurrent" 
  period = NA,               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  determinant_original = "knowledge",	### If reported, how do the authors categorized the determinant, e.g., "knowledge", "attitude", "risk perception"
  determinant_recode = "risk perception",			### Determinant recoded after expert meeting 
  determinant_target = "other",			###	"self", "other", or both "self,other"
  determinant_direction = "negative",		###	Indication if the direction of the determinant is "positive", "negative" or "unclear"
  determinant_consistent = "MD",		###	Indication if the direction of the determinant is (in)consistent or unclear with the target/contrast behaviour  
  determinant_inconsistent = "A",	### Behaviours are categorised as follows: "A" for abstinence, "M" for moderating drinking, and "D" for drinking 
  comment = NA                      ### Comment, as text; or NA;
);
##########################################################################


res$variable[[length(res$variable) + 1]] <- list(
  variable = "prenatal alcohol increases chance of lower IQ, mental retardation",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "nominal",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = c(1, 2, 3),                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = c("agree or strongly agree", "disagree or strongly disagree", "not sure"), ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  description = "Indicate whether or not prenatal consumption increases the chance of any of the following: lower IQ, mental retardation (table 3, page 311)",	###	Provide the full description of the variable (e.g., questionnaire question)

####################################### ONLY FOR DETERMINANTS OF MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = NA,                   ### "retrospective" vs "concurrent" 
  period = NA,               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  determinant_original = "knowledge",	### If reported, how do the authors categorized the determinant, e.g., "knowledge", "attitude", "risk perception"
  determinant_recode = "risk perception",			### Determinant recoded after expert meeting 
  determinant_target = "other",			###	"self", "other", or both "self,other"
  determinant_direction = "negative",		###	Indication if the direction of the determinant is "positive", "negative" or "unclear"
  determinant_consistent = "MD",		###	Indication if the direction of the determinant is (in)consistent or unclear with the target/contrast behaviour  
  determinant_inconsistent = "A",	### Behaviours are categorised as follows: "A" for abstinence, "M" for moderating drinking, and "D" for drinking 
  comment = NA                      ### Comment, as text; or NA;
);
##########################################################################

res$variable[[length(res$variable) + 1]] <- list(
  variable = "knowledge of FAS",             ### Replace 'example' with variable name
  moment = 1,                       ### moment this variable was measured/manipulated
  type = "question",                ### "question", "aggregate", or "manipulation"
  datatype = "numeric",             ### "numeric", "logical", "nominal", "ordinal", or "text"
  values = NA,                      ### Possible values; NA or a vector, e.g. c(1, 2, 3)
  labels = NA, ### Labels for the values; NA or e.g. c("no", "maybe", "sometimes")
  description = "Have you ever heard of FAS, proportion answered YES (table 3, page 311)",	###	Provide the full description of the variable (e.g., questionnaire question)

####################################### ONLY FOR DETERMINANTS OF MATERNAL DRINKING BEHAVIOR VARIABLES
  dataCollectionMethod = "interview",        ### "self-report" or "interview"
  timeframe = NA,                   ### "retrospective" vs "concurrent" 
  period = NA,               		### "before", "1st", "2nd", "3rd", "during", "after", "other"
  determinant_original = "knowledge",	### If reported, how do the authors categorized the determinant, e.g., "knowledge", "attitude", "risk perception"
  determinant_recode = "knowledge",			### Determinant recoded after expert meeting 
  determinant_target = NA,			###	"self", "other", or both "self,other"
  determinant_direction = NA,		###	Indication if the direction of the determinant is "positive", "negative" or "unclear"
  determinant_consistent = NA,		###	Indication if the direction of the determinant is (in)consistent or unclear with the target/contrast behaviour  
  determinant_inconsistent = NA,	### Behaviours are categorised as follows: "A" for abstinence, "M" for moderating drinking, and "D" for drinking   
  comment = NA                      ### Comment, as text; or NA;
);
##########################################################################


##########################################################################


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