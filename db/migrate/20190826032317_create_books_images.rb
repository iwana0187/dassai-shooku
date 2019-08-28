class CreateBooksImages < ActiveRecord::Migration[5.0]
  def change
    create_table :books_images do |t|
      t.string :images_front_cover
      t.string :images_back_cover
      t.string :images_spine
      t.timestamps
    end
  end
end
