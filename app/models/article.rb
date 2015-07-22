class Article < ActiveRecord::Base
  validates :title, presence: true
  
  # belongs_to :wineClubs
  
end
