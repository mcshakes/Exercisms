require "pry"

class ETL

  def self.transform(old_hash)
    old_hash.each_with_object(Hash.new(0)) do |scores, collection|
      hash_reset(scores, collection)
    end
  end

  def self.hash_reset(scores, collection)
    number = scores.first
    letter = scores.last.each do |let|
      collection[let.downcase] = number
    end
  end

end
