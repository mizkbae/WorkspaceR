#
# 2일차 R Script 실습
#

# 1. 값을 이용한 계산
class( 3 )
class( 5 )
3 + 5
print( 3 + 5 )
#
# 일반적인 출력 장치를 표준 출력 장치
#하고 하며, 장치 지정을 하지 않아도
#자동으로 사용되는장치를 의미한다.

#stdout( 표준 출력 장치) : 모니터
#stdin( 표준 입력장치 ) : 키보드
#stderr( 표준 error 표시 장치 ) : 모니터


print( 10 + 5 )
print( 10 - 5 )
print( 10 * 5 )
print( 10 / 5 )
print( 10 %% 5 )
print( 10 ^ 5 )

#
# 변수( Variable )
# : 메모리 영역에 대한 이름
# : 값을 저장하는 메모리 영역

number1 <- 10
number2 <- 10
print( number1 + number2 )
print( number1 - number2 )
print( number1 * number2 )
print( number1 / number2 )
print( number1 %% number2 )
print( number1 ^ number2 )

word1 <- "I"
word2 <- "iz"
word3 <-  "stoopid"
print( word1  word2  word3 )


var1 <- 10
var2 <- 50
var3 <- 15 * 25
var4 <- var1 / var2
print( var1 )
print( var2 )
print( var3 )
print( var4 )

var5 = 10 * 9
print( var5 )


#
#자료형( Data Type )
# : 값에 대한 형태
#
number <- 10
string <- "R Script"
boolean <- TRUE
temp <- NULL

class( number ); str( number )
class( string ); str( string )
class( boolean ); str( boolean )
class( temp ); str( temp )

missing <- NA
chrnum <- '10'

class( missing ); str( missing )
class( chrnum ); str( chrnum )

#
# DATA Type 확인 / 변환
#
number <- 150
chanum <- '10'

class( number )
class( chanum )

# is로 시작하는 함수는 확인 함수 : 결과 논리값
is.numeric( number )
is.numeric( chanum )

is.character( number )
is.character( chanum )

# as로 시작하는 함수는 형 변환 함수
result <- number + as.numeric( chanum )
class( result ); str( result )
print( result )

vector <- c( 1, 3, 5, 7, 9 )
vector2 <- c( 'hello', 'world', 'R script' )
vector3 <- c( TRUE, FALSE, TRUE, TRUE )

class( vector ); class( vector2 ); class( vector3 )
str( vector ); str( vector2 ); class( vector3 )
print( vector ); print( vector2 ); print( vector3 )

vector4 <- 'hi'
vector5 <- 'hooman'

print( vector4 ); print( vector5 );

#####

vector6 <- c( 1, 3, TRUE )
print( vector6 )

vector16 <- c( 1, 3, TRUE, FALSE )
print( vector16 )

vector26 <- c( 1, 3, TRUE, FALSE, 'hello' )
print( vector26 )

######

vector14 <- c( 1, 2, 3, '4', '5', '6' )
class( vector14 )
str( vector14 )
print( vector14 )

#
# 연속값을 저장하는 벡터
#
vector55 <- 1:10
vector66 <- c( 1, 2, 3, 5:10 )

print( vector55 )
print( vector66 )

vector666 <- c( 1, 3, 'hello' )
print( vector666 )

vector6666 <- c( 1, 3, 'hello',  )
print( vector6666 )

vector6 <- c( 1, 3, TRUE )
print( vector6 )

vector16 <- c( 1, 3, TRUE, FALSE )
print( vector16 )

vector26 <- c( 1, 3, TRUE, FALSE, 'hello' )
print( vector26 )

#####breaktime######

vector_tc <- c( 1, 2, TRUE, FALSE )
class( vector_tc )
str( vector_tc )
vector_tc


vector777 <- seq( 1, 101, 3 )
vector888 <- seq( 0.1, 1.0, 0.1 )
vector999 <- rep( 1, times = 5 )
vector1000 <- rep( 1:5, times = 3 )
vector1111 <- rep( c( 1, 5, 9 ), times =3 )

vector777
vector888
vector999
vector1000
vector1111

#
# 벡터 원소값에 이른 지정
#
score <- c( 90, 85, 70 )
score
names( score )
names( score ) <- c( 'hong', 'kim', 'lee' )
names( score )
score

#
# 벡터 길이
#
length( score )

#
# 벡터 소요 읽기
score[ 1 ]
score[ "kim" ]
score[ 2 ]

#
# 벡터 요소 쓰기
score
score[ 1 ] <- 55
score

score[ 'lee' ] <- 77

#
# 벡터 요소 한 번에 여러개 읽기
#
v <- c( 1, 4, 3, 7, 8 )

v[ c( 1, 3, 5 ) ]
v[ 1:3 ]
v[ seq( 1, 5, 2 ) ]
v[ -2 ]
v[ -c( 3:5) ]

#####

v[ c( 1, 3, 5 ) ] <- 5
v
v[ -2 ] <- 100
v

#####
#
벡터간 연산
#
x <- c( 1, 2, 3 )
y <- c( 4, 5, 6 )
x + y
x * y
z <- x + y
z
벡터 합이랑 곱 계산
#####
#
# 벡터에 적용 가능한 함수
#
v <- c( 1:10 )

sum( v )
sum( 2 * v )
mean( v )
mean( v[ 1:5 ] )
median( v )
median( v[ 1 : 5 ] )
max( v )
min( v )
sort( v )
sort( v, decreasing = FALSE )
sort( v, decreasing = TRUE )
range( v )
var( v )
sd( v )

avg <- sum( v ) / length( v )
avg

#####
#
# 관계/ 논리연산
# 관계 연산자 : >, >=, <, <=, ==, !=
# 논리 연산자 : && &( AND ), ||, |( or ), !( NOT )
number1 <- 10
number2 <- 19
number3 <- 3

# 관계 연산자 이용한 관계 연산
number1 > number2
number1 <= number2

# 관계/논리 연산자 이용한 논리 연산
( number1 > number2 ) && ( number1 > number3 )
( number1 > number2 ) || ( number1 > number3 )

######
#
# 관계 연산자를 벡터에 적용
#
v <- 1:10

v >= 5
v[ v > 5 ]
sum( v > 5 )
v == 5 #5와 같으면

condition <- v > 5 & v < 8
condition
v[ condition ]
