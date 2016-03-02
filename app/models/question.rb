class Question < ActiveRecord::Base


  belongs_to :survey
  has_many :iterations, dependent: :destroy
  has_many :items, dependent: :destroy
  validates :label, presence: true, allow_blank: false
  validate :kind_is_in_kinds

  def self.kinds
    ["single", "multi", "open-ended text", "stars"]
  end

  def kind_is_in_kinds
    if not Question.kinds.include? kind
      errors.add :base, "You mother fucker"
    end
  end
end
