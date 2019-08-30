class Image

 def initialize(pixel)
   @pixel = pixel
 end

  def output_image
    @pixel.each do |block|
      puts block.join
    end
  end


 def blur!
   array = []
   @pixel.each_with_index do |rows, row|
       rows.each_with_index do |num, col|
          array << [row, col] if num == 1
       end
   end

   array.each do |row, col|
     @pixel[row-1][col]=1 if row-1 >= 0
     @pixel[row+1][col]=1 if row+1 < row_len
     @pixel[row][col-1]=1 if col-1 >= 0
     @pixel[row][col+1]=1 if col+1 < col_len
   end
 end

 def row_len
   @pixel.length
 end

 def col_len
   @pixel[0].length
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