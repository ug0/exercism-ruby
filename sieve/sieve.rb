class Sieve
  def initialize(n)
    @n = n
  end

  def primes
    @primes ||= calc_primes
  end

  private

  def calc_primes
    @primes = []
    2.upto(@n).each do |i|
      @primes << i if is_prime?(i)
    end
    @primes
  end

  def is_prime?(n)
    return true if n == 2
    max = Math.sqrt(n)
    @primes.each do |i|
      break if i > max
      return false if n % i == 0
    end
    true
  end
end

module BookKeeping
  VERSION = 1 # where the version number matches the one in the test.
end