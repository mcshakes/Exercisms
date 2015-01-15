class Hamming

  def self.compute(strand1, strand2)
    counter = 0
    
    split1 = strand1.chars
    split2 = strand2.chars
    set_of_strands = split1.zip(split2)
    set_of_strands.each do |set|
      if set[0] != set[1]
        counter += 1
      elsif
        0
      end
    end
    counter
  end

end
