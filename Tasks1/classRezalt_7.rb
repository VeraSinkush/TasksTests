class Test_1
  def test_1

    word ="ruby"
    for i in 1..30
      case  i
      when 10
        puts word
      end
      case  i
      when 20
        puts word
      end
      case  i
      when 25
        puts word
      end

      puts "<3"+word
    end
  end
end

class Test_2
  def test_2
    print 'Ведите размер матрицы: '
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
  end
end

class Test_3
  def test_3
    print 'Введите диаметр'
    d = gets.to_i
    (d+1).times do |i|
      (d+1).times do |j|
        if (( i - d / 2 - 0.5 )**2+( j - d / 2 - 0.5 )**2)<=( d**2 ) / 4
          print '*'
        else
          print ' '
        end
      end
      puts
    end

  end
end

class Test_4
  def test_4

    str = 'i love ruby'
    def format(str, arg)
      case arg
      when :a
        (str.split.each { |v| v.capitalize! }).join
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

  end
end

class Test_5
  def test_5

    testabc = { key1: 5, key2: {}, key3:{key4: 'str', key5: 'str2', key6: { key7: { key8: 1, key9: [2]} } }}

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


    find(testabc, :key9)
  end
end

class Test_6
  def test_6

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

  end
end

class BeginTest
  def do_a_test(n)
    test = eval "Test_#{n}.new"
    puts "Делаю Задание ##{n}"
    eval("test.test_#{n}")
  end
end

b_t = BeginTest.new
while true do
  print "Наберите номер задачи от 1 до 6 (0 - выход):"
  n = gets.to_i
  case n
  when 1..6
    b_t.do_a_test(n)
  when 0
    break
  else
    puts 'Некорректный ввод'

  end
end

