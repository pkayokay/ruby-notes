# Create a class Ball.

# Ball objects should accept one argument for "ball type" when instantiated.

# If no arguments are given, ball objects should instantiate with a "ball type" of "regular."
class Ball
  attr_reader :ball_type

  def initialize(ball_type="regular")
    @ball_type = ball_type
  end

  def output
    puts "#{@ball_type}"
  end
end

ball = Ball.new
ball.output

ball2 = Ball.new("super")
ball2.output