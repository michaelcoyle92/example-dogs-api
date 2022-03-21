class Dog < ApplicationRecord
  validates :name,  presence: true 
  validates :name, uniqueness: true
  validates :age, presence: true
  validates :breed, presence: true

end
