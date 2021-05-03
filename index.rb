class MyCar

  attr_reader :year, :color, :model, :speed

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
  end

  def accelerate
    @speed += 2
    puts "Acceleration. Speed is now #{@speed}"
  end

  def decelerate
    @speed -= 2
    puts "Deceleration. Speed is now #{@speed}"
  end

  def shut_down
    while @speed > 0
      self.decelerate
      if @speed == 0
        puts "Car has been shut down"
        break
      end
    end
  end
end
