require 'pry'

class FoodChain

  def self.song
    # file = File.open('song.txt', "r")
    # data = file.read
    # return data

    return File.read('song.txt')
  end

end
