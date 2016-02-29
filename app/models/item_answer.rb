class ItemAnswer < ActiveRecord::Base
  belongs_to :respondent
  belongs_to :item
  act_as :answer
end
