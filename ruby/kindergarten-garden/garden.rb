class Garden
  attr_reader :plants, :students

  def initialize(plants, *students)
    @plants = plants
    @students = students
  end

  def veggies
    {
      "R" => :radishes,
      "C" => :clover,
      "G" => :grass,
      "V" => :violets
    }
  end

  def location_splitter(a)
    a_group, b_group = @plants.split("\n")
    letters = []
    letters << a_group.split("")[a,2]
    letters << b_group.split("")[a,2]
    letters.flatten!
    letters.map do |letter|
      veggies[letter]
    end
  end

  def alice
    location_splitter(0)
  end

  def bob
    location_splitter(2)
  end

  def charlie
    location_splitter(4)
  end

  def david
    location_splitter(6)
  end

  def fred
    location_splitter(10)
  end

  def eve
    location_splitter(8)
  end

  def ginny
    location_splitter(12)
  end

  def harriet
    location_splitter(14)
  end

  def ileana
    location_splitter(16)
  end

  def joseph
    location_splitter(18)
  end

  def kincaid
    location_splitter(20)
  end

  def larry
    location_splitter(22)
  end

  def patricia
    # student_location[0]
    # require "pry"; binding.pry
    location_splitter(0)

  end

  # def shared_student_plant_index
  #   alpha = @students.flatten.sort
  #
  # end

end
