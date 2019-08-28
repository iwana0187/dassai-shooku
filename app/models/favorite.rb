class Favorite < ApplicationRecord
  has_many :books_list_in_favorites, depndent: :destroy
  has_many :books, through: :books_list_in_favorites
end
