require 'minitest/autorun'  # => true
require_relative 'hamming'  # => true

class HammingTest < MiniTest::Unit::TestCase
  def test_no_difference_between_identical_strands
    assert_equal 0, Hamming.compute('A', 'A')       # => true
  end

  def test_complete_hamming_distance_of_for_single_nucleotide_strand
    assert_equal 1, Hamming.compute('A','G')                          # => true
  end

  def test_complete_hamming_distance_of_for_small_strand
    assert_equal 2, Hamming.compute('AG','CT')            # => true
  end

  def test_small_hamming_distance
    assert_equal 1, Hamming.compute('AT','CT')  # => true
  end

  def test_small_hamming_distance_in_longer_strand
    assert_equal 1, Hamming.compute('GGACG', 'GGTCG')  # => true
  end

  def test_ignores_extra_length_on_first_strand_when_longer
    assert_equal 1, Hamming.compute('AGAGACTTA', 'AAA')      # => true
  end

  def test_ignores_extra_length_on_other_strand_when_longer
    assert_equal 2, Hamming.compute('AGG', 'AAAACTGACCCACCCCAGG')  # => true
  end

  def test_large_hamming_distance
    assert_equal 4, Hamming.compute('GATACA', 'GCATAA')  # => true
  end

  def test_hamming_distance_in_very_long_strand
    assert_equal 9, Hamming.compute('GGACGGATTCTG', 'AGGACGGATTCT')  # => true
  end
end

# >> Run options: --seed 30097
# >>
# >> # Running:
# >>
# >> .........
# >>
# >> Finished in 0.001416s, 6355.9322 runs/s, 6355.9322 assertions/s.
# >>
# >> 9 runs, 9 assertions, 0 failures, 0 errors, 0 skips
