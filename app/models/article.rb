class Article < ApplicationRecord
  has_many :comments, inverse_of: :article
end