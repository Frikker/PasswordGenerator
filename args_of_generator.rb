
if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

class Args

  def Size
    puts 'Пароль какой длины вам нужен?'
    gets.chomp.to_i
  end

  def Registr
    puts 'Нужно ли менять регистр (большая-маленькая буква)?
1. Да 2. Нет'
    loop do
      temp = gets.chomp.to_i
      if temp.between?(1,2)
        temp == 1 ? t = true : t = false
        return t
      else
        puts 'Введите верное значение
1. Да 2. Нет'
      end
    end
  end

  def HowMany
    puts 'Сколько паролей необходимо вывести?'
    gets.chomp.to_i
  end
end