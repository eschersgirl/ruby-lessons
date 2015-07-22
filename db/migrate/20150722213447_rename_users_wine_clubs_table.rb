class RenameUsersWineClubsTable < ActiveRecord::Migration
  def change
    rename_table :users_wine_clubs_tables, :users_wine_clubs
  end
end
