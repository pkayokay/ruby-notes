class Ghost
  attr_accessor :color
  def initialize
   @color = ["Yellow","Red","Blue","Green"].sample
  end
end
ghost = Ghost.new
puts ghost.color 