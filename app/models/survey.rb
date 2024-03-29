class Survey < ActiveRecord::Base
  belongs_to :user
  has_many :questions, dependent: :destroy
  validates :title, presence: true, allow_blank: false
  validates :target, presence: true, allow_blank: false
  validates :country, presence: true, allow_blank: false
  validates :sample_size, numericality: { only_integer: true }


  def self.targets
    ["nat rep"]
  end

  def self.countries
    ["France"]
  end

  def self.sample_sizes
    [50, 100, 200, 300, 400, 500, 1000, 2000]
  end

  validates :target, inclusion: { in: Survey.targets, message: "La cible demandée n'est pas disponible" }
  validates :country, inclusion: { in: Survey.countries, message: "Le pays demandé n'est pas disponible" }
  validates :sample_size, inclusion: { in: Survey.sample_sizes, message: "La taille d'échantillon demandée n'est pas disponible" }
end
