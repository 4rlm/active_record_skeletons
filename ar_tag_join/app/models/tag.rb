class Tag < ApplicationRecord
  validates :tag_name, uniqueness: true
  has_many :entry_tags
  has_many :entries, through: :entry_tags
end
