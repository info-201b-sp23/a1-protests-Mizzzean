# Overview ----------------------------------------------------------------

# Assignment 1

# You will answer the following questions and more by completing the code below:

# - What were the most attended and least attended protests in the US in the
#     last 5 years?
# - How many protests occurred in Washington state?
# - How did protests in 2019 compare to 2020, and why?
# - What are the biggest reasons people are protesting in the US?

# For each question/prompt, write the necessary code to get the answer. Each
# question is worth 2 points.
# You will store most of your answers in the variable names listed with the
# questions in `backtics`.
# There are 4 prompts marked `Reflection`. Be sure to write your responses to
# these questions in the `README.md` file.

# NOTE: We recommend that you turn on "Soft Wrap Long Lines" to work with this
# file so you can read the instructions more easily.

# Part 1: Set up (12 points) ---------------------------------------------------

# In this section, you will load the CountLove data and necessary packages.

# (1.a) Load the `stringr` package, which you will use later.

# (1.b) Load the data from CountLove by using the following URL:
# https://countlove.org/data/data.csv
# Save this dataframe into a variable called `protest_data`

#  Whenever we load data, the first thing we want to do is manually examine it,
# see how it looks, and make sure we understand what each column (or feature)
# and each row (or record) in the dataset means.
# Open the dataframe by clicking the spreadsheet icon in the Environment or by
# using View(). Manually examine the data by scrolling through it.

# (1.c) Without using code, look at all the the column names in the dataset, and
# then type each column name in the comment below, with each column name
# separated by a comma.
# Column 1, Column 2, Column 3...

# (1.d) Without using code, pick one row in the dataset (any row!), and then
# type in all the values from that row, with each value separated by a comma.
# For ex: 2018-01-01, University of Washington, Seattle, WA...

# (1.e) How many protests are recorded in the dataset in total? Use an R
# function to determine this number and then save it in a variable called
# `num_protests`
# Hint: This is the same number as the number of rows in the dataset!

# (1.f) How many features (or columns) are recorded for each protest? It's
# important to know how to find this number programmatically as well as manually
# Save the number of features for each protest in a variable called
# `num_features`

## Part 2: Attendees (12 points) -----------------------------------------------
# In this part, you will explore the number of people who participated in the protests

# (2.a) Extract the `Attendees` column into a variable called `num_attendees`

# (2.b) What is the fewest number of attendees at a protest?
# Save the number of protests in a variable called `min_attendees`
# Hint: Remember to exclude NA values when using the functions below!

# (2.c) What is the greatest number of attendees at a protest?
# Save the number of protests in a variable called `max_attendees`


# (2.d) What is the average (mean) number of attendees at a protest?
# Save the number of protests in a variable called `mean_attendees`


# (2.e) What is the median number of attendees?
# Save the number of protests in a variable called `median_attendees`


# (2.f) What is the difference between the mean and median number of attendees?
# Subtract median_attendees from mean_attendees
# Save the difference in a variable called `difference_attendees`

# Reflection 1 (answer in the README.md file)
# Why do you think the mean is higher than the median? Which metric would you
# use in a report about this data, and why?


## Part 3: Locations (20 points) -----------------------------------------------
# In this part, you will explore where protests happened.

# (3.a) Extract the `Location` column into a variable called `locations`

# (3.b) How many *unique* locations are in the dataset?
# Save the NUMBER of unique locations in a variable called `num_locations`


# (3.c) How many protests occurred in the state of Washington?
# Use a function from the stringr package to detect the letters "WA" in the
# Location column and filter to only keep WA locations
# Then, calculate the number of protests recorded in Washington
# Save the NUMBER of WA locations in a variable called `num_in_wa`


# (3.d) What proportion of protests occurred in Washington?
# Divide the number of protests in Washington by the total number of protests
# Save this proportion in a variable called `prop_in_wa`


# (3.e) Now, using the same stringr function and building on the code that
# you've written above, write a function `count_protests_in_location()` that
# accepts a location and then returns (not prints) the following sentence:
# "There were [N] protests in [LOCATION]."
# For example: "There were 20 protests in Seattle." "There were 50 protests in
# NY." 
# If the location is not found in the dataset, the function should return the
# sentence: "Sorry, that location is not found."

# (3.f) Use your `count_protests_in_location()` function above to compute the
# number of protests in "Washington, DC" and return the resulting message
# Save the resulting message in a variable called `dc_summary`

# (3.g) Use your function above to compute the number of protests in
# "Minneapolis" and return the resulting message
# # Save the resulting message in a variable called `minneapolis_summary`

# (3.h) Let's try to find out how many protests occurred in each state. To do
# so, first use a stringr function to extract the last 2 characters from every
# location and use these 2 characters to create a new vector called `states`

# (3.i) What are the unique states are in the dataset? Create a vector of just the
# unique states in the dataset
# Save the unique states in a variable called `uniq_states`
# Hint: Due to the way the data was collected, you may notice some "nonsense"
# state abbreviations, such as "CE." YOU DO NOT NEED TO FIX THIS, but you may
# reflect to yourself on why this might be happening.

# (3.j) Now apply your `count_protests_in_location` function to every state in
# `uniq_states` by using the `sapply()` function.
# Store all your messages in a variable called `state_summary`

## Part 4: Dates (16 points) ---------------------------------------------------
# In this part, you will explore *when* protests happened.

# (4a) Extract the `Date` column and convert it into a data by using the
# `as.Date()` function.
# Save this value in a variable called `dates`

# (4.b) What is the most recent date in the dataset?
# Store this value in a variable called `most_recent_protest`

# (4.c) What is the earliest date in the dataset?
# Store this value in a variable called `earliest_protest`

# (4.d) What is the timespan of the dataset — in other words, the distance
# between the earliest protest and most recent protest?
# Hint: R can do math with dates pretty well by default!
# Store this value in a variable called `time_span`

# (4.e) Now, create a vector of only the dates that are in 2020.
# Note: If you want only dates after a certain start date, you can use
# "2020-01-01" with comparison operators (==, >=, <=)
# Store this value in a variable called `protests_in_2020`

# (4.f) Create a vector of only the dates that are in 2019.
# Note: If you want only dates after a certain start date, you can use
# "2020-01-01" with comparison operators (==, >=, <=)
# Store this value in a variable called `protests_in_2019`

# (4.g) Create a vector of only the dates that are in 2018.
# Note: If you want only dates after a certain start date, you can use
# "2020-01-01" with comparison operators (==, >=, <=)
# Store this value in a variable called `protests_in_2018`

# Reflection 2 (answer in the README.md file)
# When we're doing data analysis work, we always want to test our assumptions
# and see whether or not patterns align with our expectations or depart from them.
# Before actually calculating the number of protests that occurred in 2018,
# 2019, 2020, record your guesses for the following questions.
# Guess: Do you think there were more protests in 2019 than in 2018? Why or why not?
# Guess: Do you think there were more protests in 2020 than in 2019? Why or why not?


# (4.h) Now use the length() function to find out how many protests happened in
# 2018 vs. 2019 vs. 2020. 
# Save them in the varaibles `num_protets_in_2018`, `num_protets_in_2019`,
# `num_protets_in_20120`

# Reflection 3 (answer in the README.md file)
# Does the change in the number of protests from 2018 to 2019 to 2020 surprise
# you? Why or why not? What do you think explains the fluctuation?


## Part 5: Protest Purpose (6 points) ------------------------------------------
# In this section, you will explore *why* the protests happened.

# (5.a) Extract the `Event..legacy..see.tags.` column into a variable called
# `purposes`

# (5.b) How many different unique purposes are listed in the dataset?
# Save this NUMBER in a variable called `num_purposes`

# That's quite a few! Use View() to examine the `purposes` vector. You will
# notice a common pattern for each purpose, formatted something like this: Civil
# Rights (Transgender Rights)

# (5.c) To get a summary of just the higher level categories (e.g., just "Civil
# Rights" and not "(Transgender Rights)"), we're going to use some R functions
# to extract only the text before the parenthesis and then save them in a
# variable `high_level_purposes`

# There are some built-in R functions where you can replace text using regular
# expressions.
# Regular expressions are a special syntax that lets you match patterns.
# For example, see what happens when you run the code below, and use the help()
# function to learn more about this function
gsub("@.*", "", "melwalsh@uw.edu")
# Note: Some regular expression characters, like parenthesis, have a special
# meaning, so if you want to use them, you need to first "escape" them:
# https://uc-r.github.io/regex#metacharacters
# See what happens when you run the code below, and use the help() function to
# learn more about this function
trimws(" hello ")
 

# Make a table of your `high_level_protests` by using table() and then View() it
 
# Reflection 4 (answer in README.md file): What is the first and fourth most
# frequent category of protest? Do these frequencies align with your sense of
# the major protest movements in the U.S. in the last few years? Why or why not? (3 points)

# Congrats! You're finished. Don't forget to save, push all changes to GitHub,
# and submit the link to your repository on Canvas!
