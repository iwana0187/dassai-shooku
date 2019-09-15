class CreateIsbnLists < ActiveRecord::Migration[5.0]
  def change
    create_table :isbn_lists do |t|
      t.string :name, null: false
      t.integer :isbn, null: false
      t.references :book, foreing_key: true
      t.references :books_image, foreign_key: true
      t.timestamps
    end
  end
end
