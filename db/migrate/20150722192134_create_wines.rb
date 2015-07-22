class CreateWines < ActiveRecord::Migration
  def change
    create_table :wines do |t|
      t.string :title
      t.text :text

      t.timestamps null: false
    end
  end
end
