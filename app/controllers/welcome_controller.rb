class WelcomeController < ApplicationController
  before_action :authenticate_user!
  
  def index
  	# lekérem a userhez tartozó borklubok listáját
  	@usersWineClubs = User.find(:all)
  	# @usersWineClubs = User.find(:all, :include => :wineClubs)

  end
end
