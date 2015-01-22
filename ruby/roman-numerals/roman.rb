class Fixnum

  def to_roman
    roman = ""
    remaining_value = self

    while remaining_value > 0 do
      FACTORS.each do |roman_representation, value|
        if remaining_value >= value
          roman += roman_representation
          remaining_value -= value
          break
        end
      end

      # if remaining_value >= 1000
      #   roman += "M"
      #   remaining_value -= 1000
      # elsif remaining_value >= 900
      #   roman += "CM"
      #   remaining_value -= 900
      # elsif remaining_value >= 500
      #   roman += "D"
      #   remaining_value -= 500
      # elsif remaining_value >= 400
      #   roman += "CD"
      #   remaining_value -= 400
      # elsif remaining_value >= 100
      #   roman += "C"
      #   remaining_value -= 100
      # elsif remaining_value >= 90
      #   roman += "XC"
      #   remaining_value -= 90
      # elsif remaining_value >= 50
      #   roman += "L"
      #   remaining_value -= 50
      # elsif remaining_value >= 40
      #   roman += "XL"
      #   remaining_value -= 40
      # elsif remaining_value >= 10
      #   roman += "X"
      #   remaining_value -= 10
      # elsif remaining_value >= 9
      #   roman += "IX"
      #   remaining_value -= 9
      # elsif remaining_value >= 5
      #   roman += "V"
      #   remaining_value -= 5
      # elsif remaining_value >= 4
      #   roman += 'IV'
      #   remaining_value -= remaining_value
      # else
      #   roman = roman + 'I'
      #   remaining_value -= 1
      # end
    end
    roman
  end

  FACTORS = { 'M' => 1000, 'CM' => 900, 'D' => 500, 'CD' => 400,
    'C' => 100, 'XC' => 90, 'L' => 50, 'XL' => 40,
    'X' => 10, 'IX' => 9, 'V' => 5, 'IV' => 4,
    'I' => 1
    }

end
