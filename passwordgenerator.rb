require './args_of_generator'

class PasswordGenerator
  Alphafit = ('a'..'z').to_a
  Glasnie = %w(a e i o u)
  Soglasnie = Alphafit - Glasnie

  def set_args
    @arg = Args.new
    @password_size = @arg.Size
    @password_registr = @arg.Registr
    @password_num = @arg.Num
  end

  def get_password
    password = ''

    vowel = [true, false].sample
    @password_size.times do
      if vowel then password << Glasnie.sample end
      unless  vowel then password << Soglasnie.sample end
      #vowel = !vowel
    end

    if @password_registr
      password.each_char do |i|
        to_up = [true, false].sample
        if to_up then password[i] = password[i].upcase end
      end
    end

    if @password_num
      num = rand(1..4)
      num.times do
        password << rand(0..9).to_s
      end
    end
    password
  end

  def get_password_list(list_size = @arg.HowMany)
    password_list = []
    list_size.times do
      password_list << get_password
    end
    password_list
  end

  def get_password_again(temp=1)
    while true
      case temp
      when 1
        return true
      when 2
        return false
      else
        puts 'Вы ввели неверное значение'
        temp = gets.chomp.to_i
      end
    end
  end
end