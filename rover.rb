class Rover
  attr_accessor :x, :y, :dir
  def initialize(x, y, dir)
    @x = x
    @y = y
    @dir = dir
  end

  def read_instruction(inst)
      if (inst == "L") || (inst == "R")
        turn(inst)
      else
        move
      end

  end

  def move
    if @dir == "N"
      @y += 1
    elsif @dir == "W"
      @x -= 1
    elsif @dir == "E"
      @x += 1
    else
      @y -= 1
    end
  end

  def turn(inst)
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

rover1 = Rover.new(1, 2, "N")

rover1.read_instruction("L")
rover1.read_instruction("M")
rover1.read_instruction("L")
rover1.read_instruction("M")
rover1.read_instruction("L")
rover1.read_instruction("M")
rover1.read_instruction("L")
rover1.read_instruction("M")
rover1.read_instruction("M")

puts rover1.inspect
