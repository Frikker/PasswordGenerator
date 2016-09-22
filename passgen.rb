require './passwordgenerator.rb'

temp = nil
G = PasswordGenerator.new

while temp != 2 || temp == nil
  G.set_args
  puts "Ваши пароли:
#{G.get_password_list}
Получить пароли с другими параметрами?
1. Да 2. Нет"
  temp = gets.chomp.to_i
end