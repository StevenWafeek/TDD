class Solver
  def factorial(number)
    raise ArgumentError, 'Factorial not defined for negative numbers' if number.negative?

    (1..number).reduce(:*) || 1
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(number)
    if (number % 3).zero? && (number % 5).zero?
      'fizzbuzz'
    elsif (number % 3).zero?
      'fizz'
    elsif (number % 5).zero?
      'buzz'
    else
      number.to_s
    end
  end
end
