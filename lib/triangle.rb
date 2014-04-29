class Triangle
  attr_reader :a, :b, :c

  def initialize(a:, b:, c:)
    @a, @b, @c = a, b, c
  end

  def perimeter
    a + b + c
  end

  def halfed
    0.5 * perimeter
  end

  def area
    Math.sqrt(halfed * (halfed - a) * (halfed - b) * (halfed - c))
  end

  def valid?
    c < a + b ? true : false
  end
end
