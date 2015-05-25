require "pry"

class ETL

  def self.transform(old_hash)
    old_hash.inject(Hash.new(0)) do |hash, collection|
      hash_reset(hash, collection)
      hash
    end
  end

  def self.hash_reset(hash, collection)
    number = collection.first
    letter = collection.last.each do |let|
      hash[let.downcase] = number
    end
  end

end
