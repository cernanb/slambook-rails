class Question < ApplicationRecord
  belongs_to :book
  has_many :answers
end
