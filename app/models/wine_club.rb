class WineClub < ActiveRecord::Base
  
  # has_and_belongs_to_many :users

  has_and_belongs_to_many :users,
      :association_foreign_key => 'user_id',
      :class_name => 'User',
      :join_table => 'users_wine_clubs'
  
  # has_many :articles
  # has_many :wineClubEvents
  
end
