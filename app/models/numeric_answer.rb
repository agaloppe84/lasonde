class NumericAnswer < ActiveRecord::Base
  belongs_to :respondent
  acts_as :answer
  validates :content, numericality: { only_integer: true }
end
