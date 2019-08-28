class BooksIamge < ApplicationRecord
  has_one :isbn_list
  has_one :book
  has_one :statistic, through :isbn_list
end
