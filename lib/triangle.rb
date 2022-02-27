class Triangle
  # write code here
  

  def initialize(side1, side2, side3)
      @triangle_sides = []
      @triangle_sides << side1
      @triangle_sides << side2
      @triangle_sides << side3
      @side1 = side1
      @side2 = side2
      @side3 = side3

  end

  def kind
    puts @triangle_sides
  inequality1 = @triangle_sides[0] + @triangle_sides[1] <= @triangle_sides[2]
  inequality2 = @triangle_sides[1] + @triangle_sides[2] <= @triangle_sides[0]
  inequality3 = @triangle_sides[2] + @triangle_sides[0] <= @triangle_sides[1]
  puts inequality1, inequality2, inequality3 
    if @triangle_sides.find { |side| side <= 0} || inequality1 || inequality2 || inequality3
      # begin 
      #   raise TriangleError
      # rescue TriangleError => error 
      #   puts error.message
      raise TriangleError
    elsif @side1 == @side2 && @side2 == @side3
      :equilateral
    elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
      :isosceles
    else
      :scalene
    end

  end

  class TriangleError < StandardError
    def message
      'wrong'
    end
  end

end

tri = Triangle.new(1, 2, 3)
