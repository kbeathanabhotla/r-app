# If else
check.boolean <- function(val) {
  if (val == 1) {
    "Its 1"
  } else if (val == 0) {
    "Its 0"
  } else {
    "Its something else"
  }
}

check.boolean(1)
check.boolean(0)
check.boolean(2)


# Switch case
check.switch <- function(val) {
  switch(val,
         "a" = {
            print("Its a, now returning a")
            val
          },
         "b" = {
           print("It's b, now returning b")
           val
         },
         {
           print("Something else came")
           val
         })
}

check.switch("a")
check.switch("b")
check.switch("c")
check.switch(1) # executes that of case a in switch
check.switch(6) # returns NULL if use a numberic value and the value exceeds beyond the allowed limit


# if else if good if we are operating on single element we can use ifelse to operate on vectors
vector1 <- 1:10
vector2 <- 2:11
# % operator in R is %%
ifelse(vector1%%2 == 0, "Yes", "No")

# We can even modify the vector 
