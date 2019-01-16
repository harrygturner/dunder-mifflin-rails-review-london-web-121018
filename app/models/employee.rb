class Employee < ApplicationRecord
  belongs_to :dog

  validates :alias, uniqueness: true
  validates :title, uniqueness: true

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def dog_name=(name)
    self.dog = Dog.find_by(name: name)
  end

  def dog_name
    self.try(:dog).try(:name)
  end

end
