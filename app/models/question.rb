class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :iterations, dependent: :destroy
  has_many :items, dependent: :destroy
  validates :label, presence: true, allow_blank: false

  def self.kinds
    ["single", "multi", "open-ended text", "stars"]
  end
end
