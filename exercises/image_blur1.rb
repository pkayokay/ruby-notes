 class Image
  attr_accessor :image, :initial_img

  def initialize(image)
    @image = image
  end

  def output
    @image.each do |row|
      row.each do |column|
        print column
      end
      puts ""
    end
  end

  def blur(initial_img)
    @initial_img.each_with_index do |row, r_index|
      row.each_with_index do |val, c_index|
        if val == 1
          @image[r_index-1][c_index] = 1 if r_index > 0 #above
          @image[r_index+1][c_index] = 1 if r_index > 0 #below
          @image[r_index][c_index+1] = 1 if r_index > 0 #right
          @image[r_index][c_index-1] = 1 if r_index > 0 #left
        end
      end
    end
  end
end

my_image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])

my_image.blur(my_image)

