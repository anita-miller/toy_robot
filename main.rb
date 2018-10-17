require_relative 'lib/controller'
require_relative 'lib/table'
require_relative 'lib/robot'
require_relative 'lib/position'
require_relative 'lib/move_command'
require_relative 'lib/left_command'
require_relative 'lib/place_command'
require_relative 'lib/right_command'
require_relative 'lib/report_command'

# initializes a new 5x5 table, a new robot, and a new command interpreter
table = Table.new(5, 5)
robot = Robot.new
controller = Controller.new(robot, table)

puts "Hello I am Mr.Robot where do you want me to go?"

# keeps reading commands from stdin until user types EXIT
loop do
  puts "please give me directions :) (EXIT to quit): "

  input = gets

  command = commander.parse(input)

  command.execute unless command.nil?

  break if input =~ /exit/i
end
