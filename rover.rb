class Rover

  def initialize(x, y, dir)
    @x = x
    @y = y
    @dir = dir
  end

  def read_instruction(inst)
    if (inst = "L") || (inst = "R")
      turn
    end

    if inst = "M"
      move
    end
  end

  def move(dir)
    if dir = "N"
      @y += 1
    end
    if dir = "W"
      @x -= 1
    end
    if dir = "E"
      @x += 1
    end
    if dir = "S"
      @y -= 1
    end
  end
end
