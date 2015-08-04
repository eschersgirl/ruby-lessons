class AddIndexToUsersWineClubs < ActiveRecord::Migration
  def change
  	add_index :users_wine_clubs, [ :user_id, :wine_club_id ], :unique => true
  end
end
