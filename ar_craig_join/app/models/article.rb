class Article < ApplicationRecord
  has_one :article_category
  has_one :category, through: :article_category
end
