class RobotController < ApplicationController

	skip_before_action :verify_authenticity_token

  def orders
  	input = params[:commands]
  	i = 0
		simulator = Simulator.new
  	while i < input.length
  		command = input[i]
		  command.strip!
	    @output = simulator.execute(command)
  		i += 1
		end
  	render json: @output
  end
end
