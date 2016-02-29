class NumericAnswer < ActiveRecord::Base
  belongs_to :respondent
  act_as :answer
  validates :content, numericality: { only_integer: true }
end
