
if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

class Args
  def HowMany
    puts 'Сколько паролей необходимо вывести?'
    return gets.chomp.to_i
  end

  def Size
    puts 'Пароль какой длины вам нужен?'
    return gets.chomp.to_i
  end

  def Registr
  puts 'Нужно ли менять регистр (большая-маленькая буква)?
1. Да 2. Нет'
  while true
    temp = gets.chomp.to_i
    case temp
      when 1
        return true
      when 2
        return false
      else
        puts 'Введите верное значение
1. Да 2. Нет'
      end
    end
  end

  def Num
  puts 'Добавить к паролю цифры?(будет больше символов - будет лучше защита)
1. Да 2. Нет'
  while true
    temp = gets.chomp.to_i
    case temp
      when 1
        return true
      when 2
        return false
      else
        puts 'Введите верное значение
1. Да 2. Нет'
      end
    end
  end
end