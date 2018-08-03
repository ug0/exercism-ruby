class Squares
  attr_reader :num

  def initialize(n)
    @num = n
  end

  def sum_of_squares
    1.upto(num).sum { |e| e ** 2 }
  end

  def square_of_sum
    1.upto(num).sum ** 2
  end

  def difference
    square_of_sum - sum_of_squares
  end
end