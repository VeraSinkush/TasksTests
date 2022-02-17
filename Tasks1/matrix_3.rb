print 'Введите размер матрицы: '
d = gets.to_i
d.times do |i|
  d.times do |j|
    if i==j
      print '1'
    else
      print '0'
    end
  end
  puts
end