class Image

  def initialize(image)
    @image = image
  end

  def output_image
    @image.each do |block|
      puts block.join
    end
  end


  def blur! #figures out the coordinates of the 1's / finding coords of actual pixels blurred
    pixel_locations = []
    @image.each_with_index do |rows, row|
      rows.each_with_index do |num, col|
        pixel_locations << [row, col] if num == 1 #these coordinates will be pushed if they have a 1
      end
    end

    pixel_locations.each do |row, col|
      @image[row-1][col]=1 if row-1 >= 0
      @image[row+1][col]=1 if row+1 < row_len
      @image[row][col-1]=1 if col-1 >= 0
      @image[row][col+1]=1 if col+1 < col_len
    end
  end

  def row_len
    @image.length
  end

  def col_len
    @image[0].length
  end
end

image = Image.new([
[0, 0, 0, 0],
[0, 0, 1, 0],
[0, 0, 0, 0],
[0, 1, 0, 0],
[0, 0, 0, 1],
[0, 0, 0, 0]
])

image.output_image
image.blur!
puts
image.output_image