require './passwordgenerator.rb'

temp = 1
G = PasswordGenerator.new

while true
  G.get_password_again(temp)? G.set_args : exit
  puts "Ваши пароли:
#{G.get_password_list}
Вывести новые пароли с другими параметрами?"
  temp = gets.chomp.to_i
end