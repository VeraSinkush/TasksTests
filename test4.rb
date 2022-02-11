Test6 = { key1: 5, key2: {}, key3:{key4: 'str', key5: 'str2', key6: { key7: { key8: 1, key9: [2]} } }}

#puts Test6[:key3]

def find(h, k)

  h.each do |key, value|
    if key == k
      puts value
    elsif value.is_a?(Hash)
      find(value, k)
    end
  end

end


find(Test6, :key9)