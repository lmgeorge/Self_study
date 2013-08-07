class Calculator
  def add(a, b)
  a + b
  end

  def subtract(a, b)
    a - b
  end

  def sum_of_cubes(a, b)
  num = (a..b).to_a 
  num.map {|n| n**3}
  end
end
end