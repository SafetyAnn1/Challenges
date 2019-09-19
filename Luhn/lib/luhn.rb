module Luhn
  def self.is_valid?(number)
    sum = 0
    num = number.to_s.split('')

    num.reverse.each_with_index do |luhnno, index|
      if index % 2 != 0
        digit2X = luhnno.to_i * 2
        if digit2X > 9
          digit2X = digit2X - 9
        end
        sum = sum + digit2X
      else
        sum = sum + luhnno.to_i
      end
    end

    if sum % 10 == 0
      return true
    else
      return false
    end
  end
end