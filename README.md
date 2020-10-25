# UFC_Project

## Presentation
Selected Topic: To analyze historical UFC fight data, in order to create a machine learning algorithm that can accurately predict the result of an upcoming fight with the proper inputs.

Reason for Selecting Topic: I selected this topic for two main reasons. The first is that I am a big UFC fan, so this project appeals to my interests. The second reason is that UFC bouts are seen as being very hard to predict, so I want to see if it is at all possible to predict these fights accurately.

Data Source: My data source is a kaggle dataset that details every UFC fight from 1999 to 2019. (https://www.kaggle.com/rajeevw/ufcdata)

Question hoping to answer: The main question I am hoping to answer is whether or not UFC fights are in fact predictable over the long run. I also want to determine what are the main predictors for a UFC fight.

## Communication Protocols
This is an individual project, so there will not be any branches for other people. That being said, everything pushed to the master branch will be production ready, or through its own individual branch.


## Presentation Link
https://docs.google.com/presentation/d/1hBLaaeTolp2RBYI4GQYp_0oVUa_OJzCeRyoHWAC-bT0/edit#slide=id.g9c0c5bb810_0_15

## Machine Learning
Pre-processing:
  - I combined the "Win" and "Loss" column in order to make a cumulative "Record" column for each fighter.
  - I combined the "current_win_streak" and "current_lose_streak" column for each fighter to make a cumulative "current_streak" column
  - I scaled all numeric values using the StandardScaler.
Feature Selection:
  - I selected the features that I thought would best be used to predict MMA fights. 
  - These features included both fighter physical attributes (height, reach) as well as fighter performance (significant strikes landed).
Data Splitting:
  - The data was split into trainining and testing data using scikit-learn's train_test_split
  - 75% of the data was designated as training data, 25% was designated as testing data.
Model Selection:
  - The model I selected was the logistic regression model.
  - An advantage of the logistic regression model is that it is easy to train and efficient.
  - A disadvantage of the logistic regression model is that it makes an arbitrary linear boundary to classify variables.

## Tableau Dashboard
https://public.tableau.com/profile/fred.dilly3803#!/vizhome/Dashboard_16031757938350/Dashboard?publish=yes
