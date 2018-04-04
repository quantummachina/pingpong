class GamesController < ApplicationController
	def index
		@games = Game.all
	end
	def new
		@game = Game.new
	end
	def create
		
		redirect_to root_path
	end
end
