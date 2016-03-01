class Survey < ActiveRecord::Base
  belongs_to :user
  has_many :questions, dependent: :destroy
  validates :title, presence: true, allow_blank: false
end
