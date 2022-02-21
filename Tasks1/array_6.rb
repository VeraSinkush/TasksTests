

array= [[1, 2.2, 3, 4, '1'], ['2', '5', '10'], [111, 222, 333, 444], 'i love ruby', { key: 'value' }, [[['text', 100_000]]]]
$res = []

# puts array.flatten




def find(array, type)

  array.each do |value|
    if value.class == type
      $res << value
   end

    if value.class == Array
      find(value, type)
    end
  end

end


puts array.to_s
print array
puts "\n"
puts 'Hello'
puts "\n"
#find(array, Integer)

find(array, Integer)
print $res
puts
$res = []

find(array, String)

print $res
