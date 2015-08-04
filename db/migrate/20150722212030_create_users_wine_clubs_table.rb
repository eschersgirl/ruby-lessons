class CreateUsersWineClubsTable < ActiveRecord::Migration
  def change
    create_table :users_wine_clubs_tables, :id => false do |uwc|
      uwc.integer :user_id
      uwc.integer :wine_club_id
      # uwc.references :user
      # uwc.references :wine_club

    end
  end
  
  # def self.down
  #   drop_table :users_wine_clubs_tables
  # end


end
