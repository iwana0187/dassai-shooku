class IsbnList < ApplicationRecord
  has_one :statistic
  has_one :book
  has_one :statistic, through: :isbn_list
end
