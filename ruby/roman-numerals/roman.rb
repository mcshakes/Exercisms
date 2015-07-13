class Fixnum

  def to_roman
    roman = ""
    remaining_value = self

    FACTORS = { 'M' => 1000, 'CM' => 900, 'D' => 500, 'CD' => 400,
      'C' => 100, 'XC' => 90, 'L' => 50, 'XL' => 40,
      'X' => 10, 'IX' => 9, 'V' => 5, 'IV' => 4,
      'I' => 1
      }

    while remaining_value > 0 do
      FACTORS.each do |roman_representation, value|
        if remaining_value >= value
          roman += roman_representation
          remaining_value -= value
          break
        end
      end
    end
    roman
  end

end
