class Book < ApplicationRecord
  has_many :books_list_in_favorites
  has_many :book_categories
  has_many :categories, through: :book_categories
  belongs_to :book_image
  belongs_to :isbn_list
  has_one :isbn_list
  has_one :statistic, through: :isbn_list
end
