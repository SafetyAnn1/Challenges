require "spec_helper"
require "image"

describe Image do

  it "will perform an Image Blur Transformation" do
    test_arr = [
      [0, 0, 1, 0],
      [0, 0, 0, 0],
      [0, 1, 0, 1]
      ]

    image = Image.new [
      [0, 0, 1, 0],
      [0, 0, 0, 0],
      [0, 1, 0, 1]
      ]

    expect image.test_arr == image
  end


  
end