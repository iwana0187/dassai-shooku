class CreateBooksListInFavorites < ActiveRecord::Migration[5.0]
  def change
    create_table :books_list_in_favorites do |t|
      t.references :book, null: false, foreign_key: true
      t.references :favorite, null: false, foreing_key: true
      t.timestamps
    end
  end
end
