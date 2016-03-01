class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :iterations
  has_many :items
  validates :label, presence: true, allow_blank: false

  def self.kinds
    ["single", "multi", "open-ended text", "stars"]
  end
end
