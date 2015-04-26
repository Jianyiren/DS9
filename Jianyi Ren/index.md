---
title       : Monthly Budget Calculator
subtitle    : Developing Data Products Assignment
author      : Jianyi
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Requirement: Your Shiny Application

1.Write a shiny application with associated supporting documentation. The documentation should be thought of as whatever a user will need to get started using your application.

2.Deploy the application on Rstudio's shiny server. Share the application link by pasting it into the text box below. 

3.Share your server.R and ui.R code on github

The application must include the following:

Some form of input (widget: textbox, radio button, checkbox, ...)
Some operation on the ui input in sever.R
Some reactive output displayed as a result of server calculations
You must also include enough documentation so that a novice user could use your application.
The documentation should be at the Shiny website itself. Do not post to an external link.

--- .class #id 

## My Application

This is a Calculator to help you calculate whether your monthly budget exceeds your monthly income.Please type your expecetd expenses below on the left and hit submit, the evaluation will be shown on the right.

The input are monthly total income, as well as the expenses of different catorogies, including Rent,Clothing,Transportation,Social,Books,Others

The output are the sum of all expenses, and the evaluation whether the expenses exceeds the total income

---

## Application-Link and Code
E.g if the monthly total income is 2000, yet the expensef for Rent,Clothing,Transportation,Social,Books,Others are 1000, 200, 50, 50, 50, 100000, then the outout would be

```r
income=2000
expense=1000+200+50+50+50+100000
```
and when compared with the total income, it will gives you the evaluation and comment

```r
 print(
      if (income>expense) "Good"
      else if (10*income<expense) "You know how to spend money, so start cutting trees so that you can find a diamond mine one day ;)"
      else "Overdrawn, please rebudget")
```

```
## [1] "You know how to spend money, so start cutting trees so that you can find a diamond mine one day ;)"
```

(Sorry, I am basically laughing at you spend too much)

---

## Application-Link and Code

Useful files in repo:

Try out the application on the RStudio shinyapps.io website:        
https://jianyiren.shinyapps.io/MonthlyBudgetCalculator/

To see the code for the application, visit github website: Github:https://github.com/Jianyiren/DS9

Useful files in repo: server.R; ui.R

 


