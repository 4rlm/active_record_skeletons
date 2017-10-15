class Rating < ApplicationRecord
  belongs_to :dog
  belongs_to :judge
end
