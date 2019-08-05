class WelcomeController < ActionController::Base
	def show
		@gossips = Gossip.all
	end
end