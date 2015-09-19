class PledgeClass < ActiveRecord::Base
  validates :name, presence: true
  validates :semester, presence: true
  validates :year, presence: true

  def term
    semester + " " + year.to_s
  end
end
