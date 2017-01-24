
## data frame called 'relig'

# recodes
library(car)
relig$faith<-Recode(relig$RELTRAD,"1100='Evangelical';
                    1200='Mainline Protestant';
                    1300='Black Protestant';
                    10000='Catholic';
                    20000='Mormon';
                    30000='Orthodox';
                    40001='Jehovah Witness';
                    40002='Other Christian';
                    50000='Jewish';
                    60000='Muslim';
                    70000='Buddhist';
                    80000='Hindu';
                    90001='Other World Religion';
                    90002='Other Faith';
                    100000='Unaffiliated (religious none)';
                    900000='NA'")

relig$attendanceCat<-Recode(relig$attend,"1='(1) More than once a week';
                         2='(2) Once a Week';
                         3='(3) Once or Twice a Month';
                         4='(4) A Few Times a Year';
                         5='(5) Seldom';
                         6='(6) Never';
                         9='(NA) Refused to Answer'")
relig$attendanceNum <- as.numeric(Recode(relig$attend,"1='5';2='4';3='3';4='2';5='1';6='0';else='NA'"))

relig$importance<-Recode(relig$qf2, "1='Very Important';
                         2='Somewhat Important';
                         3='Not Too Important';
                         4='Not at All Important';
                         9='Refused to Answer'",
                         as.factor=TRUE)
relig$importanceNum<-as.numeric(Recode(relig$qf2,"1='3';2='2';3='1';4='0';else='NA'"))

relig$member<-Recode(relig$qf5, "1='Yes';
                     2='No';
                     3='Refused to Answer'",
                     as.factor=TRUE)
relig$memberNum<-as.numeric(Recode(relig$qf5,"1='1';2='0';else='NA'"))

relig$belief<-Recode(relig$qg1, "1='(1) Yes, I Believe in (a) God';
                     2='(2) No, I Do Not Believe in (a) God';
                     3='(3) Other';
                     9='(NA) Refused to Answer'",
                     as.factor=TRUE)
relig$beliefNum<-as.numeric(Recode(relig$qg1,"1='1';2='0';3='0';else='NA'"))

relig$certainty<-Recode(relig$qg1b,"1='(1) Absolutely Certain';
                        2='(2) Fairly Certain';
                        3='(3) Not Too Certain';
                        4='(4) Not at All Certain';
                        9='(NA) Refused to Answer'",
                        as.factor=TRUE)
relig$certaintyNum<-as.numeric(Recode(relig$qg1b,"1='3';2='2';3='1';4='0';else='NA'"))

relig$personalGod<-Recode(relig$qg1c,"1='(1) God is a Person';
                          2='(2) God Is an Impersonal Force';
                          3='(3) Other';
                          9='(NA) Refused to Answer'",
                          as.factor=TRUE)
relig$personalGodNum<-as.numeric(Recode(relig$qg1c,"1='1';2='0';3='0';else='NA'"))

relig$heaven<-Recode(relig$qg5,"1='(1) Yes, There Is a Heaven';
                     2='(2) No, There Is Not a Heaven';
                     3='(3) Other';
                     9='(NA) Refused to Answer'",
                     as.factor=TRUE)
relig$heavenNum<-as.numeric(Recode(relig$qg5,"1='1';2='0';3='0';else='NA'"))

relig$hell<-Recode(relig$qg6,"1='(1) Yes, There Is a Hell';
                     2='(2) No, There Is Not a Hell';
                   3='(3) Other';
                   9='(NA) Refused to Answer'",
                   as.factor=TRUE)
relig$hellNum<-as.numeric(Recode(relig$qg6,"1='1';2='0';3='0';else='NA'"))

relig$scripture<-Recode(relig$qg7,"1='(1) Scripture Is the Word of God';
                        2='(2) Scripture Is Written by Men (not God)';
                        3='(3) Other';
                        9='(NA) Refused to Answer'",
                        as.factor=FALSE)
relig$scriptureByGodNum<-as.numeric(Recode(relig$qg7,"1='1';2='0';3='0';else='NA'"))

relig$literal<-Recode(relig$qg7b,"1='(1) Scripture Is to Be Taken Literally';
                      2='(2) Not All Scripture Is to Be Taken Literally';
                      3='(3) Other';
                      9='(NA) Refused to Answer'",
                      as.factor=TRUE)
relig$scriptureLiteralNum<-as.numeric(Recode(relig$qg7b,"1='1';2='0';3='0';else='NA'"))

relig$exclusive<-Recode(relig$qh1,"1='(1) Only My Religion Leads to Eternal Life';
                        2='(2) Many Religions Can Lead to Eternal Life';
                        3='(3) Other';
                        9='(NA) Refused to Answer'",
                        as.factor=TRUE)
relig$exclusiveNum<-as.numeric(Recode(relig$qh1,"1='1';2='0';3='0';else='NA'"))

relig$exclusiveChristian<-Recode(relig$qh2,"1='(1) Only Christian Religions Lead to Eternal Life';
                                 2='(2) Some non-Christian Religions Can Lead to Eternal Life';
                                 3='(NA) Undesignated';
                                 9='(NA) Refused to Answer'",
                                 as.factor=TRUE)
relig$exclusiveChristianNum<-as.numeric(Recode(relig$qh2,"1='1';2='0';3='0';else='NA'"))

relig$denominationShould<-Recode(relig$qh4,"1='(1) Preserve Tradition';
                                 2='(2) Adjust Tradition In Light of New Circumstances';
                                 3='(3) Adopt Modern Beliefs and Practices';
                                 4='(4) Other';
                                 9='(NA) Refused to Answer'",
                                 as.factor=TRUE)
relig$preserveTraditionNum<-as.numeric(Recode(relig$qh4,"1='2';2='1';3='0';else='NA'"))

relig$pray<-Recode(relig$qi1,"1='(1) At Least Once a Week';
                         2='(2) Once a Day';
                            3='(3) A Few Times a Week';
                            4='(4) Once a Week';
                            5='(5) A Few Times a Month';
                            6='(6) Seldom';
                            7='(7) Never';
                            8='(NA) Undesignated';
                            9='(NA) Refused to Answer'",
                   as.factor=TRUE)
relig$prayNum<-as.numeric(Recode(relig$qi1,"1='6';2='5';3='4';4='3';5='2';6='1';7='0';else='NA'"))

relig$studyGroupCat<-Recode(relig$qi2a,"1='(1) At Least Once a Week';
                         2='(2) Once or Twice a Month';
                         3='(3) Several Times a Year';
                         4='(4) Seldom';
                         5='(5) Never';
                         8='(NA) Undesignated';
                         9='(NA) Refused to Answer'",
                         as.factor=TRUE)
relig$studyGroupNum<-as.numeric(Recode(relig$qi2a,"1='4';2='3';3='2';4='1';5='0';else='NA'"))

relig$studyPersonal<-Recode(relig$qi2b,"1='(1) At Least Once a Week';
                         2='(2) Once or Twice a Month';
                            3='(3) Several Times a Year';
                            4='(4) Seldom';
                            5='(5) Never';
                            8='(NA) Undesignated';
                            9='(NA) Refused to Answer'",
                            as.factor=TRUE)
relig$studyPersonalNum<-as.numeric(Recode(relig$qi2b,"1='4';2='3';3='2';4='1';5='0';else='NA'"))

relig$meditate<-Recode(relig$qi2c,"1='At Least Once a Week';
                         2='Once or Twice a Month';
                       3='Several Times a Year';
                       4='Seldom';
                       5='Never';
                       8='Undesignated';
                       9='Refused to Answer'",
                       as.factor=TRUE)
relig$meditateNum<-as.numeric(Recode(relig$qi2c,"1='4';2='3';3='2';4='1';5='0';else='NA'"))

relig$tongues<-Recode(relig$qi2d,"1='At Least Once a Week';
                         2='Once or Twice a Month';
                      3='Several Times a Year';
                      4='Seldom';
                      5='Never';
                      8='Undesignated';
                      9='Refused to Answer'",
                      as.factor=TRUE)
relig$tonguesNum<-as.numeric(Recode(relig$qi2d,"1='4';2='3';3='2';4='1';5='0';else='NA'"))

relig$shareFaithWithNonBelievers<-Recode(relig$qi2g,"1='(1) At Least Once a Week';
                         2='(2) Once or Twice a Month';
                                         3='(3) Several Times a Year';
                                         4='(4) Seldom';
                                         5='(5) Never';
                                         8='(NA) Undesignated';
                                         9='(NA) Refused to Answer'",
                                         as.factor=TRUE)
relig$evangelizeNum<-as.numeric(Recode(relig$qi2g,"1='4';2='3';3='2';4='1';5='0';else='NA'"))

relig$shareFaithWithBelievers<-Recode(relig$qi2h,"1='(1) At Least Once a Week';
                         2='(2) Once or Twice a Month';
                                      3='(3) Several Times a Year';
                                      4='(4) Seldom';
                                      5='(5) Never';
                                      8='(NA) Undesignated';
                                      9='(NA) Refused to Answer'",
                                      as.factor=TRUE)
relig$fellowEvangelizeNum<-as.numeric(Recode(relig$qi2h,"1='4';2='3';3='2';4='1';5='0';else='NA'"))

relig$serve<-Recode(relig$qi3,"1='(1) Yes, Did Volunteer Work in Past Seven Days';
                    2='(2) No, Did Not Do Volunteer Work in Past Seven Days';
                    9='(NA) Refused to Answer'",
                    as.factor=TRUE)
relig$recentlyVolunteerNum<-as.numeric(Recode(relig$qi3,"1='1';2='0';else='NA'"))

relig$peace<-Recode(relig$qi4a,"1='(1) Feel a Sense of Peace At Least Once a Week';
                         2='(2) Feel a Sense of Peace Once or Twice a Month';
                    3='(3) Feel a Sense of Peace Several Times a Year';
                    4='(4) Feel a Sense of Peace Seldom';
                    5='(5) Feel a Sense of Peace Never';
                    9='(NA) Refused to Answer'",
                    as.factor=TRUE)
relig$peaceNum<-as.numeric(Recode(relig$qi4a,"1='4';2='3';3='2';4='1';5='0';else='NA'"))

relig$wonder<-Recode(relig$qi4b,"1='(1) Feel a Sense of Wonder At Least Once a Week';
                         2='(2) Feel a Sense of Wonder Once or Twice a Month';
                     3='(3) Feel a Sense of Wonder Several Times a Year';
                     4='(4) Feel a Sense of Wonder Seldom';
                     5='(5) Feel a sense of Wonder Never';
                     9='(NA) Refused to Answer'",
                     as.factor=TRUE)
relig$wonderNum<-as.numeric(Recode(relig$qi4b,"1='4';2='3';3='2';4='1';5='0';else='NA'"))

relig$thankful<-Recode(relig$qi4c,"1='(1) Feel Thankful At Least Once a Week';
                         2='(2) Feel Thankful Once or Twice a Month';
                       3='(3) Feel Thankful Several Times a Year';
                       4='(4) Feel Thankful Seldom';
                       5='(5) Feel Thankful Never';
                       9='(NA) Refused to Answer'",
                       as.factor=TRUE)
relig$thankfulNum<-as.numeric(Recode(relig$qi4c,"1='4';2='3';3='2';4='1';5='0';else='NA'"))

relig$ponderMeaning<-Recode(relig$qi4d,"1='At Least Once a Week';
                         2='Once or Twice a Month';
                            3='Several Times a Year';
                            4='Seldom';
                            5='Never';
                            9='Refused to Answer'",
                            as.factor=TRUE)
relig$ponderMeaningNum<-as.numeric(Recode(relig$qi4d,"1='4';2='3';3='2';4='1';5='0';else='NA'"))

relig$raised<-Recode(relig$CHRELTRAD,"1100='Evangelical';
                    1200='Mainline Protestant';
                     1300='Black Protestant';
                     10000='Catholic';
                     20000='Mormon';
                     30000='Orthodox';
                     40001='Jehovah Witness';
                     40002='Other Christian';
                     50000='Jewish';
                     60000='Muslim';
                     70000='Buddhist';
                     80000='Hindu';
                     90001='Other World Religion';
                     90002='Other Faith';
                     100000='Unaffiliated (religious none)';
                     900000='Not Provided'", 
                     as.factor=TRUE)

relig$age<-Recode(relig$agerec,"1='< 25';
                  2='25-29';
                  3='30-34';
                  4='35-39';
                  5='40-44';
                  6='45-49';
                  7='50-54';
                  8='55-59';
                  9='60-64';
                  10='65-69';
                  11='70-74';
                  12='75-79';
                  13='80-84';
                  14='85-89';
                  15='90(+)';
                  99='Refused to Answer'",
                  as.factor=TRUE)
relig$ageNum<-relig$agerec - 1
relig$ageNum[relig$ageNum == 98] <- NA

relig$generation<-Recode(relig$cohort5cat,"1='(1) Greatest Generation (born before 1928)';
                         2='(2) Silent Generation (born 1928-1945)';
                         3='(3) Baby Boomers (born 1946-1964)';
                         4='(4) Generation X (born 1965-1980)';
                         5='(5) Millennials (born 1981-1996)';
                         99='(NA) Refused to Answer'",
                         as.factor=TRUE)

relig$education<-Recode(relig$educ,"1='(1) Less Than High School';
                        2='(2) Never Finished High School';
                        3='(3) High School Graduate';
                        4='(4) Some College';
                        5='(5) Associate Degree';
                        6='(6) Bachelor Degree';
                        7='(7) Some Postgraduate Schooling';
                        8='(8) Master, Ph.D., Medical, or Law Degree';
                        9='(NA) Refused to Answer'",
                        as.factor=TRUE)
relig$educationNum<-relig$educ - 1
relig$educationNum[relig$educ == 8] <- NA

relig$Income<-Recode(relig$income,"1='(1) $10K(-)';
                     2='(2) $10K-$20K';
                     3='(3) $20K-$30K';
                     4='(4) $30K-$40K';
                     5='(5) $40K-$50K';
                     6='(6) $50K-$75K';
                     7='(7) $75K-$100K';
                     8='(8) $100K-$150K';
                     9='(9) $150K(+)';
                     99='(NA) Refused to Answer'",
                     as.factor=TRUE)
relig$incomeNum<-relig$income - 1
relig$incomeNum[relig$incomeNum == 98] <- NA

relig$Party<-Recode(relig$party,"1='Republican';
                    2='Democrat';
                    3='Independent';
                    4='No Preference';
                    5='Other Party (3rd party)';
                    9='Refused to Answer'",
                    as.factor=TRUE)
relig$Republican<-as.numeric(Recode(relig$party,"1='1';9='NA';else='0'"))
relig$Democrat<-as.numeric(Recode(relig$party,"2='1';9='NA';else='0'"))
relig$Independent<-as.numeric(Recode(relig$party,"3='1';9='NA';else='0'"))

relig$PartyLn<-Recode(relig$partyln,"1='Republican';
                      2='Democrat';
                      9='Refused to Answer'",
                      as.factor=TRUE)

relig$ideology<-Recode(relig$ideo,"1='(1) Very Conservative';
                       2='(2) Conservative';
                       3='(3) Moderate';
                       4='(4) Liberal';
                       5='(5) Very Liberal';
                       9='(6) Refused to Answer'",
                       as.factor=TRUE)
relig$ideologyNum<-relig$ideo - 1
relig$ideologyNum[relig$ideologyNum == 8] <- NA

relig$gender<-Recode(relig$SEX,"1='Male';
                     2='Female'",
                     as.factor=TRUE)
relig$Male<-Recode(relig$SEX,"1='1';2='0';else='NA'")

relig$knowLGB<-Recode(relig$qp99,"1='Yes';
                      2='No';
                      3='Refused to Answer'",
                      as.factor=TRUE)
relig$knowLGB<-as.numeric(Recode(relig$qp99,"1='1';2='0';else='NA'"))

relig$happiness<-Recode(relig$qa1,"1='Very Happy';
                        2='Pretty Happy';
                        3='Not Too Happy';
                        9='Refused to Answer'",
                        as.factor=TRUE)
relig$happinessNum<-as.numeric(Recode(relig$qa1,"1='2';2='1';3='0';else='NA'"))

relig$satisfiedFamily<-Recode(relig$qa2a,"1='Very Satisfied';
                              2='Somewhat Satisfied';
                              3='Somewhat Dissatisfied';
                              4='Very Dissatisfied';
                              9='Refused to Answer'",
                              as.factor=TRUE)
relig$satisfiedFamilyNum<-as.numeric(Recode(relig$qa2a,"1='3';2='2';3='1';4='0';else='NA'"))

relig$satisfiedHealth<-Recode(relig$qa2b,"1='Very Satisfied';
                              2='Somewhat Satisfied';
                              3='Somewhat Dissatisfied';
                              4='Very Dissatisfied';
                              9='Refused to Answer'",
                              as.factor=TRUE)
relig$satisfiedHealthNum<-as.numeric(Recode(relig$qa2b,"1='3';2='2';3='1';4='0';else='NA'"))

relig$feelMoreImmigrants<-Recode(relig$qb1a,"1='Change for the Better';
                                 2='Change for the Worse';
                                 3='No Difference';
                                 4='Mixed Changes';
                                 9='Refused to Answer'",
                                 as.factor=TRUE)
relig$MoreImmigrantsBetterNum<-as.numeric(Recode(relig$qb1a,"1='3';2='0';3='2';4='1';else='NA'"))

relig$feelMoreWorkingWomen<-Recode(relig$qb1b,"1='Change for the Better';
                                 2='Change for the Worse';
                                   3='No Difference';
                                   4='Mixed Changes';
                                   9='Refused to Answer'",
                                   as.factor=TRUE)
relig$MoreWorkingWomenBetterNum<-as.numeric(Recode(relig$qb1b,"1='3';2='0';3='2';4='1';else='NA'"))

relig$feelMoreKidsUnmarried<-Recode(relig$qb1c,"1='Change for the Better';
                                 2='Change for the Worse';
                                    3='No Difference';
                                    4='Mixed Changes';
                                    9='Refused to Answer'",
                                    as.factor=TRUE)
relig$MoreUnmarriedKidsBetterNum<-as.numeric(Recode(relig$qb1c,"1='3';2='0';3='2';4='1';else='NA'"))

relig$feelLGB<-Recode(relig$qb2a,"1='(1) Homosexuality Should Be Accepted by Society';
                      2='(2) Homosexuality Should Be Discouraged by Society';
                      3='(3) Neither';
                      9='(NA) Refused to Answer'",
                      as.factor=TRUE)
relig$LGBAcceptedNum<-as.numeric(Recode(relig$qb2a,"1='1';9='NA';else='0'"))

relig$feelWelfare<-Recode(relig$qb2b,"1='Government Aid Does More Harm Than Good';
                          2='Government Aid Does More Good Than Harm';
                          3='Neither';
                          9='Refused to Answer'",
                          as.factor=TRUE)
relig$govtAidGoodNum<-as.numeric(Recode(relig$qb2b,"1='1';9='NA';else='0'"))

relig$feelEnvironment<-Recode(relig$qb2c,"1='Environmental Laws Hurt the Economy';
                              2='Environmental Laws Are Worth the Cost';
                              3='Neither';
                          9='Refused to Answer'",
                              as.factor=TRUE)
relig$enviLawsGoodNum<-as.numeric(Recode(relig$qb2c,"2='1';9='NA';else='0'"))

relig$feelMorals<-Recode(relig$qb2d,"1='(1) There Are Clear and Absolute Standards of Right and Wrong';
                         2='(2) Whether Something Is Right or Wrong Is Situation Dependent';
                         3='(3) Neither';
                          9='(NA) Refused to Answer'",
                         as.factor=TRUE)
relig$moralAbsoluteNum<-as.numeric(Recode(relig$qb2d,"1='1';9='NA';else='0'"))

relig$GovtSize<-Recode(relig$qb20,"1='Prefer Smaller Government';
                       2='Prefer Bigger Government';
                       3='Depends';
                       9='Refused to Answer'",
                       as.factor=TRUE)
relig$bigGovtNum<-as.numeric(Recode(relig$qb20,"1='0';2='2';3='1';else='NA'"))

relig$abortion<-Recode(relig$qb21,"1='(1) Legal in All Cases';
                       2='(2) Legal in Most Cases';
                       3='(3) Illegal in Most Cases';
                       4='(4) Illegal in all Cases';
                       9='(NA) Refused to Answer'",
                       as.factor=TRUE)
relig$abortionNum<-as.numeric(Recode(relig$qb21,"1='3';2='2';3='1'4='0';else='NA'"))

relig$LGBmarriage<-Recode(relig$qb22,"1='(1) Strongly Favor Gay and Lesbian Marriage';
                          2='(2) Favor Gay and Lesbian Marriage';
                          3='(3) Oppose Gay and Lesbian Marriage';
                          4='(4) Strongly Oppose Gay and Lesbian Marriage';
                          9='(NA) Refused to Answer'",
                          as.factor=TRUE)
relig$LGBmarriageNum<-as.numeric(Recode(relig$qb22,"1='3';2='2';3='1';4='0';else='NA'"))

relig$creation<-Recode(relig$qb30,"1='Life Evolved over Time';
                       2='Life Has Existed in Its Present Form Since the Beginning of Time';
                       9='Refused to Say'",
                       as.factor=TRUE)
relig$evolutionNum<-as.numeric(Recode(relig$qb30,"1='1';2='0';else='NA'"))

relig$evolution<-Recode(relig$qb30b,"1='Life Evolved due to Natural Processes';
                        2='A Supreme Being Guided Evolution';
                        9='Refused to Answer'",
                        as.factor=TRUE)
relig$intelligentDesignNum<-as.numeric(Recode(relig$qb30b,"2='1';1='0';else='NA'"))

relig$guidance<-Recode(relig$qb31,"1='(1) Guidance from Religious Teachings and Beliefs';
                       2='(2) Guidance from Philosophy and Reason';
                       3='(3) Guidance from Practical Experience and Common Sense';
                       4='(4) Guidance from Scientific Information';
                       9='(NA) Refused to Answer'",
                       as.factor=TRUE)

relig$married<-Recode(relig$marital,"1='(1) Married';
                      2='(2) Living with Partnew';
                      3='(3) Divorced';
                      4='(4) Separated';
                      5='(5) Widowed';
                      6='(6) Never Been Married';
                      9='(NA) Refused to Answer'",
                      as.factor=TRUE)

relig$hispanic<-Recode(relig$hisp,"1='Hispanic';
                       2='Not Hispanic';
                       9='Refused to Answer'",
                       as.factor=TRUE)

relig$race<-Recode(relig$racecmb,"1='White';
                   2='Black';
                   3='Asian';
                   4='Mixed Race';
                   5='Other';
                   9='Refused to Answer'",
                   as.factor=TRUE)

relig$raceth<-Recode(relig$racethn,"1='White';
                     2='Black';
                     3='Hispanic';
                     4='Other';
                     9='Refused to Answer'",
                     as.factor=TRUE)

relig$white<-as.numeric(Recode(relig$racethn,"1='1';9='NA';else='0'"))
relig$black<-as.numeric(Recode(relig$racethn,"2='1';9='NA';else='0'"))
relig$Hispanic<-as.numeric(Recode(relig$racethn,"3='1';9='NA';else='0'"))
relig$other<-as.numeric(Recode(relig$racethn,"4='1';9='NA';else='0'"))


