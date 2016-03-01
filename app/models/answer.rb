class Answer < ActiveRecord::Base
  actable
  belongs_to :iteration
end
