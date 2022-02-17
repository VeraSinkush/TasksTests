print 'Введите диаметр'
d = gets.to_i
(d+1).times do |i|
  (d+1).times do |j|
    if (( i - d / 2 - 0.5)**2+( j - d / 2 - 0.5)**2)<=( d**2 ) / 4
    print '*'
    else
      print ' '
    end
  end
  puts
end








