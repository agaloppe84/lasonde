class Item < ActiveRecord::Base
  belongs_to :question
  has_many :item_answers
  validates :label, presence: true
end
