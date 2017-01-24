# Who Attends Church?
## OLS and Ordered Logit Analysis of Pew Research Center Data on Religious Attitudes and Behavior

Religious and political attitudes and behaviors often intersect, so it makes sense to ascertain what factors are most associated with something such as religious service attendance. A recent survey by Pew Research Center found that many congregants reported hearing about politics from the pulpit. Frequent attendance at church or another religious service, therefore, may have some association with political attitudes (in addition, of course, to many other non-political attitudes and characteristics as well).

Doing this sort of analysis is quite easy to do in R.

### Estimating Models -- Model Selection and Visualization
The data I used for analysis was [Pew Research Center's 2014 Religious Landscape Study](https://github.com/milesdwilliams15/Church-Attendance/blob/master/Dataset%20-%20Pew%20Research%20Center%202014%20Religious%20Landscape%20Study%20National%20Telephone%20Survey%20-%20Version%201.1%20-%20December%201%202016.sav). For simplicity's sake, I won't go into detail about recodes. If you want to know more, simply refer to the R code I used for recodes provided in this repository.

Once we have the data prepped, the next step in the modeling process is to determine just what sort of statistical method is best suited for our needs. In this particular case, because the dependent variable of interest (frequency of church attendance) is a scalar variable that ranges from 0 (no church attendance) to 5 (attendance more than once a week), two options are worth considering: ordinary least squares (OLS), and ordinal logistic regression (ordered logit).

The former (OLS) is a somewhat acceptable method (i.e., it at least will work), but it does, because the dependent variable is a non-interval outcome, present us with some complications. Ordered logit, on the other hand, is a more methodologically sound method in this particular context since it is especially suited to instances where the dependent variable is a multiple ordered response.

Estimate the OLS model:

    ## Data in object called "relig":
    ## Estimate an OLS model using the lm() function in base R, and be sure to include case weights:
    churchAttend<-lm(attendanceNum ~ beliefNum + certaintyNum + personalGodNum + 
                   heavenNum + hellNum + scriptureByGodNum + scriptureLiteralNum + 
                   exclusiveNum + prayNum + as.character(raised) + ageNum + 
                   educationNum + incomeNum + Republican + Democrat + Independent + 
                   ideologyNum + Male + white + black + Hispanic + other, data = relig, 
                 weights = WEIGHT)

Estimate the ordered logit model:

    ## Open the "rms" library
    library(rms)
    ## Estimate an ordered logit model using the polr() function in the rms library, and be sure the set Hess = TRUE:
    churchAttend2<-polr(as.factor(attendanceNum) ~ beliefNum + certaintyNum + personalGodNum + 
                   heavenNum + hellNum + scriptureByGodNum + scriptureLiteralNum + 
                   exclusiveNum + prayNum + as.character(raised) + ageNum + 
                   educationNum + incomeNum + Republican + Democrat + Independent + 
                   ideologyNum + Male + white + black + Hispanic + other, data = relig, 
                 weights = WEIGHT, Hess = TRUE)

Now, to visualize the results. The dwplot() function in the dotwhisker package is particularly useful; however, because dwplot() doesn't recognize objects of class polr(), some extra work will need to be done to get the results in the right order for the ordered logit model before plotting.

Plotting the OLS model:

    ## Open the "dotwhisker" library:
    library(dotwhisker)
    ## Make a coefficient plot for the lm() class object estimated above:
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

![effect on attendance](https://cloud.githubusercontent.com/assets/23504082/22270549/bfd5efaa-e255-11e6-8e2c-2d8d79c40a30.jpeg)

Plot the ordered logit model:

    ## Make sure the required elements from the polr() object are in an acceptable format for dwplot():
    term<-c(as.character(cbind(rownames(coef(summary(churchAttend2))))))
    estimate<-c(coef(summary(churchAttend2))[,1])
    std.error<-c(coef(summary(churchAttend2))[,2])
    ctable<-data.frame(term,estimate,std.error) # save elements as a data frame

    # Plot the results and only use rows 1:33 since the remaining rows are the intercepts:
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

![effect on attendance2](https://cloud.githubusercontent.com/assets/23504082/22270556/c2e3f62e-e255-11e6-9a49-02fce438dff1.jpeg)

As you can see, there isn't a great deal of difference between the OLS and ordered logit models, but it's always good to make sure you've used the proper technique for whaterver data you happen to be working with.
