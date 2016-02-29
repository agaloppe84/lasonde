class Respondent < ActiveRecord::Base
  has_many :text_answers, :numeric_answers, :item_answers
end
