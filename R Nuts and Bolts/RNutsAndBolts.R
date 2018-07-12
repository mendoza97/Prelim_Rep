#Mendoza, Luigi G.
#1710040

#Entering Input
x<-1
print(x)
x
msg<-"hello"

#Evaluation
x<-5
x
print(x)

#Printing
x<-1:20

#Creating Vectors
x<-c(0.5,0.6)
x
x<-c(TRUE,FALSE)
x
x<-c(T,F)
x
x<-c("a","b","c")
x
x<-9:29
x
x<-c(1+0i,2+4i)
x

#Mixing Objects
y<-c(1.7,"a")
y
y<- c(TRUE,2)
y
y<-c("a",TRUE)
y

#Explicit Coercion1
x<-0:6
class(x)
as.numeric(x)
as.logical(x)
as.character(x)

#Explicit Coercion2
x<-c("a","b","c")
as.numeric(x)
as.logical(x)
as.complex(x)

#Lists
x<-list(1,"a",TRUE,1+4i)

#Matrices1
m<-matrix(nrow=2,ncol=3)
m
dim(m)
attributes(m)

#Matrices2
m<-matrix(1:6, nrow=2, ncol=3)
m

#Matrices3
m<-1:10
m
dim(m)<-c(2,5)
m

#cbing and rbing
x<-1:3
y<-10:12
cbind(x,y)
rbind(x,y)

#Factors1
x<-factor(c("yes","yes","no","yes","no"))
x
table(x)
unclass(x)

#Factors2
x<-factor(c("yes","yes","no","yes","no"),levels=c("yes","no"))
x

#Missing Values
x<-c(1,2,NA,10,3)
is.na(x)
is.nan(x)
x<-c(1,2,NaN,NA,4)
is.na(x)
is.nan(x)

#Data Frames
x<-data.frame(foo=1:4,bar=c(T,T,F,F))
x
nrow(x)
ncol(x)

#Names1
x<-1:3
names(x)
names(x)<-c("foo","bar","norf")
x
names(x)

#Names2
x<-list(a=1,b=2,c=3)
x

#Names3
m<-matrix(1:4,nrow=2,ncol=2)
dimnames(m)<-list(c("a","b"),c("c","d"))
m

#dput-ting R objects
y<-data.frame(a=1,b="a")
dput(y)
dput(y,file="y.R")
new.y<-dget("y.R")
new.y

#Dumping R objects
x<-"foo"
y<-data.frame(a=1,b="a")
dump(c("x","y"),file="data.R")
rm(x,y)
source("data.R")
y
x

#Subsetting
x<-c("a","b","c","c","d","a")
x[1]
x[2]
x[1:4]
x[x>"a"]
u<-x>"a"
u
x[u]

#Subsetting Lists1
x<-list(foo=1:4,bar=0.6)
x[1]
x[[1]]
x$bar
x[["bar"]]

#Subsetting Lists2
x<-list(foo=1:4,bar=0.6,baz="hello")
x[c(1,3)]

#Subsetting Lists3
x<-list(foo=1:4,bar=0.6,baz="hello")
name<-"foo"
x[[name]]
x$name
x$foo

#Subsetting Nested Elements of a List
x<-list(a=list(10,12,14),b=c(3.14,2.81))
x[[c(1,3)]]
x[[1]][[3]]
x[[c(2,1)]]

#Subsetting a Matrix1
x<-matrix(1:6,2,3)
x[1,2]
x[2,1]
x[1,]
x[,2]

#Subsetting a Matrix2
x<-matrix(1:6,2,3)
x[1,2]
x[1,2,drop=FALSE]

#Subsetting a Matrix3
x<-matrix(1:6,2,3)
x[1,]
x[1,,drop=FALSE]

#Partial Matching
x<-list(aadvark=1:5)
x$a
x[["a"]]
x[["a",exact=FALSE]]
x<-c(1,2,NA,4,NA,5)
bad<-is.na(x)
x[!bad]

#Removing NA Values1
x<-c(1,2,NA,4,NA,5)
y<-c("a","b",NA,"d",NA,"f")
good<-complete.cases(x,y)
good
x[good]
y[good]

#Removing NA Values2
airquality[1:6,]
good<-complete.cases(airquality)
airquality[good,][1:6,]

#Vectorized Operations
x<-1:4; y<-6:9
x+y
x>2
x>=2
y==8
x*y
x/y

#Vectorized Matrix Operations
x<-matrix(1:4,2,2);y<-matrix(rep(10,4),2,2)
x*y
x/y
x%*%y
