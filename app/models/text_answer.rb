class TextAnswer < ActiveRecord::Base
  belongs_to :respondent
  acts_as :answer
end
