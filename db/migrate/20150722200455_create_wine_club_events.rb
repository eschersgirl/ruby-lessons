class CreateWineClubEvents < ActiveRecord::Migration
  def change
    create_table :wine_club_events do |t|
      t.string :title
      t.text :description
      t.string :address
      t.datetime :eventDate

      t.timestamps null: false
    end
  end
end
