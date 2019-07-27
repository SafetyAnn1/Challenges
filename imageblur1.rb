class Image

  def initialize (pixel)
    @pixel = pixel
  end

  def output_image
    @pixel.each do |block|
      puts block.join
    end
  end
end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])

image.output_image