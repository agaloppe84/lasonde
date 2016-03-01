class Respondent < ActiveRecord::Base
  has_many :text_answers
  has_many :numeric_answers
  has_many :item_answers
end
