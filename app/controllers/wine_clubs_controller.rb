class WineClubsController < ApplicationController
  
  before_action :authenticate_user!
    
  def new
  
  end
 
  def show
    @wine_club = WineClub.find(params[:id])

  end
    
  def create
    @wine_club = WineClub.new(wine_club_params)
    # @wine_club.user_id = current_user.id
    # @wine_club.current_user = current_user
    # @wine_club = current_user.wine_clubs.build(wine_club_params)
    @wine_club.save


    wineClubId = @wine_club.id
    userId = current_user.id

    

    redirect_to root_path

  end
  
  private
    def wine_club_params
      params.require(:wine_clubs).permit(:title, :text)
    end


  
end
