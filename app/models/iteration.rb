class Iteration < ActiveRecord::Base
  belongs_to :question
  has_many :iterations
end
