class Dog < ApplicationRecord
  has_many :ratings
  has_many :judges, through: :ratings
end
