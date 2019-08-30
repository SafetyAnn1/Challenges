class Phone
  attr_accessor :android, :apple

  def initialize(android, apple)
    @android = android
    @apple = apple
  end

  def ring
   puts "The Android #{@android} tone is easier to hear than the #{@apple} tones of an Apple device."
  end
end

phone = Phone.new(:bell, :music)
phone.ring