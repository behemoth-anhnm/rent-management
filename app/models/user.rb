class User < ApplicationRecord
  validates :name, presence: true
  validates :age, presence: true, numericality: { only_integer: true }

  validate :age_greater_than_18

  private

  def age_greater_than_18
    if age.present? && age <= 18
      errors.add(:age, 'must be greater than 18')
    end
  end
end
