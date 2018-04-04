class GamesController < ApplicationController
	def index
		@games = Game.all
	end

	def new
		@game = Game.new
	end

	def create
	 	@game = Game.new(params) # not passing params yet

		if @game.save
		  update_score(params) # pass game and players to update scores and ranks
	      redirect_to root_path
	    else
	      redirect_to log_path
	    end

	end

	# Calcultes new players score and rank
	def update_score()
		# Uses ELO rating to calculate new rank for both users. Ref: https://metinmediamath.wordpress.com/2013/11/27/how-to-calculate-the-elo-rating-including-example/
		# Updates score by adding game scores to players score
	end

end
