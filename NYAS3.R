gapminder<-read.csv("data/gapminder-FiveYearData.csv")

if(any(gapminder$year==2002)) {
  print("Data contain year 2002")
} else {
  print("Data DO NOT contain year 2002")
}

if(any(gapminder$year==2020)) {
  print("Data contain year 2020")
} else {
  print("Data DO NOT contain year 2020")
}

#if all data contain the year 2002 then print "data contain year 2002 or else print
#"not all data contain year 2002"
if(all(gapminder$year==2002)) {
  print("Data contain year 2002")
} else {
  print("Not all data contain year 2002")
}

vector_tf<- c(TRUE,TRUE)
all(vector_tf)
any(vector_tf)
vector_tf <-c(TRUE,FALSE)
all(vector_tf)
!TRUE
!all(vector_tf)

#Repeating operations
#for(interator in a set) {
 # do a thing (probably on the iterator)
#}

for(i in c(1,2,3)) {
  print(i)
}

for(i in 1:100) {
  print(i)
}

for(i in 1:5) {
  for(j in c("a","b","c")) {
    print(paste(i,j))
  }
}

output_vector <-c()
for(i in 1:5){
  for(j in c("a","b","c")){
    k<-paste(i,j)
  output_vector <-c(output_vector, k)
  }
}

#while (some condition is true) {
#  do a thing
#}

z<-1
while(z>0.5) {z<-rnorm(1, mean=0.5, sd=1)
print(z)}

#Repeating operations
#for(iterator in a set) {
# do a thing (probably on the iterator)
#}

continentsvector<-c(gapminder$continent)
for(continent in continentsvector) print(paste(continent))

for(i in 1:3){
  print(i)
}

#give the names of each level (each continent is a level)
levels(gapminder$continent)


for(cont in levels(gapminder$continent)) {
  c <-gapminder[gapminder$continent == cont,] #a subset of gapminder to only give you the data with continents
  m <- mean(c$lifeExp)
  if (m > 50){
    print(paste(cont, "has a life expectancy that is greater than 50."))
  }else{
    print(paste(cont, "has a life expectancy that is less than 50"))
  }
}

# funciotns
mean()
sum()
nrow()
sin()

#can create functions ourselves that we can reuse over and over.

fahr_to_kelvin <- function(temp) {
  kelvin <-((temp-32)*(5/9))+273.15
  return(kelvin)
}

#to run the function
fahr_to_kelvin(32)
fahr_to_kelvin(22)

calcGDP<-function(gapminder_data) {
  gdp<-gapminder_data$pop * gapminder_data$gdpPercap 
  return(gdp)
}

calcGDP(gapminder)
calcGDP(gapminder[gapminder$country=="Angola" & year==2002,])

kelvin_to_celcius<-function(temp){
  celcius<-temp-273.15
  return(celcius)
}

farn_to_celcius<-function(temp){
  return(kelvin_to_celcius(fahr_to_kelvin(temp)))
}
farn_to_celcius(9)
