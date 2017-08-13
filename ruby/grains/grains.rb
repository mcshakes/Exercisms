class Grains
  BOARD_SQUARES = 64

  def self.square(position)
    raise(ArgumentError) if position < 1 || position > 64
    2 ** (position - 1)
  end

  def self.total
    (1..BOARD_SQUARES).inject do |grains, pos|
      grains + square(pos)
    end
  end

end
