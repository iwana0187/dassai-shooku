class CreateStatistics < ActiveRecord::Migration[5.0]
  def change
    create_table :statistics do |t|
      t.string :prefectures, null: false
      t.references :category, foreign_key: true
      t.references :user, foreign_key: true
      t.references :isbn_list, foreign_key: true
      t.timestamps
    end
  end
end
