class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  # Virtual attribute for authenticating by either username or email
  # This is in addition to a real persisted field like 'username'
  # attr_accessor :login  
  
  has_and_belongs_to_many :wineClubs,
    :association_foreign_key => 'wine_club_id',
    :class_name => 'WineClub',
    :join_table => 'users_wine_clubs'
  
end

