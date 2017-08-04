class Triangle
  attr_reader :sides

  def initialize(sides)
    @sides = sides
  end

  def unequal_triangle?
    sorted = sides.sort
    (sorted[0] + sorted[1]) <= sorted[2]
  end

  def different_side_length?
    sides.uniq.size == 3
  end

  def same_lengths?
    sides.uniq.size == 1
  end

  def equilateral?
    if sides.uniq[0] == 0
      false
    elsif same_lengths?
      true
    end
  end

  def isosceles?
    sorted = sides.sort
    false if unequal_triangle?
    true if sorted[1] == sorted[2]
  end

  def scalene?
    if unequal_triangle?
      false
    elsif different_side_length?
      true
    end
  end
end

module BookKeeping
  VERSION = 1
end
