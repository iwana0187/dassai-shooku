class CreateFavorites < ActiveRecord::Migration[5.0]
  def change
    create_table :favorites do |t|
      t.references :user, null: false, foerign_key: true
      t.timestamps
    end
  end
end
