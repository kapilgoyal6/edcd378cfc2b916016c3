class Simulator

  def initialize
    @board = Board.new 5, 5
    @robot = ToyRobot.new @board
  end

  def execute(command)
    begin
      @robot.eval(command)
    rescue Exception => e
      puts e.message
    end
  end

end