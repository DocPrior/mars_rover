class Rover

  def initialize(x, y, dir)
    @x = x
    @y = y
    @dir = dir
  end

  def read_instruction(inst)
    if (inst == "L") || (inst == "R")
      turn
    end

    if inst == "M"
      move
    end
  end

  def moveS
    if dir == "N"
      @y += 1
    end
    if dir == "W"
      @x -= 1
    end
    if dir == "E"
      @x += 1
    end
    if dir == "S"
      @y -= 1
    end
  end

  def turn 
    if inst == "L"
      if @dir == "N"
        @dir = "W"
      elsif @dir == "W"
        @dir = "S"
      elsif @dir == "S"
        @dir = "E"
      else
        @dir = "N"
      end

      if inst == "R"
        if @dir == "N"
          @dir = "E"
        elsif @dir == "E"
          @dir = "S"
        elsif @dir == "S"
          @dir = "W"
        else
          @dir = "N"
        end
      end
    end
  end
end
