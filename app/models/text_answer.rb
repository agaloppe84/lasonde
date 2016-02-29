class TextAnswer < ActiveRecord::Base
  belongs_to :respondent
  act_as :answer
end
