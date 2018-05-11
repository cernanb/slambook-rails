class Book < ApplicationRecord
  has_many :questions
  accepts_nested_attributes_for :questions

  def questions_attributes=(hash)
    hash.each do |k, v|
      self.questions.build(content: v[:content])
    end
  end
end
