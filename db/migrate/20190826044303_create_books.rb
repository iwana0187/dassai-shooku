class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :name, null:false
      t.string :stock, null:false
      t.string :publisher, null:false
      t.string :publication_date, null:false
      t.integer :price, null: false
      t.text :contents, null: false
      t.string :author, null: false

      t.references :category, null: false, foreign_key: true
      t.references :books_image, null: false, foreign_key: true
      t.references :store, null: false, foreign_key: true
      t.timestamps
    end
    add_index :books, [:name, :store_id]
  end
end
