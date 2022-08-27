# Algumas anotacoes sobre o capitulo 3 do livro

plot sin(x) #<--Plot in default style
plot cos(x) with linespoints #<--Plot with Lines and points

plot sin(x), cos(x) w lp

set terminal pngcairo
set output "~/storage/Download/note3.png"

set samples 1000

plot \
[:12000]\
"records" \
using 1:2 \
title "Men" \
with points\
, \
""\
using 1:3\
title "Women"\
with points\
, \
0.14*x\
, \
0.16*x

set terminal unknown
set output 

set dummy t
plot sin(t)

set dummy x

g(x) = exp(-0.5*(x/s)**2)/s
plot s=1 g(x), s=2 g(x), s=3 g(x)

g(x, s) = exp(-0.5*(x/s)**2)/s
plot g(x,1), g(x,2), g(x,3)

# help expressions functions
# show variables
# show functions

# NaN: Legal para ignorar a plotagem de um conjunto

f(x) = abs(x) < 1 ? 1 : NaN

set logscale x

plot \
[9:][5:11] \
"records" \
using 2:($1/$2) \
title "Men" \
with linespoints\
, \
"records" \
using 3:($1/$3) \
title "Women" \
with linespoints

# Gnuplot pode construir curvas aproximadoras e interpolar
# usando a diretiva smooth
#
# +-------------------------------------------------------+
# |  | palavrachave |            descrição                |
# | 1| csplines     | interpolacao por spline cubico      |
# | 2| mcsplines    | interpolacao por spline monotono    |
# | 3| acsplines    | aproximação  por spline cubico      |
# | 4| bezier       | Curva bèzier                        |
# | 5| sbezier      | Curva bèzier sorted                 |
# | 6| kdensity     | estimativa da densidade do kernel   |
# | 7| cumulative   | função distribuição cumulativa      |
# | 8| cnormal      | função dist cumul normalizada       |
# | 9| unique       | organiza pelo x, removendo repetição|
# |10| frequency    | org p x, rem rep, sub y por freq rep|
# +-------------------------------------------------------+


