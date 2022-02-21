print 'Введите размер матрицы '
d = gets.to_i
require 'matrix'
p Matrix.identity(d)
p Matrix.rows(d)