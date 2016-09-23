require './passwordgenerator.rb'

temp = nil
G = PasswordGenerator.new

while temp != 2
  G.set_args
  puts "Ваши пароли:
#{G.get_password_list}
Получить пароли с другими параметрами?
1. Да 2. Нет"
  temp = gets.chomp.to_i
  while temp != 1
    puts 'Вы ввели неверное значение. Повторите ввод.'
    temp = gets.chomp.to_i
    if temp == 2
      exit
    end
  end
end