class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :iterations
  has_many :items
  validates :label, presence: true, allow_blank: false
end
