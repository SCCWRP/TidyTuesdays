# load the tidyverse library, which includes the dplyr functions
library(tidyverse)

# ---- Select ----

# only one column
select(iris, Petal.Length)

# or i can look at only the top of the dataframe
head(select(iris, Petal.Length))

# i can select multiple columns
select(iris, Petal.Length, Sepal.Length)

# let's look at only the top of that
head(select(iris, Petal.Length, Sepal.Length))



# ---- Filter ----
filter(iris, Petal.Length > 5)

# multiple conditions
filter(iris, Sepal.Length > 3, Species == 'setosa')
filter(iris, Sepal.Length > 3, Petal.Length < 1.5, Species == 'setosa')


# ---- Rename ----
# rename(data, newcolname = oldcolname)
rename(iris, taxa = Species)
rename(iris, taxa = Species, s.length = Sepal.Length)



# ---- mutate ----
# mutate(data, newcolumn = stuff you did with existing columns)
mutate(iris, total.length = Sepal.Length + Petal.Length)

# take the iris dataframe and create a new column called total width
# which is the sum of petal width and sepal width



