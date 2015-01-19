class Gigasecond

  def self.from(input)
    if input.is_a?(Time)
      (input + (10**9)).to_date
    else
      input + ((10**9)/60/60/24)
    end
  end

end
