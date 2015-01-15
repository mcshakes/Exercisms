class Hamming

  def self.compute(strand1, strand2)
    zipped_strands = strand1.chars.zip(strand2.chars)
    count(zipped_strands)
  end

  def self.count(zipped_strands)
    zipped_strands.count do |x,y|
      if y == nil || x == nil
        nil
      else
        x != y
      end
    end
  end
end

## Original ##

# def self.compute(strand1, strand2)
  # counter = 0
  # split1 = strand1.chars
  # split2 = strand2.chars
  # set_of_strands = split1.zip(split2)
  # set_of_strands.each do |set|
  #   if set[0] != set[1]
  #     counter += 1
  #   elsif
  #     0
  #   end
  # end
  # counter
# end
