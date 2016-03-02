class Question < ActiveRecord::Base


  belongs_to :survey
  has_many :iterations, dependent: :destroy
  has_many :items, dependent: :destroy
  validates :label, presence: true, allow_blank: false
  validate :kind_is_in_kinds
  validate :number_of_questions_cannot_excess_ten

  def self.kinds
    ["single", "multi", "open-text", "stars", "open-numeric", "slider", "grid-single", "grid-multi"]
  end

  def kind_is_in_kinds
    if not Question.kinds.include? kind
      errors.add :base, "You mother fucker"
    end
  end

  def number_of_questions_cannot_excess_ten
    if self.survey.questions.count >= 10
      errors.add(:base, "You can't exceed 10 questions")
    end
  end
end
