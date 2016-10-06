require './passwordgenerator.rb'

temp = 1
G = PasswordGenerator.new

loop do
  G.GetPasswordAgain(temp)? G.SetArgs : exit
  puts "Ваши пароли:
#{G.GetPasswordList}
Вывести новые пароли с другими параметрами?"
  temp = gets.chomp.to_i
end