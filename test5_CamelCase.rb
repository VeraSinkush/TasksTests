
str = 'i love ruby'
def format(str, arg)
  case arg
  when :a
    (str.split.each {|v| v.capitalize!}).join
  when :b
    str.split.join('_')
  when :c
    str.split.join('-')
  else
    "4"

  end
end
puts format(str, :a)
puts format(str, :b)
puts format(str, :c)
