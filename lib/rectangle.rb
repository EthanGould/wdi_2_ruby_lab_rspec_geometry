class Rectangle
  attr_reader :length, :width

  def initialize(length:, width:)
    @length, @width = length, width
  end
end
