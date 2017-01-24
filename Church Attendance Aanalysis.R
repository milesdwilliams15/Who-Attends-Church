
## Some Visuals
library(ggplot2)

# Looking at the data by age:
prop1<-data.frame(prop.table(table(relig$age,relig$attendance),1))
prop2<-data.frame(prop.table(table(relig$age,relig$personalGod),1))
prop3<-data.frame(prop.table(table(relig$age,relig$heaven),1))
prop4<-data.frame(prop.table(table(relig$age,relig$hell),1))
prop5<-data.frame(prop.table(table(relig$age,relig$certainty),1))
prop6<-data.frame(prop.table(table(relig$age,relig$belief),1))
prop7<-data.frame(prop.table(table(relig$age,relig$scripture),1))
prop8<-data.frame(prop.table(table(relig$age,relig$literal),1))
prop9<-data.frame(prop.table(table(relig$age,relig$exclusive),1))
prop10<-data.frame(prop.table(table(relig$age,relig$denominationShould),1))
prop11<-data.frame(prop.table(table(relig$age,relig$pray),1))
prop12<-data.frame(prop.table(table(relig$age,relig$studyGroup),1))
prop13<-data.frame(prop.table(table(relig$age,relig$studyPersonal),1))
prop14<-data.frame(prop.table(table(relig$age,relig$shareFaithWithNonBelievers),1))
prop15<-data.frame(prop.table(table(relig$age,relig$shareFaithWithBelievers),1))
prop16<-data.frame(prop.table(table(relig$age,relig$peace),1))
prop17<-data.frame(prop.table(table(relig$age,relig$wonder),1))
prop18<-data.frame(prop.table(table(relig$age,relig$thankful),1))
prop19<-data.frame(prop.table(table(relig$age,relig$serve),1))
prop20<-data.frame(prop.table(table(relig$age,relig$education),1))
prop21<-data.frame(prop.table(table(relig$age,relig$Income),1))
prop22<-data.frame(prop.table(table(relig$age,relig$ideology),1))
prop23<-data.frame(prop.table(table(relig$age,relig$gender),1))
prop24<-data.frame(prop.table(table(relig$age,relig$feelLGB),1))
prop25<-data.frame(prop.table(table(relig$age,relig$feelMorals),1))
prop26<-data.frame(prop.table(table(relig$age,relig$abortion),1))
prop27<-data.frame(prop.table(table(relig$age,relig$LGBmarriage),1))
prop28<-data.frame(prop.table(table(relig$age,relig$guidance),1))
prop29<-data.frame(prop.table(table(relig$age,relig$married),1))
prop30<-data.frame(prop.table(table(relig$age,relig$raceth),1))

ggplot(prop30,aes(x=Var1,y=Freq,fill=Var2)) + 
  geom_col() + scale_fill_grey() +
  theme_classic() + 
  guides(fill=guide_legend(title="Race/Ethnicity")) + 
  scale_y_continuous(labels=scales::percent) +
  theme(axis.text.x=element_text(angle=-45,hjust=0)) +
  ggtitle("Race/Ethnicity by Age",subtitle="Original Data from the Pew Research Center") +
  xlab("") + ylab("Percent") 

# Looking at effect of variables on attendance:
prop1b<-data.frame(prop.table(table(relig$age,relig$attendance),1))
prop2b<-data.frame(prop.table(table(relig$personalGod,relig$attendance),1))
prop3b<-data.frame(prop.table(table(relig$heaven,relig$attendance),1))
prop4b<-data.frame(prop.table(table(relig$hell,relig$attendance),1))
prop5b<-data.frame(prop.table(table(relig$certainty,relig$attendance),1))
prop6b<-data.frame(prop.table(table(relig$belief,relig$attendance),1))
prop7b<-data.frame(prop.table(table(relig$scripture,relig$attendance),1))
prop8b<-data.frame(prop.table(table(relig$literal,relig$attendance),1))
prop9b<-data.frame(prop.table(table(relig$exclusive,relig$attendance),1))
prop10b<-data.frame(prop.table(table(relig$denominationShould,relig$attendance),1))
prop11b<-data.frame(prop.table(table(relig$pray,relig$attendance),1))
prop12b<-data.frame(prop.table(table(relig$studyGroupCat,relig$attendance),1))
prop13b<-data.frame(prop.table(table(relig$studyPersonal,relig$attendance),1))
prop14b<-data.frame(prop.table(table(relig$shareFaithWithNonBelievers,relig$attendance),1))
prop15b<-data.frame(prop.table(table(relig$shareFaithWithBelievers,relig$attendance),1))
prop16b<-data.frame(prop.table(table(relig$peace,relig$attendance),1))
prop17b<-data.frame(prop.table(table(relig$wonder,relig$attendance),1))
prop18b<-data.frame(prop.table(table(relig$thankful,relig$attendance),1))
prop19b<-data.frame(prop.table(table(relig$serve,relig$attendance),1))
prop20b<-data.frame(prop.table(table(relig$education,relig$attendance),1))
prop21b<-data.frame(prop.table(table(relig$Income,relig$attendance),1))
prop22b<-data.frame(prop.table(table(relig$ideology,relig$attendance),1))
prop23b<-data.frame(prop.table(table(relig$gender,relig$attendance),1))
prop24b<-data.frame(prop.table(table(relig$feelLGB,relig$attendance),1))
prop25b<-data.frame(prop.table(table(relig$feelMorals,relig$attendance),1))
prop26b<-data.frame(prop.table(table(relig$abortion,relig$attendance),1))
prop27b<-data.frame(prop.table(table(relig$LGBmarriage,relig$attendance),1))
prop28b<-data.frame(prop.table(table(relig$guidance,relig$attendance),1))
prop29b<-data.frame(prop.table(table(relig$married,relig$attendance),1))
prop30b<-data.frame(prop.table(table(relig$raceth,relig$attendance),1))

ggplot(prop30b,aes(x=Var1,y=Freq,fill=Var2)) + 
  geom_col() + 
  theme_classic() + scale_fill_grey() +
  guides(fill=guide_legend(title="Religious Service Attendance")) +
  scale_y_continuous(labels=scales::percent) +
  theme(axis.text.x=element_text(angle=-45,hjust=0)) +
  ggtitle("Race/Ethnicity by Attendance",subtitle="Original Data from the Pew Research Center") +
  xlab("") + ylab("Percent") 

# Look at the effect of variables on study group participation:
prop1c<-data.frame(prop.table(table(relig$age,relig$studyGroupCat),1))
prop2c<-data.frame(prop.table(table(relig$personalGod,relig$studyGroupCat),1))
prop3c<-data.frame(prop.table(table(relig$heaven,relig$studyGroupCat),1))
prop4c<-data.frame(prop.table(table(relig$hell,relig$studyGroupCat),1))
prop5c<-data.frame(prop.table(table(relig$certainty,relig$studyGroupCat),1))
prop6c<-data.frame(prop.table(table(relig$belief,relig$studyGroupCat),1))
prop7c<-data.frame(prop.table(table(relig$scripture,relig$studyGroupCat),1))
prop8c<-data.frame(prop.table(table(relig$literal,relig$studyGroupCat),1))
prop9c<-data.frame(prop.table(table(relig$exclusive,relig$studyGroupCat),1))
prop10c<-data.frame(prop.table(table(relig$denominationShould,relig$studyGroupCat),1))
prop11c<-data.frame(prop.table(table(relig$pray,relig$studyGroupCat),1))
prop12c<-data.frame(prop.table(table(relig$attendance,relig$studyGroupCat),1))
prop13c<-data.frame(prop.table(table(relig$studyPersonal,relig$studyGroupCat),1))
prop14c<-data.frame(prop.table(table(relig$shareFaithWithNonBelievers,relig$studyGroupCat),1))
prop15c<-data.frame(prop.table(table(relig$shareFaithWithBelievers,relig$studyGroupCat),1))
prop16c<-data.frame(prop.table(table(relig$peace,relig$studyGroupCat),1))
prop17c<-data.frame(prop.table(table(relig$wonder,relig$studyGroupCat),1))
prop18c<-data.frame(prop.table(table(relig$thankful,relig$studyGroupCat),1))
prop19c<-data.frame(prop.table(table(relig$serve,relig$studyGroupCat),1))
prop20c<-data.frame(prop.table(table(relig$education,relig$studyGroupCat),1))
prop21c<-data.frame(prop.table(table(relig$Income,relig$studyGroupCat),1))
prop22c<-data.frame(prop.table(table(relig$ideology,relig$studyGroupCat),1))
prop23c<-data.frame(prop.table(table(relig$gender,relig$studyGroupCat),1))
prop24c<-data.frame(prop.table(table(relig$feelLGB,relig$studyGroupCat),1))
prop25c<-data.frame(prop.table(table(relig$feelMorals,relig$studyGroupCat),1))
prop26c<-data.frame(prop.table(table(relig$abortion,relig$studyGroupCat),1))
prop27c<-data.frame(prop.table(table(relig$LGBmarriage,relig$studyGroupCat),1))
prop28c<-data.frame(prop.table(table(relig$guidance,relig$studyGroupCat),1))
prop29c<-data.frame(prop.table(table(relig$married,relig$studyGroupCat),1))
prop30c<-data.frame(prop.table(table(relig$raceth,relig$studyGroupCat),1))

ggplot(prop3c,aes(x=Var1,y=Freq,fill=Var2)) + 
  geom_col() + 
  theme_classic() +
  guides(fill=guide_legend(title="Study Group Attendance")) +
  scale_y_continuous(labels=scales::percent) +
  theme(axis.text.x=element_text(angle=-45,hjust=0)) +
  ggtitle("",subtitle="") +
  xlab("") + ylab("Percent") 


install.packages("descr")
library(descr)

plot(crosstab(relig$attendance,relig$generation,weight=relig$WEIGHT,
         chisq=TRUE,prop.t=TRUE,xlab="Generation",ylab="Frequency of Religious Service Attendance"))

## Some Models
churchAttend<-lm(attendanceNum ~ beliefNum + certaintyNum + personalGodNum + 
                   heavenNum + hellNum + scriptureByGodNum + scriptureLiteralNum + 
                   exclusiveNum + prayNum + as.character(raised) + ageNum + 
                   educationNum + incomeNum + Republican + Democrat + Independent + 
                   ideologyNum + Male + white + black + Hispanic + other, data = relig, 
                 weights = WEIGHT)
library(dotwhisker)
windows()
dwplot(churchAttend,dot_args=aes(color="black",fill="white",size=3),
       whisker_args=aes(color="black",size=1)) +
  geom_vline(xintercept=0,color="grey50",linetype=1,size=.8) +
  theme_classic() +
  relabel_y_axis(c("Certainty of\nBelief",
                   "Belief in a\nPersonal God",
                   "Belief in Heaven",
                   "Belief in Hell",
                   "Literal Interpretation\nof Scripture",
                   "Exclusivity of\nSalvation",
                   "Frequency of Prayer",
                   "Raised Buddhist",
                   "Raised Catholic",
                   "Raised Evangelical",
                   "Raised Hindu",
                   "Raised Jehovah's\nWitness",
                   "Raised Jewish",
                   "Raised Mainline\nProtestant",
                   "Raised Mormon",
                   "Raised Muslim",
                   "Didn't Say",
                   "Raised Orthodox",
                   "Raised Other Christian",
                   "Raised Other Faith",
                   "Raised Other World\nReligion",
                   "Religious None",
                   "Age",
                   "Education",
                   "Income",
                   "Republican",
                   "Democrat",
                   "Independent",
                   "Liberal Ideology",
                   "Male",
                   "White",
                   "Black",
                   "Hispanic")) +
  theme(axis.text.x=element_text(angle=45,hjust=1)) +
  ggtitle("Effect on the Frequency of Religious Service Attendance",
          subtitle = "OLS Coefficients Shown") +
  xlab("Estimated Coefficient") +
  theme(plot.subtitle = element_text(face="italic")) +
  theme(text=element_text(family="serif")) + coord_flip() +
  theme(panel.grid.major.x=element_line(colour="grey50",linetype=2))
library(rms)
windows()
churchAttend2<-polr(as.factor(attendanceNum) ~ beliefNum + certaintyNum + personalGodNum + 
                   heavenNum + hellNum + scriptureByGodNum + scriptureLiteralNum + 
                   exclusiveNum + prayNum + as.character(raised) + ageNum + 
                   educationNum + incomeNum + Republican + Democrat + Independent + 
                   ideologyNum + Male + white + black + Hispanic + other, data = relig, 
                 weights = WEIGHT, Hess = TRUE)
term<-c(as.character(cbind(rownames(coef(summary(churchAttend2))))))
estimate<-c(coef(summary(churchAttend2))[,1])
std.error<-c(coef(summary(churchAttend2))[,2])
ctable<-data.frame(term,estimate,std.error)
windows()
dwplot(ctable[1:33,],dot_args=aes(color="black",fill="white",size=3),
       whisker_args=aes(color="black",size=1)) +
  geom_vline(xintercept=0,color="grey50",linetype=1,size=.8) +
  theme_classic() +
  relabel_y_axis(c("Certainty of\nBelief",
                   "Belief in a\nPersonal God",
                   "Belief in Heaven",
                   "Belief in Hell",
                   "Literal Interpretation\nof Scripture",
                   "Exclusivity of\nSalvation",
                   "Frequency of Prayer",
                   "Raised Buddhist",
                   "Raised Catholic",
                   "Raised Evangelical",
                   "Raised Hindu",
                   "Raised Jehovah's\nWitness",
                   "Raised Jewish",
                   "Raised Mainline\nProtestant",
                   "Raised Mormon",
                   "Raised Muslim",
                   "Didn't Say",
                   "Raised Orthodox",
                   "Raised Other Christian",
                   "Raised Other Faith",
                   "Raised Other World\nReligion",
                   "Religious None",
                   "Age",
                   "Education",
                   "Income",
                   "Republican",
                   "Democrat",
                   "Independent",
                   "Liberal Ideology",
                   "Male",
                   "White",
                   "Black",
                   "Hispanic")) +
  theme(axis.text.x=element_text(angle=45,hjust=1)) +
  ggtitle("Effect on the Frequency of Religious Service Attendance",
          subtitle = "Ordered Logit Coefficients Shown") +
  xlab("Estimated Coefficient") +
  theme(plot.subtitle = element_text(face="italic")) +
  theme(text=element_text(family="serif")) + coord_flip() +
  theme(panel.grid.major.x=element_line(colour="grey50",linetype=2))


hv<-glm()
hl<-glm()
ct<-glm()
