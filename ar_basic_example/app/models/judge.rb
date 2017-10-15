class Judge < ApplicationRecord
  has_many :ratings
  has_many :dogs, through: :ratings
  # has_many :ratings, { :foreign_key => :rating_id }
  # has_many :dogs, { :foreign_key => :judge_id }
end
