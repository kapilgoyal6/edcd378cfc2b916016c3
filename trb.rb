simulator = Simulator.new
puts "-- Please enter a command, such as:"
puts "-- 'PLACE X,Y,F', MOVE, LEFT, RIGHT, REPORT"
puts "-- where F may be NORTH|SOUTH|EAST|WEST"

command = STDIN.gets

while command
  command.strip!
  if command.downcase == "exit"
    puts "# Bye"
    exit
  else
    output = simulator.execute(command)
    puts output if output
    command = STDIN.gets
  end
end