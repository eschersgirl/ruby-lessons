class CreateWineClubs < ActiveRecord::Migration
  def change
    create_table :wine_clubs do |t|
      t.string :title
      t.text :text

      t.timestamps null: false
    end
  end
end
