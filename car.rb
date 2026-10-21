class Car
  attr_reader :color, :engine_started
  attr_writer :color
  attr_accessor :color # WRITER + READER
  # constructor method
  def initialize(color) # is called by Car.new
    # instance variable
    @engine_started = false
    @color = color
    # puts "New car instance"
  end

  # instance method / setter
  def start_engine
    # puts "Starting!!!"
    ignite_spark
    @engine_started = true
  end

  # getters
  # def color
  #   return @color
  # end
  # 
  # SAME AS attr_reader :color

  # setters 
  # def color=(color)
  #   @color = color
  # end
  # 
  # SAME AS attr_writer :color
  
  private
  
  def ignite_spark
    puts "ignite spark plug ⚡️"
  end
end