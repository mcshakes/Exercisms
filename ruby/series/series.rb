class Series
  attr_reader :string

  def initialize(string)
    @string = string
  end

  def slices(length)
    if length > 5
      raise ArgumentError
    else
      splitted = string.chars
      splitted.each_cons(length).map { |group| group.map(&:to_i) }
    end
  end



end
