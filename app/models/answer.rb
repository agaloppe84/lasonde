class Answer < ActiveRecord::Base
  belongs_to :iteration
  actable
end
