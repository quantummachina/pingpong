class HomeController < ApplicationController
  def index
  	@users = User.order(rank: :desc)
  end

  def history
  end

  def log
  end
end
