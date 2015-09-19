class Person < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true

  belongs_to :pledge_class

  def full_name
    first_name + " " + pledge_name + " " + last_name
  end

end
