class Image

  def initialize(image)
    @image = image
  end

  def output_image
    @image.each do |block|
      puts block.join
    end
  end


  def blur!(distance) #figures out the coordinates of the 1's / finding coords of actual pixels blurred
    pixel_locations = []
    @image.each_with_index do |rows, row|
      rows.each_with_index do |num, col|
        pixel_locations << [row, col] if num == 1 #these coordinates will be pushed if they have a 1
      end
    end

    pixel_locations.each do |row1, col1|
      @image.map!.with_index do |rows, row2|
        rows.map.with_index do |num, col2|
          if blur_distance(row1, row2, col1, col2) > distance
            num
          else
            1
          end
        end
      end
    end
  end

  def blur_distance(row1, row2, col1, col2)
    (row1-row2).abs + (col1-col2).abs
  end

end

image = Image.new([
[0, 0, 0, 0, 0, 0],
[0, 0, 0, 0, 0, 0],
[0, 0, 0, 0, 0, 0],
[0, 1, 0, 0, 0, 0],
[0, 0, 0, 0, 0, 0],
[0, 0, 0, 0, 0, 0],
[0, 0, 0, 0, 0, 1]
])

image.output_image
image.blur!(3)
puts
image.output_image