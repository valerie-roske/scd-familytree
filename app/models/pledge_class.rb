class PledgeClass < ActiveRecord::Base
  validates :name, presence: true
  validates :semester, presence: true
  validates :year, presence: true

  has_many :people

  def term
    semester + " " + year.to_s
  end
end
