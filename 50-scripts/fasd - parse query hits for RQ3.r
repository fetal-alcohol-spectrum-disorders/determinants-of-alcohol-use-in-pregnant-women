### Load packages
require('userfriendlyscience');
require('metabefor');
require('here');
require('plyr');

### Set working paths for reading the hits
basePath <- here::here();
firstQueryResultsPath <- file.path(basePath, "Query", "11.07.2016");
secondQueryResultsPath <- file.path(basePath, "Query", "2018-01-31");
workingPath <- file.path(basePath, "Screening");

#######################################################################################################################
#######################################################################################################################
###
###    Start reading the query hits
###
#######################################################################################################################
#######################################################################################################################

### Read query hits: export to RIS or 'MEDLINE' in PubMed.

rq3_ebscohost <- importRISlike(file.path(firstQueryResultsPath, "EBSCO.ris"),
                               encoding="native.enc");
rq3_pubmed <- importRISlike(file.path(firstQueryResultsPath, "/pubmed_result.txt"));

rq3 <- findDuplicateReferences(rq3_ebscohost, rq3_pubmed,
                               duplicateFieldValue = "dupl",
                               newRecordValue = "new (RQ3 Pubmed)",
                               duplicateValue = "duplicate (RQ3 Pubmed)",
                               originalValue = "original (RQ3 merged)");

### Inspect duplicates
#cbind(rq2$output$records$isDuplicate, rq2$output$records$recordLog);

### Generate bibTexKeys for final database
rq3$output$records <- generateBibtexkeys(rq3$output$records);

### Store the database
sysrevExport(rq3,
             filename=file.path(workingPath, "rq3_prescreening.bibtex"),
             screeningType="screening");

### Generate screener packages
screenerPackages <- buildScreenerPackage(libraryObject = rq3,
                                         screeners = c("sr", "sh"),
                                         fields = (c("title")),
                                         duplicateField = "isDuplicate",
                                         screenerFieldsSuffix = "sweep1",
                                         outputPath = file.path(workingPath, "FirstSweep/Generated"));

#######################################################################################################################
#######################################################################################################################
###
###    Note: at this point, the first screening round must be finished!
###
#######################################################################################################################
#######################################################################################################################

### Because for this study, there is one screener with sample-wise quality
### checks by a second researcher, the script does not need to integrate
### the screening codes of two screeners. Instead, it's possible to just
### add a 'screening round 2' column in the Entry Table (in Preferences ->
### section 'Entry table columns') and the fields shown in the screening tab
### (in Options -> Set up general fields: every line is a tab; the first term
### is the name of the tab, followed by a colon, and then the fields shown in
### that tab separated by semicolons)

#######################################################################################################################
#######################################################################################################################
###
###    Note: at this point, the second screening round must be finished!
###
#######################################################################################################################
#######################################################################################################################

tmp <- screeningProgress(screener1filename = file.path(workingPath, 'screened_sweep2/rq2_s2_s/screening_s_sweep2.bibtex'),
                         screener2filename = file.path(workingPath, 'screened_sweep2/rq2_s2_e/screening_e_sweep2.bibtex'),
                         screener1fieldname = "screenersstatus2",
                         screener2fieldname = "screenerestatus2",
                         combinedFieldname = "rq2_s2");

### Save combined database
sysrevExport(tmp,
             filename=file.path(workingPath, "rq2_screening2_combined.bibtex"),
             screeningType="screening");

### Generate screener packages third phase
screenerPackages <- buildScreenerPackage(libraryObject = tmp,
                                         screeners = c("s", "e"),
                                         basename = "rq2_s3_",
                                         fields = (c("title", "abstract", "rq2_s2")),
                                         duplicateField = NULL,
                                         sortField = 'rq2_s2',
                                         sortDesc = TRUE,
                                         screenerFieldsPrefix = "rq2_s3_",
                                         screenerFieldsSuffix = "",
                                         outputPath = file.path(workingPath, "generated_sweep3"),
                                         generateSettingRemovalBatchFile=TRUE);

#######################################################################################################################
#######################################################################################################################
###
###    Note: at this point, the third screening round must be finished!
###
#######################################################################################################################
#######################################################################################################################

tmp <- screeningProgress(screener1filename = file.path(workingPath, 'screened_sweep3/rq2_s3_s/screening_sweep3_s.bibtex'),
                         screener2filename = file.path(workingPath, 'screened_sweep3/rq2_s3_e/screening_sweep3_e.bibtex'),
                         screener1fieldname = "Rq2_s3_s",
                         screener2fieldname = "Rq2_s3_e",
                         combinedFieldname = "Rq2_s3");

### Save combined database
sysrevExport(tmp,
             filename=file.path(workingPath, "rq2_screening3_combined.bibtex"),
             screeningType="screening");

#######################################################################################################################
#######################################################################################################################
###
###    CORRECTION: At 2018-01-31, we realised a typo in the query.
###                We corrected the typo and re-ran the query.
###                Now, we import the new hits and merge them with
###                the final outcome of the third screening round of
###                the initial (and apparently, unfortunately, not
###                final) screening phase.
###
#######################################################################################################################
#######################################################################################################################

### Import hits of corrected query
rq3_ebscohost_corrected <- importRISlike(file.path(secondQueryResultsPath,
                                                   "758f68a2-ff91-41f1-831a-2e6d5ba6d203.ris"),
                               encoding="native.enc");

### Import final screened bibtex file from first screening phase
rq3_initialScreeningResult <- importBibtex(file.path(workingPath,
                                                     "ThirdSweep",
                                                     "Screening3_SH.bib"));

### Find duplicates
rq3_correction <-
  findDuplicateReferences(primaryRefs = rq3_initialScreeningResult,
                          secondaryRefs = rq3_ebscohost_corrected,
                          duplicateFieldValue = "dupl_queryCorrection",
                          newRecordValue = "new (from corrected query)",
                          duplicateValue = "duplicate (already screened)",
                          originalValue = "original_queryCorrection");

### Save combined database
sysrevExport(rq3_correction,
             filename=file.path(workingPath, "rq2_screening3_combined_with_corrected_query.bibtex"),
             screeningType="screening");

### Generate new screener packages third phase
screenerPackages <- buildScreenerPackage(libraryObject = rq3_correction,
                                         screeners = c("s", "e"),
                                         basename = "rq2_s4_",
                                         fields = (c("title", "abstract", "rq2_s3", "dupl_queryCorrection")),
                                         duplicateField = NULL,
                                         sortField = 'dupl_queryCorrection',
                                         sortDesc = TRUE,
                                         screenerFieldsPrefix = "rq2_s4_",
                                         screenerFieldsSuffix = "",
                                         outputPath = file.path(workingPath, "generated_correctedQuery_sweep1"),
                                         generateSettingRemovalBatchFile=TRUE);
