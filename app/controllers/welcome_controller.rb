class WelcomeController < ApplicationController
  before_action :authenticate_user!
  
  def index
  	# lekérem a belépett userhez tartozó borklubok listáját

  	# require 'pry'; binding.pry
  	# @users_wine_clubs = WineClub.includes(:users_wine_clubs).where('users.id = ?', current_user.id).all
	@users_wine_clubs = WineClub.includes(:users).where(users: {id: current_user.id}).all

	#WineClub.includes(:users).where(users: {id: 1}).all
	#WineClub.includes(:users).where('users.id' => 1).all


  end
end
