begin
  quotient = 1/0 # Boom !
rescue ZeroDivisionError
  puts 'You tried to divide by zero'
end

def method(numerator, denominator)
  if denominator == 0
    raise ZeroDivisionError
  end
  return numerator / denominator
end

method(1,1)
