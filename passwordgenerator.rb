require './args_of_generator'

class PasswordGenerator
  Symbols = ('0'..'9').to_a + ('a'..'z').to_a

  def set_args
    @arg = Args.new
    @password_size = @arg.Size
    @password_registr = @arg.Registr
  end

  def get_password
    password = ''

    @password_size.times { password << Symbols.sample }

    if @password_registr
      password.each_char { |i| password[i] = password[i].upcase if [true, false].sample }
    end
    password
  end

  def get_password_list(list_size = @arg.HowMany)
    password_list = []
    list_size.times { password_list << get_password }
    password_list.join(', ')
  end

  def get_password_again(temp=1)
    loop do
      if temp.between?(1,2)
        temp == 1 ? t = true : t = false
        return t
      else
        puts 'Вы ввели неверное значение'
        temp = gets.chomp.to_i
      end
    end
  end
end