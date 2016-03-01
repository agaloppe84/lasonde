class ItemAnswer < ActiveRecord::Base
  belongs_to :respondent
  belongs_to :item
  acts_as :answer
end
